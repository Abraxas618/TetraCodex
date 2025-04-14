# 🧪 Codex ZK Trust Circuit

This directory contains the **Groth16 zero-knowledge circuit** used to verify trust anchor scores in the Codex Constitution framework. It ensures that swarm identity validation and trust scoring can be verified without revealing any private biometric data.

> 📁 Path: `/zk/`  
> 🔒 Circuit Type: [Groth16](https://zokrates.github.io/introduction.html#zero-knowledge-proof-systems)  
> 📐 Curve: BN256 (128-bit security)  
> 🛠 Language: Circom v2  

---

## 📜 Circuit Summary

- **Circuit File:** `zk_trust.circom`  
- **Inputs:**  
  - Private: Biometric QIDL hash, entropy salt  
  - Public: Trust threshold, timestamp  
- **Constraint System:** `zk_trust.r1cs`  
- **WASM Witness Generator:** `zk_trust.wasm`

This circuit ensures a user has a valid swarm trust signature above a threshold, without revealing private inputs.

---

## ⚙️ Build & Proof Workflow

Run the following script after installing [Circom](https://docs.circom.io/) and [SnarkJS](https://github.com/iden3/snarkjs):

```bash
bash compile.sh
This automates the steps:

Compile the circuit (zk_trust.circom)

Generate the witness (witness.wtns)

Run trusted setup (circuit_final.zkey)

Create proof (proof.json)

Output verification key (verification_key.json)

Test verification

📦 File Descriptions
File	Purpose
zk_trust.circom	Core zero-knowledge circuit
zk_trust.r1cs	Constraint system (compiled)
zk_trust.wasm	WASM module to generate witness
witness.wtns	Generated witness from inputs
input.json	Private and public input data
public.json	Public values for verification
compile.sh	All-in-one build and proof script
circuit_final.zkey	Final Groth16 proving key
proof.json	Zero-knowledge proof result
verification_key.json	Groth16 verifier key
README.md	This document
✅ Verifying the Proof
snarkjs groth16 verify verification_key.json public.json proof.json
Expected output: OK!
This confirms that your circuit constraints are satisfied without revealing any private data.

🔍 Purpose for DRDC
This circuit is part of the Codex submission to Canada’s Defense Research and Development Canada (DRDC) and supports:

Verifiable Trust Anchors

Privacy-Preserving Identity Systems

Post-Quantum Ready ZKP Pipelines

🧠 Contributors
Michael Tass MacDonald (Abraxas618)
Independent ZK Architect | Codex Constitution Author
✉️ tassalphonse@gmail.com

📖 License
Apache 2.0 / MIT Dual License
