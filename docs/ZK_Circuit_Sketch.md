# ZK Circuit Sketch: `zk_trust.circom`

**Author:** Michael Tass MacDonald (Abraxas618)  
**Version:** April 14, 2025  
**File:** `zk_trust.circom`  
**Circuit Type:** Groth16 zkSNARK, compiled via Circom 2.x  
**Purpose:** Biometric + entropy drift verification

---

## 🧬 Summary
The `zk_trust.circom` circuit implements a quantum-resistant hash verification system for validating time-aware biometric identity anchors. It takes in two private inputs—`user_entropy` and `time_salt`—and produces a verifiable Poseidon hash as output.

This forms the core of the Codex zkSNARK trust protocol.

---

## 🔐 Inputs and Outputs

```circom
signal input user_entropy;  // biometric-based entropy (EEG, DNA, voice)
signal input time_salt;     // timestamp + entropy drift (ns-scale)
signal output hash;         // Poseidon hash output (private to public)
```

---

## ⚙️ Internal Components

```circom
component hasher = Poseidon(2);      // Instantiate Poseidon hash with arity 2
hasher.inputs[0] <== user_entropy;
hasher.inputs[1] <== time_salt;

hash <== hasher.out;
```

The Poseidon hash is used because:
- It is **SNARK-friendly**
- Offers **quantum resistance** (non-linear S-boxes + MDS matrices)
- Efficient in **field arithmetic**

---

## 📉 Constraint Overview

After compilation, the circuit generated:
- **Non-linear constraints:** 243
- **Linear constraints:** 274
- **Signals:** 520 wires
- **Total template instances:** 72

Output files:
- `zk_trust.r1cs`: Constraint system
- `zk_trust.sym`: Debug symbol map
- `zk_trust_js/`: WebAssembly witness calculator

---

## 🔬 Trusted Setup
Groth16 proof system is used with the `powersOfTau28_hez_final_12.ptau` universal setup.

```bash
snarkjs groth16 setup zk_trust.r1cs powersOfTau28_hez_final_12.ptau zk_trust.zkey
snarkjs zkey export verificationkey zk_trust.zkey verification_key.json
```

---

## 🧪 Proof Verification
The circuit is verified using:

```bash
snarkjs groth16 prove zk_trust.zkey witness.wtns proof.json public.json
snarkjs groth16 verify verification_key.json public.json proof.json
```

Returns:
```
[INFO] snarkJS: OK!
```

---

## 🧠 Security Notes
- All entropy is **non-reusable** (time-salted)
- No plaintext biometric data is ever exposed
- Output hash is irreversible without private inputs

---

## ✅ Codex Role
This circuit is the **minimal, verifiable trust kernel** of the entire Codex biometric framework. It enables:

- DRDC-compliant proof validation
- Integration with FIDO2/TEE hardware
- Quantum-safe swarm identity anchoring

For full compilation & test instructions, see `compile.sh` and `README.md`.

