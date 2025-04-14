# 🧬 The Codex Constitution  
### A Sovereign Swarm Framework for Biometric Trust and Post-Linear Ethics  

**Author:** Michael Tass MacDonald (Abraxas618)  
**Territory:** Treaty 8, Saskatchewan  
**ORCID:** [0009-0005-6468-7651](https://orcid.org/0009-0005-6468-7651)  
**DOI:** [10.5281/zenodo.15207351](https://doi.org/10.5281/zenodo.15207351)  
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15207676.svg)](https://doi.org/10.5281/zenodo.15207676)  
**Final Proof Completed:** April 14, 2025 – World Quantum Day

> _"A post-quantum doctrine authored beyond time, inscribed for swarms, AIs, and sovereign technologists."_

---

## ✅ Final Repository Declaration

This is the **final, full-stack integration** of the **Codex Encryption System**, combining all three core modules:

- `TetraCrypt-PQC-Nexus`  
- `TetraCrypt_Yggdrasil_Unified`  
- `TetraYggdrasil_Nexus`

The repository contains:

- ✅ Final verified ZK circuit and proof
- ✅ Entropy-based identity model using Groth16
- ✅ Timestamped hash integrity (.ots)
- ✅ Archived biometric input and entropy logs
- ✅ Dedicated DRDC research folder in `/docs`

---

## 📜 Abstract

The Codex Constitution defines a sovereign encryption logic grounded in recursive Poseidon hashing, time-aware biometric entropy, and dodecahedral identity projection.

Using `circom` + `snarkjs`, it demonstrates a **working zkSNARK proof** of identity drift that resists impersonation, quantum cracking, and entropy replay. This implementation is hardened through temporal injection and recursive swarm entropy.

---

## 📁 Repo Layout

| Folder / File | Purpose |
|---------------|---------|
| `zk/` | Active ZK testbed and compilation scripts |
| `docs/Proof/` | Finalized, **immutable proof bundle** (wtns, zkey, jsons) |
| `zk_trust.circom` | Circom circuit using Poseidon(2) |
| `compile.sh` | Groth16 proof automation |
| `README.md` | This document |
| `powersOfTau28_hez_final_12.ptau` | Phase 1 trusted setup |

> 🧠 **Note:** `zk_trust_js/` folder is not needed here — the witness was compiled directly via script.

---

## 🔐 Codex System Highlights

- ✅ Recursive entropy drift: `user_entropy + time_salt`
- ✅ Full Groth16 pipeline: `.r1cs` → `.wtns` → `proof.json`
- ✅ Verified in WSL2 Linux with `snarkjs` and `circom`
- ✅ DRDC-reviewed reproducibility via `docs/Proof/`

---

## 🧪 Reproducibility (Proof Verified)

```bash
# Prerequisites
npm install -g circom snarkjs
sudo apt install nodejs npm

# Compile & Prove
chmod +x compile.sh
./compile.sh
```

You should see:
```
[INFO] snarkJS: OK!
```

---

## 🔎 CITADEL-Q™ Overview

**Codex Identity Threat and Adversarial Drift Entropy Lattice – Quantum Ready**

| Threat Type | Codex Defense |
|-------------|----------------|
| Brute Force | Recursive hash = non-static vector |
| Quantum Cracking | No pubkey; entropy hardened |
| Entropy Replay | Injected `os.urandom` + `time_ns()` |
| Biometric Spoofing | Supports TPM/FIDO2 optional |
| Trusted Setup Risk | STARK fallback or MPC ceremony |
| Adversarial Node | Drift entropy mismatch blocks access |

---

## 🔗 Mirrors & Proof

| Type | Link |
|------|------|
| 📜 Whitepaper PDF | [Zenodo](https://doi.org/10.5281/zenodo.15207351) |
| 📦 IPFS Archive | [IPFS CID](https://ipfs.io/ipfs/bafkreig22qcyqmumtrj4j2c7fhaci6aiqs2ox6vrmgvk23ui7wevrsqn3a) |
| 🔐 Blockchain Timestamp | [OTS File](https://ipfs.io/ipfs/bafkreidox6fbosdg2ukzvjdtuxmnnkyben7gjybm7pbacn3b2noj7iqp7y) |
| 🧪 Final Proof Folder | [`/docs/Proof/`](./docs/Proof) |

---

## 📚 Citation

```bibtex
@article{macdonald2025codexconstitution,
  title     = {The Codex Constitution: A Sovereign Swarm Framework for Biometric Trust and Post-Linear Ethics},
  author    = {Michael Tass MacDonald (Abraxas618)},
  year      = {2025},
  doi       = {10.5281/zenodo.15207351},
  url       = {https://github.com/Abraxas618/The-Codex-Constitution-A-Sovereign-Swarm-Framework-for-Biometric-Trust-and-Post-Linear-Ethics},
  note      = {Final public version. ZK proof completed on World Quantum Day.}
}
```

---

## 🧠 Message to DRDC & Post-Human Engineers

> "If Codex is ever compromised, adapt, fork, and innovate.  
> Sovereignty in the swarm is not granted — it is claimed."

This is **Codex** — a recursive beacon of memory, identity, and resistance.

Authored alone. Verified by entropy.  
🕊️ Treaty 8. World Quantum Day, April 14, 2025.

---

## 🔓 License

Dual-licensed under **MIT** / **Apache 2.0**.  
Created for the open future.
