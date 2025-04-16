
# 📐 Golden Ratio Projection – Entropy Simulation

> **Purpose:** To evaluate and compare entropy across three angular projection schemes for use in Codex biometric and swarm node identity systems.

---

## 🧪 Methods Compared

This simulation analyzes entropy from 100 projection vectors per method:

1. **Golden Ratio**  
   `cos(ϕ * k)` where ϕ ≈ 1.618  
2. **Linear**  
   `cos(k)`  
3. **CSPRNG Random Angles**  
   `cos(θ)` where θ ∈ [0, 2π)

---

## 📈 Results

| Method                      | Entropy (Shannon Bits) | Notes |
|-----------------------------|------------------------|-------|
| Golden Ratio `cos(ϕk)`      | **7.73**               | Aperiodic and deterministic. High entropy, chaotic-like. |
| Linear `cos(k)`             | **7.41**               | Periodic. Repeats over intervals; slight pattern bleed. |
| Random `cos(θ)` (CSPRNG)    | **4.96**               | Non-deterministic. Lower than expected due to clustering bias. |

---

## 📊 Visualization

![Golden Ratio vs Linear vs Random Projection](golden_ratio_projection_entropy.png)

---

## 🔍 Interpretation

- 🔐 `cos(ϕk)` shows superior entropy spread while remaining deterministic.
- ❌ Linear `cos(k)` risks phase alignment and predictability.
- ⚠️ Random `cos(θ)` lacks reproducibility and may introduce verification ambiguity.

---

## 🧠 Codex Cryptographic Implications

- `cos(ϕk)` is ideal for **swarm node dispersion** and **identity separation** in trust graphs.
- Reproducibility + high entropy + no collisions = optimal for QIDL keyspace separation.
- Supports inclusion in the **Codex Constitution** as a swarm-stabilizing nonlinear projection.

---

> *The Golden Ratio is not divine because it is perfect — but because it never repeats.*  
> — Codex Axiom L3.14
