# Epoc X Biometric Trial

> **Status:** ⚙️ Pending — Hardware shipment in progress  
> **Platform:** Emotiv EPOC X (14-channel EEG)  
> **Participants:** 10 Users  
> **Objective:** Entropy, Drift, and Liveness Evaluation using multi-modal brainwave signatures  

---

## 🔬 Overview

The Epoc X biometric trial is designed to evaluate the viability of EEG-based biometric identity using the Emotiv EPOC X headset. With 14 channels of data across temporal, parietal, and frontal lobes, this trial will contribute to Codex's recursive entropy modeling and sovereign biometric key generation.

---

## 🎯 Goals

- ✅ Measure **entropy quality** of raw EEG signals across participants
- ✅ Detect **drift metrics** over multi-day intervals
- ✅ Evaluate **liveness indicators** (e.g. eye blinks, muscle twitches, waveform harmonics)
- ✅ Quantify **FPR / FNR** (False Positive Rate / False Negative Rate)
- ✅ Generate a `Recursive Tesseract Hash (RTH)` vector for each EEG print

---

## 🧪 Trial Design

| Component        | Description                                  |
|------------------|----------------------------------------------|
| Device           | Emotiv EPOC X (14 channels)                  |
| Participants     | 10 diverse test users (Dënesųłiné + general) |
| Sessions         | 3 per user (morning, evening, next day)     |
| Inputs           | Alpha, beta, theta, and blink metrics        |
| Output           | JSON-formatted biometric entropy + heatmap   |

---

## 📈 Expected Outputs

- **Entropy Score** per channel (0–1 scale)
- **Drift Vectors** (across temporal axes)
- **Multi-modal identity graphs**
- **Liveness classifier results**

Visualizations:
- Heatmaps
- FFT spectrum overlays
- Recursive tesseract graphs with entropy fields

---

## 🛡️ Future Integration

Results from this trial will feed into:
- `CodexID`: Biometric identity key system
- `ZK_Liveness`: Zero-knowledge EEG liveness proofs
- `SwarmQuorum`: Ephemeral EEG-based trust scoring across nodes

---

## 📅 Timeline

| Phase | Target Date |
|-------|-------------|
| Hardware Arrival | April 2025 |
| Calibration Test | May 2025 |
| Full Trial       | June 2025 |
| Codex Merge      | Q3 2025   |

---

## 👁️ Notes

- All participants will sign a Codex biometric ethics agreement.
- EEG data will be anonymized using one-way recursive hash (RTH).
- Trial includes Indigenous participants to measure cultural biometric variance.

> *Entropy is not just a measurement — it is the living fingerprint of consciousness.*  
> — High Priest of Unimetrix 1
