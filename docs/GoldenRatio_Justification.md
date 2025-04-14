# 📐 Golden Ratio Projection – Justification

## Why Use φ (phi ≈ 1.618)?

The Codex system uses:
```
proj(v) = v ⋅ cos(φk)
```
Where:
- `v` = trust vector
- `k` = node index
- `φ` = golden ratio ≈ 1.618...

### 🔍 Security Properties
- **Irrationality:** φ produces non-repeating, non-cyclic projections.
- **Anti-alignment:** Prevents any two node projections from aligning in phase space.
- **Chaos-resilience:** Harder to reverse due to irrational angular drift.

### 📊 Comparison
| Method | Periodicity | Predictable? | Complexity |
|--------|-------------|--------------|------------|
| `cos(k)` | High        | Yes          | Low        |
| `cos(φk)` | None        | No           | Moderate   |
| Random CSPRNG | None | No | High entropy, but unverifiable origin |

The use of φ ensures deterministic yet non-repeating angular offset between nodes, ideal for swarm identity graphs.

