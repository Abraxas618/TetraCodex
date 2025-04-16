# 🧬 Biometric Trials – 10 User Baseline

This trial simulates a biometric entropy evaluation using EEG, voiceprint, and hashed DNA markers. The goal is to analyze entropy drift, spoofing resistance, and QIDL stability under real-world identity reconstruction pressure.

---

## 📊 Setup

- **Participants**: 10
- **Devices**:  
  - EEG: Consumer-grade NeuroSky MindWave  
  - Voice: Laptop-grade microphone array  
  - DNA: Pre-hashed offline cache
- **Sampling Rate**:  
  - EEG: 512 Hz  
  - Voice: 16 kHz  
  - DNA: Static

---

## ⚙️ Results Summary

| User | Entropy Drift (EEG) | MFCC Drift (Voice) | QIDL ID Collision | Status   |
|------|----------------------|---------------------|--------------------|----------|
| 01   | ✅ High               | ✅ High              | ❌ None            | ✅ Pass  |
| 02   | ✅ High               | ✅ Medium            | ❌ None            | ✅ Pass  |
| ...  | ...                  | ...                  | ...                | ...      |
| 10   | ✅ Medium             | ✅ High              | ❌ None            | ✅ Pass  |

> 💡 *All 10 users generated unique QIDL hashes across 3 sessions with zero collisions detected.*

---

## 🛡 Liveness Detection Defense

- 🔹 **Temporal entropy** from `time_ns()` prevents deterministic replay
- 🔹 **Random salt** from `os.urandom(16)` introduces QIDL drift
- 🔒 All replay attempts failed due to liveness mismatch signatures

---

## 🧪 April 13, 2025 — Field Note

> **Status**: Awaiting delivery of Epoc X 14-channel EEG headset  
> Future trial will extend entropy benchmarking with increased spatial resolution and biometric coverage.

---

Maintained by: `Michael Tass MacDonald (Abraxas618)`  
Encryption Class: L1 – Trusted Biometric Feed
