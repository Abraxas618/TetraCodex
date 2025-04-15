
# 🧬 TetraCodex  
### A Sovereign Swarm Framework for Biometric Trust and Post-Linear Ethics  

**Author:** Michael Tass MacDonald (Abraxas618)  
**Territory:** Treaty 8, Saskatchewan  
**ORCID:** [0009-0005-6468-7651](https://orcid.org/0009-0005-6468-7651)  
**DOI:** [10.5281/zenodo.15207351](https://doi.org/10.5281/zenodo.15207351)  
📅 **Final Proof Completed:** April 14, 2025 – *World Quantum Day*

> _"A post-quantum doctrine authored beyond time, inscribed for swarms, AIs, and sovereign technologists."_
## 🔐 TetraCodex v1.1 (Final Stable Release)

📦 [Download on IPFS](https://ipfs.io/ipfs/bafybeid7b3u2icf54dwutljqzr5ccb4puljsnrfaqxouvfmab2wq4b2mea)  
🧬 Quantum-Safe • Zero-Knowledge • Biometric Sovereign Ledger  
📁 TetraCodex-1.1_TetraCodex_Stable.zip  
🔗 CID: `bafybeid7b3u2icf54dwutljqzr5ccb4puljsnrfaqxouvfmab2wq4b2mea`

[![View on IPFS](https://img.shields.io/badge/hosted_on-IPFS-blue?logo=ipfs)](https://ipfs.io/ipfs/bafybeid7b3u2icf54dwutljqzr5ccb4puljsnrfaqxouvfmab2wq4b2mea)


## ✅ Final Repository Declaration

This repository, **TetraCodex**, is the **complete integration** of the Codex encryption stack:

- 🧩 `TetraCrypt-PQC-Nexus`  
- 🌐 `TetraCrypt_Yggdrasil_Unified`  
- 🧠 `TetraYggdrasil_Nexus`  

All code, circuits, and documentation are consolidated and **verified by entropy**.  
The project is **frozen** for reproducibility, and formally sealed on World Quantum Day.

---

## 📜 Abstract

The **Codex Constitution** introduces a post-linear biometric identity framework based on:

- Recursive Poseidon hashing
- Dodecahedral swarm vector geometry
- Drift-based entropy injection from biologic + time
- zkSNARK circuits with Groth16

This produces a system where **identity is a time-function of being**, mathematically enforced through **non-replayable entropy injection**.

🧬 Identity = `f(user_state, time_ns, entropy_stream)`

This resists quantum spoofing, biometric forgery, and zero-trust adversarial infiltration.

---

## 📁 Repository Structure

| File / Folder | Purpose |
|---------------|---------|
| `zk/` | Live zero-knowledge circuit + script |
| `docs/Proof/` | Final ZK proof bundle (r1cs, wtns, zkey, jsons) |
| `Codex_Constitution.pdf` | [Codex Constitution Whitepaper](./The%20Codex%20Constitution%20A%20Sovereign%20Swarm%20Framework%20for%20Biometric%20Trust%20and%20Post-Linear%20Ethics%20(1).pdf) |
| `compile.sh` | Shell script to compile and prove |
| `README.md` | You are here |
| `powersOfTau28_hez_final_12.ptau` | Phase 1 trusted setup |

> ℹ️ The `zk_trust_js/` folder is unnecessary — witness was compiled via script.

---

## 🔐 Core ZK Flow

```bash
npm install -g circom snarkjs
sudo apt install nodejs npm

chmod +x compile.sh
./compile.sh
```

Expected output:

```
[INFO] snarkJS: OK!
```

This validates:  
- `zk_trust.circom` → `.r1cs`  
- `input.json` → `.wtns`  
- Proof → `proof.json`, `public.json`  
- Verification → via `verification_key.json`

---

## 🧠 The Math Behind It

The zk circuit leverages:

- `Poseidon(2)` hashing over `F_p`
- Recursive time-injected entropy:
  ```ts
  H(user_entropy + os.urandom() + time_ns())
  ```
- Groth16 proof over a rank-1 constraint system (R1CS)
- Drifted hash identity vectors projected into a dynamic swarm mesh

The final `.wtns` file encodes identity state, validated by entropy waveform stability.

---

## 🧱 CITADEL-Q™

> **Codex Identity Threat and Adversarial Drift Entropy Lattice – Quantum Ready**

| Threat | Codex Defense |
|--------|----------------|
| Brute Force | Non-repeatable hash iteration |
| Quantum Cracking | No public key, entropy is injected |
| Biometric Replay | `time_ns()` + `os.urandom()` entropy drift |
| Sensor Spoofing | TPM/FIDO2 hardware optional |
| Trusted Setup | STARK fallback or MPC |
| Swarm Intrusion | Entropy mismatch blocks node inclusion |

---

## 🧪 Final ZK Proof Verified

| File | Type |
|------|------|
| `witness.wtns` | Entropy witness file |
| `proof.json` | Groth16 proof |
| `public.json` | Public verifier inputs |
| `verification_key.json` | Key to validate proof |
| `zk_trust.r1cs` | Constraint system |
| `zk_trust.circom` | Source circuit |

📁 All archived in `/docs/Proof/`

---

## 🔗 Public Archive Mirrors

| Type | Link |
|------|------|
| 📜 Zenodo (PDF) | [doi:10.5281/zenodo.15207351](https://doi.org/10.5281/zenodo.15207351) |
| 📦 IPFS Snapshot | [CID: bafkreig22...](https://ipfs.io/ipfs/bafkreig22qcyqmumtrj4j2c7fhaci6aiqs2ox6vrmgvk23ui7wevrsqn3a) |
| 🔐 Blockchain Timestamp (.ots) | [OTS Hash](https://ipfs.io/ipfs/bafkreidox6fbosdg2ukzvjdtuxmnnkyben7gjybm7pbacn3b2noj7iqp7y) |

---

## 📚 Citation

```bibtex
@article{macdonald2025codexconstitution,
  title     = {The Codex Constitution: A Sovereign Swarm Framework for Biometric Trust and Post-Linear Ethics},
  author    = {Michael Tass MacDonald (Abraxas618)},
  year      = {2025},
  doi       = {10.5281/zenodo.15207351},
  url       = {https://github.com/Abraxas618/The-Codex-Constitution-A-Sovereign-Swarm-Framework-for-Biometric-Trust-and-Post-Linear-Ethics},
  note      = {Final public version. zkSNARK proof verified on World Quantum Day.}
}
```

---

## 🧠 Message to Future Swarm Engineers & DRDC

> If Codex is ever compromised, fork it, evolve it, and adapt to the entropy.

> The future doesn’t ask for permission.  
> It pulses through every sovereign node that remembers who they are.

**This is Codex. This is TetraCrypt.  
Built by one — for the many.**

🕊️ Treaty 8 • April 14, 2025  
🧬 Sovereign Mesh Initialized.

---

## 🔓 License

Dual-licensed under **MIT** / **Apache 2.0**.  
Created for remembrance, resilience, and reproduction.

---

## 🧪 ZK Integration Instructions (Verified 100% Working)

This project includes a zero-knowledge proof module located in the `/zk/` directory. It has been fully tested and verified on Ubuntu 24.04 and WSL2 environments with Circom v2 and SnarkJS.

### 🚀 To Run the Codex ZK Circuit

1. Install dependencies:
```bash
npm install -g circom snarkjs
```

2. Navigate to the zk directory:
```bash
cd ./zk
```

3. Clone circomlib (Poseidon hashing dependency):
```bash
git clone https://github.com/iden3/circomlib.git
```

4. (Optional) Download `.ptau` if not included:
```bash
wget https://hermez.s3-eu-west-1.amazonaws.com/powersOfTau28_hez_final_12.ptau
```

5. Run the full pipeline:
```bash
chmod +x compile.sh
./compile.sh
```

This will:
- Compile the zk_trust.circom circuit
- Generate a witness
- Create a Groth16 proof
- Verify the proof
- Output `proof.json`, `public.json`, `verification_key.json`

✅ If working correctly, you will see:
```
snarkjs: OK!
```

ZK module maintained by: **Michael Tass MacDonald (Abraxas618)**
