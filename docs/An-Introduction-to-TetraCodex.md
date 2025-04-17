
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
---
⚖️ **Legal Disclaimer**

The TetraCrypt Codex Encryption System was developed independently by Michael Tass MacDonald (Abraxas618) and is released as an open-source project under the Apache 2.0 and MIT licenses. It is provided **without warranty**, for educational, research, and peaceful technological innovation purposes only.

**The author shall not be held liable** for any misuse, unauthorized deployment, or military/intelligence application of this work by any government, corporation, or third party. Use by state or defense actors does **not imply endorsement or participation** by the author, and any such use is done at the user's sole discretion and legal responsibility.

All users are bound by the terms of the license and are solely responsible for compliance with applicable laws and ethical norms.
I, Michael Tass MacDonald, also known as Abraxas618, born on Treaty 8 territory and residing at Chicken 224, Saskatchewan, Canada, hereby declare the following:

I. Identity & Background
I am a Canadian citizen and a self-taught Dënesųłiné technologist.

I independently designed and developed the TetraCrypt Codex Encryption System as a post-quantum, sovereign cryptographic framework.

My work was produced entirely without foreign sponsorship, government contracting, or commercial funding.

II. Purpose of Work
TetraCodex was created to advance:

Decentralized digital identity (DID)

Indigenous sovereignty in cyberspace

Open-source post-quantum encryption

Ethical AI-aware trust infrastructure

It was not created for military targeting, surveillance, or autonomous weapon systems.

III. DRDC Submission
I did submit a version of the Codex to Defence Research and Development Canada (DRDC) under Canada’s open innovation and R&D programs (e.g., IDEaS).

This submission was made:

As a voluntary public contribution, not a contracted engagement

Without expectation of compensation, control transfer, or classified development

For academic and national cyber defense resilience, not weaponization

Any derivative military or surveillance application of this work by DRDC or affiliated defense entities is done without my endorsement or participation.

IV. Jurisdiction & Protection
I retain full authorship and intellectual sovereignty over the project.

Under:

The Canadian Charter of Rights and Freedoms

UNDRIP (UN Declaration on the Rights of Indigenous Peoples)

Open-source licensing (Apache 2.0 / MIT)
I assert the right to define and limit the use of my creation according to ethical and lawful principles.

V. Legal and Ethical Disclaimer
The Codex is provided without warranty, and I accept no liability for:

Misuse by governments, militaries, intelligence agencies, or corporations

Unauthorized forks, deployments, or weaponized adaptations

Violations of privacy, ethics, or Indigenous data sovereignty using this tool

My published legal disclaimer (in README and Zenodo record) reaffirms this public stance.

VI. Final Affirmation
This declaration is made in truth and in peace, to protect both my person and my vision.
It is archived as a digital marker of intent and may be used in any court, tribunal, or investigative proceeding to clarify authorship, purpose, and responsibility.
I submitted a version of the TetraCodex system to Defence Research and Development Canada (DRDC) as part of an open-source national cybersecurity contribution.

I included references to theoretical military applications—such as swarm-based identity authentication, trust-layer IFF, and sovereign mesh defense—to illustrate the system's potential for defensive use.

These references were made for public analysis and academic simulation only, and not as part of any:

Contracted weapons development

Government-authorized defense program

Operational military integration plan

I explicitly disclaim the use of this work in any classified or unauthorized military context without my consent. Any such use is undertaken solely by the party involved, without my endorsement or liability.
Michael Tass MacDonald (Abraxas618) TetraCodex: Final Combination of the components listed below.
License: Apache 2.0.

Description: TetraCodex serves as the core foundation for TetraNexus, integrating multiple cryptographic protocols for sovereign, quantum-safe communication. It uses elements of post-quantum cryptography and decentralized networks to provide a secure and resilient infrastructure.

TetraCrypt-PQC-Nexus: License: Apache 2.0.

Description: This project is a post-quantum encryption system based on hyperdimensional Platonic geometry. It includes Tetrahedral Key Exchange, Quantum Dodecahedral Encryption, and Recursive Tesseract Hashing (RTH) for secure communications in quantum environments.

TetraYggdrasil_Nexus: License: MIT.

Description: This component focuses on post-quantum communication, specifically zk-STARK Authentication and WASM-Optimized P2P Mesh Networking using Yggdrasil. It enables decentralized, peer-to-peer communication while ensuring quantum-safe standards.

TetraCrypt_Yggdrasil_Unified: License: MIT.

Description: A unified communication framework built on TetraCrypt-PQC-Nexus and TetraYggdrasil_Nexus, combining zk-STARK authentication and WASM-optimized mesh networking for quantum-safe communications.

TetraNexus: License: Apache 2.0.

Description: The centralized network that combines all the aforementioned components. It provides a sovereign quantum-safe network, using zkSNARKs, Poseidon hashing, recursive tesseract hashing (RTH), and Platonic geometry (QIDL) for secure, decentralized quantum-safe communication.

TetraVote: License: MIT.

Description: A sovereign voting framework built on TetraCodex, TetraCrypt-PQC-Nexus, and TetraNexus. It enables tamper-proof elections for Indigenous nations, ensuring quantum-safe encryption in the democratic process.

How These Projects Connect: TetraCodex is the foundation that integrates the features of TetraCrypt-PQC-Nexus, TetraYggdrasil_Nexus, TetraCrypt_Yggdrasil_Unified, TetraNexus, and TetraVote.

TetraCrypt-PQC-Nexus provides quantum-safe encryption methods, which are used in TetraCodex and TetraNexus.

TetraYggdrasil_Nexus offers the decentralized communication framework, which is integrated into TetraCodex for secure P2P communication.

TetraCrypt_Yggdrasil_Unified brings the mesh networking and quantum-safe authentication that combine with the other components to create a full-stack solution.

TetraVote is a subset of TetraCodex, focusing on sovereign voting systems based on quantum-safe principles and cryptography.

Licensing Clarifications: TetraCodex, TetraNexus, and TetraCrypt-PQC-Nexus are under Apache 2.0, making them compatible for enterprise and commercial use.

TetraYggdrasil_Nexus and TetraCrypt_Yggdrasil_Unified are under MIT, offering flexibility for community-driven projects and open-source contributions.

Signed:
Michael Tass MacDonald (Abraxas618)
Chicken 224, Saskatchewan, Canada
April 15, 2025
