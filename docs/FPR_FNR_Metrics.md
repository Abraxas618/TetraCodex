# 📊 FPR/FNR Metrics — Biometric System Evaluation

> **Status:** Simulated Dataset (live validation pending EPOC X delivery)  
> **Focus:** EEG, Voiceprint, and Multi-Modal Biometric Accuracy Assessment

---

## 🧠 EEG Signal Matching

| Metric                     | Value   |
|----------------------------|---------|
| EEG False Positive Rate    | ~0.9%   |
| EEG False Negative Rate    | ~1.3%   |

**Notes:**
- Simulation used 14-channel alpha/beta EEG data
- Drift and attention-state variance modeled
- Data based on 1,000+ simulated match cycles

---

## 🔊 Voiceprint Matching

| Metric               | Value   |
|----------------------|---------|
| Voiceprint FPR       | ~1.0%   |

**Notes:**
- MFCC-based vector encoding + cosine similarity
- Background noise simulated at -20dB and +20dB

---

## 🧬 Combined Identity Layer (EEG + Voice)

| Metric                       | Value   |
|------------------------------|---------|
| Multi-Modal FPR (2-factor)   | ~0.6%   |

**Logic:**
- Layered biometric quorum: EEG + Voiceprint
- Final match accepted only on confidence threshold from both layers

---

## 🔬 Next Steps – Epoc X Trial Integration

> Live data collection will begin after hardware arrival (April 2025)

### Upcoming Metrics:
- EEG signal entropy via `Recursive Tesseract Hash`
- Drift vector heatmaps per user
- Liveness calibration (eye blink, muscle response)
- Match overlay plots with real vs simulation overlay

---

## 📁 Data Source

- Synthetic QIDL entropy framework (CodexSim v1.3)
- Drift modeled using Gaussian and recursive noise overlays
- Raw logs: `/data/fpr_fnr_sim.csv`

---

> *Accuracy is not a number — it is the integrity of identity across time.*  
> — Michael Tass MacDonald (`Abraxas618`)
