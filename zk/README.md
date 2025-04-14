
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

