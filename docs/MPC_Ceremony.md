
# 🛡 MPC Ceremony for Groth16 Setup (Codex Constitution)

> **Objective:** Establish a secure multi-party trusted setup for Codex ZK-SNARKs using the Groth16 scheme with fallback to STARK-based verification.

---

## 🧾 Overview

To initiate Codex cryptographic infrastructure, we define a formal Groth16 ceremony for recursive identity hashing and privacy-preserving biometric proof verification.

This setup is essential for:
- Verifiable circuit initialization
- Swarm-wide recursive hashing functions
- Liveness and identity ZK proofs

---

## ⚙️ Ceremony Parameters

| Parameter       | Value                             |
|-----------------|------------------------------------|
| Curve           | BN256                              |
| Participants    | 100                                |
| Threshold        | 80 (minimum honest contributions)  |
| Setup Phases    | Phase 1: Powers of Tau  
                  Phase 2: Codex Custom Circuit        |

---

## 🔐 Security Strategy

- 🔹 **Entropy Sourcing**:  
  Every party contributes randomness seeded by:
  - Local entropy source  
  - External randomness beacon (`drand`)  
  - Optional biometric seed (EEG or voice hash)

- 🔹 **Transparency**:  
  - Contributions publicly published to IPFS  
  - Final transcript hashed and cross-published to DRDC and SwarmChain

- 🔹 **Optional Auditing Enhancements**:
  - Hash-logged ceremony feed (via SwarmOrchestrator)  
  - Live recorded on-chain for observer trust

---

## 🔄 Fallback Path

If trust assumptions are broken:
- ✅ Codex supports migration to **STARK-based** circuits
- ✅ Trustless proof generation
- ✅ No trusted setup phase required

---

## 🧠 Integration Targets

- `ZK_Liveness`: Proof of biometric signal entropy  
- `CodexID`: Initial key material generation  
- `SwarmRoot`: Verified quorum activation based on shared ceremony state

---

> *We do not trust. We prove.*  
> — Codex Constitution, Section 4.1 – Ceremony Doctrine
