# 🛡 MPC Ceremony for Groth16 Setup (Codex Constitution)

## Overview
To establish a secure trusted setup for the Groth16 ZK-SNARK circuit used in Codex, we propose the following multi-party computation (MPC) strategy.

## ⚙️ Parameters
- Curve: BN256
- Participants: 100
- Threshold: 80 (minimum required honest parties)
- Setup: Powers of Tau (Phase 1) + Custom Circuit (Phase 2)

## 🔐 Security Strategy
- Ceremony inputs seeded by each party using entropy + randomness from `drand` or equivalent.
- All contributions verifiably published on IPFS.
- Optional: Live recording or hash-logged ceremony for audit by DRDC or third-party observers.

## ✅ Fallback
If trust assumptions are invalidated, Codex supports STARK-based ZKP generation as trustless backup.

