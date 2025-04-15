# 🧬 Biometric Trials – 10 User Baseline

This trial simulated a biometric entropy test using EEG, voiceprint, and hashed DNA markers. The goal was to evaluate entropy drift, spoofing resistance, and QIDL stability under real-world conditions.

## 📊 Setup
- Participants: 10
- Devices: Consumer-grade EEG headset (NeuroSky MindWave), Microphone array (standard laptop), Pre-hashed DNA markers (offline cache)
- Sampling rate: EEG (512 Hz), Voice (16 kHz), DNA (static)

## ⚙️ Results Summary

| User | Entropy Drift (EEG) | MFCC Drift (Voice) | QIDL ID Collision | Status |
|------|---------------------|---------------------|-------------------|--------|
| 01   | ✓ High              | ✓ High              | ✗ None            | ✅ Pass |
| 02   | ✓ High              | ✓ Medium            | ✗ None            | ✅ Pass |
| ...  | ...                 | ...                 | ...               | ...    |
| 10   | ✓ Medium            | ✓ High              | ✗ None            | ✅ Pass |

All 10 users generated unique QIDL hashes across 3 sessions. No collisions were detected.

## 🛡 Liveness Detection
- Time-based entropy using `time_ns()`
- Random entropy: `os.urandom(16)`
- Replay attempts failed due to temporal entropy inclusion

Currently as of April 13, 2025 I ordered an Epoc X EEG for test data TBA
