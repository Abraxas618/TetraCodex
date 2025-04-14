
# 🧪 Codex ZK Trust Circuit  
### 📍 docs/zk/README.md  
**Author:** Michael Tass MacDonald (Abraxas618)  
**Date:** April 14, 2025  

---

## 🔐 Zero-Knowledge Proof for Codex Trust Validation  
This folder implements a minimal Groth16-compatible ZK circuit to prove the validity of Codex trust signals derived from entropy and timestamp data — without revealing private biometric sources.

---

## 📁 Included Files  

| File | Description |
|------|-------------|
| `zk_trust.circom` | Circom 2.0 circuit defining QIDL trust hash logic using Poseidon |
| `input.json`      | Example input values (entropy, time salt) used for testing |
| `compile.sh`      | Full end-to-end proof pipeline using `snarkjs` |

---

## 🧮 Circuit Logic  

The circuit implements the following hash computation:
hash = Poseidon([user_entropy, time_salt])

- `user_entropy` is derived from EEG/DNA/voiceprint inputs  
- `time_salt` is derived from `time_ns()` and `os.urandom()`  
- Output `hash` = QIDL anchor (codified swarm node identity)

---

## 🚀 Running the Circuit  

Make sure you have the following installed:

- [Circom 2.0](https://docs.circom.io/)
- [SnarkJS](https://github.com/iden3/snarkjs)
- Node.js ≥ 16

Then run:

```bash
cd docs/zk
bash compile.sh
This will:

Compile the circuit to .r1cs and .wasm

Run a Powers of Tau trusted setup

Generate the witness and zk-SNARK proof

Output proof.json and public.json

Verify the proof against verification_key.json

✅ Output Files
File	Purpose
zk_trust.r1cs	Compiled constraint system
zk_trust.wasm	Witness generation binary
circuit_final.zkey	Final proving key
witness.wtns	Witness values for inputs
proof.json	ZK proof
public.json	Public inputs for verifier
verification_key.json	Public verifier key
📦 Example Use Case
This circuit can be embedded into the Codex backend or a smart contract verifier to validate:

Node identity

Entropy freshness

Swarm membership

Temporal anchoring

All without exposing raw biometrics.

🛡 License
This module is released under the MIT License, as part of the Codex Constitution project:
➡️ https://github.com/Abraxas618
