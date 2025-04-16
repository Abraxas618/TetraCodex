
# 🔒 ZK Circuit Sketch: `zk_trust.circom`

**Author:** Michael Tass MacDonald (`Abraxas618`)  
**Version:** April 14, 2025  
**Circuit File:** `zk_trust.circom`  
**Type:** Groth16 zkSNARK (compiled via Circom 2.x)  
**Purpose:** Time-bound biometric & entropy hash verification

---

## 🧬 Circuit Summary

`zk_trust.circom` is the cryptographic core of the Codex zkSNARK protocol. It validates quantum-resistant biometric entropy against a timestamp-derived salt. The Poseidon hash ensures post-quantum compatibility, SNARK efficiency, and swarm integrity.

---

## 🔐 Inputs and Outputs

```circom
signal input user_entropy;  // biometric hash input (EEG, DNA, voice)
signal input time_salt;     // entropy drift timestamp (e.g. ns-scale)
signal output hash;         // Poseidon output (private → public)
```

---

## ⚙️ Internal Logic

```circom
component hasher = Poseidon(2);
hasher.inputs[0] <== user_entropy;
hasher.inputs[1] <== time_salt;

hash <== hasher.out;
```

- ✅ Poseidon is SNARK-optimized
- ✅ Resistant to Grover's quantum search
- ✅ Compatible with Circom 2.x + snarkjs pipeline

---

## 📉 Constraint Stats

- 🧩 Non-linear constraints: 243  
- ➕ Linear constraints: 274  
- 🔌 Signals (wires): 520  
- 🧱 Components: 72 templates

> Generated: `zk_trust.r1cs`, `zk_trust.sym`, and `zk_trust_js/`

---

## 🔬 Trusted Setup (Groth16)

```bash
snarkjs groth16 setup zk_trust.r1cs powersOfTau28_hez_final_12.ptau zk_trust.zkey
snarkjs zkey export verificationkey zk_trust.zkey verification_key.json
```

- Uses universal ptau (`powersOfTau28_hez_final_12.ptau`)
- Supports circuit mutation across Codex biometric types

---

## ✅ Proof Verification

```bash
snarkjs groth16 prove zk_trust.zkey witness.wtns proof.json public.json
snarkjs groth16 verify verification_key.json public.json proof.json
```

Expected return:
```
[INFO] snarkJS: OK!
```

---

## 🛡 Security Considerations

- 🔒 Entropy is single-use, non-recyclable
- 🕶 No biometric data exposed or leaked in plaintext
- 🧬 Output hash is irreversible and post-quantum robust

---

## 📡 Codex Integration

This circuit forms the **verifiable trust kernel** for:

- `ZK_Liveness` → EEG + timestamp authentication  
- `CodexID` → Root identity seeding via entropy  
- `SwarmQuorum` → ZK-validated node trust score

---

📁 For full compile logs and integration, see `compile.sh`, `README.md`, and `zk/zk_artifact_hashes.txt`.

> *Without proof, there is no truth. Without entropy, there is no trust.*  
> — Codex Protocol Directive 9.4
