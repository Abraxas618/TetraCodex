pragma circom 2.0.0;

template TrustThreshold(n) {
    signal input score[n];       // Array of trust scores (e.g., [890, 768, ...])
    signal input threshold;      // Minimum passing trust score
    signal input salt;           // Randomness to prevent reuse
    signal output is_valid;      // Boolean output: 1 if all scores >= threshold

    signal pass[n];

    for (var i = 0; i < n; i++) {
        // Enforce: pass[i] = 1 if score[i] >= threshold
        // Implement using: score[i] - threshold >= 0
        // Use comparator workaround to avoid direct subtraction
        component isGreater[n];
        isGreater[i] = GreaterEqThan(16);  // Use 16-bit comparator

        isGreater[i].in[0] <== score[i];
        isGreater[i].in[1] <== threshold;

        pass[i] <== isGreater[i].out;
    }

    // Compute the product of all pass[i] (AND logic)
    signal prod = 1;
    for (var i = 0; i < n; i++) {
        prod <== prod * pass[i];
    }

    // Output: 1 if all pass[i] == 1
    is_valid <== prod;
}

component main = TrustThreshold(5);
