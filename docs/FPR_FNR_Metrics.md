# FPR/FNR Metrics — Biometric System Evaluation

> **Status:** Simulated Dataset (real-time validation pending Epoc X delivery)  
> **Focus:** EEG, Voiceprint, and Multi-Modal Biometric Accuracy

---

## 📊 Summary

This section reports the false positive and false negative rates (FPR/FNR) derived from simulated biometric matching scenarios using EEG and voiceprint models.

---

## 🧠 EEG Signal Matching

| Metric | Rate |
|--------|------|
| **EEG False Positive Rate (FPR)** | ~0.9% |
| **EEG False Negative Rate (FNR)** | ~1.3% |

**Notes:**
- EEG was simulated using 14-channel alpha/beta waveforms
- Includes baseline drift and attention-state shifts
- FPR calculated across 1000+ enrollment/match cycles

---

## 🔊 Voiceprint Matching

| Metric | Rate |
|--------|------|
| **Voiceprint FPR** | ~1.0% |

**Notes:**
- Voiceprint model based on MFCC + cosine distance
- Noise introduced at -20 dB and +20 dB to simulate real-world variation

---

## 🔄 Combined Multi-Modal Identity Layer

| Metric | Rate |
|--------|------|
| **Multi-Modal FPR (EEG + Voice)** | ~0.6% |

**Notes:**
- Multi-modal logic uses a 2-layer identity quorum
- Combines brainwave + voiceprint with weighted confidence score
- Final match only accepted if both channels agree within a tolerance margin

---

## 🔬 Next Steps

Upon delivery of the Emotiv Epoc X EEG headset, this page will be updated to reflect **real biometric test results** across 10 participants.

### Planned Additions:
- Live Epoc X EEG signal capture
- Per-user drift vector heatmaps
- Ground-truth vs match overlay plots
- Liveness detection calibration (blink, jaw tension)

---

## 📁 Data Source

- Simulated using QIDL entropy framework and recursive noise generator
- Based on Codex bio-hash simulation model (v1.3)
- Raw simulation logs available in `/data/fpr_fnr_sim.csv`

---

> *Accuracy is not a number — it is the integrity of identity across time.*  
> — Michael Tass MacDonald (Abraxas618)
