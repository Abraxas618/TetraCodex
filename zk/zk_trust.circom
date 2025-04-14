template CodexTrust() {
    signal input user_entropy;
    signal input time_salt;
    signal output hash;

    hash <== Poseidon([user_entropy, time_salt]);
}

component main = CodexTrust();
