import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import entropy

# Parameters
phi = (1 + 5 ** 0.5) / 2
k = np.arange(1, 101)
cos_phi = np.cos(phi * k)
cos_linear = np.cos(k)
cos_random = np.cos(np.random.uniform(0, 2*np.pi, len(k)))

# Discretize
def shannon_entropy(seq, bins=20):
    hist, _ = np.histogram(seq, bins=bins, density=True)
    hist = hist[hist > 0]
    return entropy(hist, base=2)

entropy_phi = shannon_entropy(cos_phi)
entropy_linear = shannon_entropy(cos_linear)
entropy_random = shannon_entropy(cos_random)

print("Entropy (cos(ϕk)):", entropy_phi)
print("Entropy (cos(k)):", entropy_linear)
print("Entropy (cos(random)):", entropy_random)

# Plot
plt.figure(figsize=(10, 6))
plt.plot(k, cos_phi, label='cos(ϕk)', color='orange', linewidth=2)
plt.plot(k, cos_linear, label='cos(k)', color='blue', linestyle='--')
plt.plot(k, cos_random, label='cos(random)', color='green', linestyle=':')
plt.title("Golden Ratio Projection vs Linear vs Random")
plt.xlabel("Node Index (k)")
plt.ylabel("cosine value")
plt.legend()
plt.grid(True)
plt.savefig("/mnt/data/golden_ratio_projection_entropy.png")
plt.close()
