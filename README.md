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

This repository includes:
- The complete Codex zk circuit + hash engine
- The Codex whitepaper + biometric entropy reports
- Blockchain timestamp and IPFS snapshot
- SHA-256 integrity manifests for reproducibility
- All DRDC-facing material in `/docs`

---

## 📜 Abstract

The Codex Constitution defines a sovereign encryption logic built on recursive hashing, tesseract-based identity anchoring, and time-aware entropy.  
Using Poseidon hash and Groth16 zkSNARKs, it forms a biometric-proof-of-identity circuit that resists impersonation, quantum cracking, and entropy spoofing.

This repository includes a **working zero-knowledge circuit**, verified in WSL2, that demonstrates identity encoding based on biologically-sourced entropy (user + time drift).

---

## 📁 Contents

| File | Purpose |
|------|---------|
| `zk_trust.circom` | Circom hash circuit |
| `zk_trust.r1cs` | Constraint system |
| `zk_trust_js/` | Witness generator |
| `witness.wtns` | Witness for proof |
| `proof.json`, `public.json` | zkSNARK proof |
| `verification_key.json` | Verifier |
| `powersOfTau28_hez_final_12.ptau` | Trusted setup |
| `compile.sh` | Full compilation + proof script |
| `input.json` | Entropy input values |
| `README.md` | This documentation |

---

## 🔐 Codex System Highlights

- ✅ Recursive entropy hardened hashing  
- ✅ Grover-attack resistant due to entropy drift  
- ✅ Poseidon zk-SNARK support  
- ✅ Full Groth16 pipeline  
- ✅ DRDC-compliant reproducibility  
- ✅ IPFS + Git + Blockchain timestamped proof  

---

## 🧪 To Reproduce

```bash
npm install -g circom snarkjs
sudo apt install nodejs npm

chmod +x compile.sh
./compile.sh
```

You should see:

```
[INFO] snarkJS: OK!
```

This confirms your build is verified.

---

## 🔎 CITADEL-Q™

**Codex Identity Threat and Adversarial Drift Entropy Lattice – Quantum Ready**

A strategic post-quantum defense framework for:
- UAV mesh IDs
- biometric devices
- post-nation state identity validation
- adversarial quantum environments

### 6 Pillars of Defense

| Threat | Codex Defense |
|--------|----------------|
| Brute Force | Recursive entropy hash, non-reusable |
| Quantum Cracking | No public-key; entropy-injected |
| Replay / Predictability | Uses time_ns + `os.urandom` |
| Sensor Spoofing | TPM/FIDO2 supported |
| Trusted Setup Risk | STARK fallback + MPC option |
| Fake Node Injection | Entropy drift requires time-aligned trust pulse |

**Codex only permits trust drift if your entropy waveform matches the recursive timeline.**

---

## 🔗 Permanent Mirrors

| Type | Link |
|------|------|
| 📜 Whitepaper PDF | [Zenodo](https://doi.org/10.5281/zenodo.15207351) |
| 📦 IPFS Snapshot | [IPFS](https://ipfs.io/ipfs/bafkreig22qcyqmumtrj4j2c7fhaci6aiqs2ox6vrmgvk23ui7wevrsqn3a) |
| ⏱ Blockchain .ots | [OTS File](https://ipfs.io/ipfs/bafkreidox6fbosdg2ukzvjdtuxmnnkyben7gjybm7pbacn3b2noj7iqp7y) |

---

## 📚 Citation

```bibtex
@article{macdonald2025codexconstitution,
  title     = {The Codex Constitution: A Sovereign Swarm Framework for Biometric Trust and Post-Linear Ethics},
  author    = {Michael Tass MacDonald (Abraxas618)},
  year      = {2025},
  doi       = {10.5281/zenodo.15207351},
  url       = {https://github.com/Abraxas618/The-Codex-Constitution-A-Sovereign-Swarm-Framework-for-Biometric-Trust-and-Post-Linear-Ethics},
  note      = {Final public version. Time-stamped on Bitcoin blockchain and mirrored via IPFS.}
}
```

---

## 🧠 Message to DRDC and Future Builders

> "If Codex is ever compromised, adapt, fork, and innovate.  
> Sovereignty in the swarm is not granted — it is claimed."

Built without institutional funding. Authored by one. Validated by code.  
This is **Codex** — not just a project, but a protocol for post-human trust.

— *Michael Tass MacDonald (Abraxas618)*  
World Quantum Day, April 14, 2025

---

## License

Dual licensed under **MIT** / **Apache 2.0**.  
Built for remembrance, reproducibility, and resistance.
