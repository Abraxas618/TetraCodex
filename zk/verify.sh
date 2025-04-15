#!/usr/bin/env bash
set -e

echo "[*] Generating witness..."
node zk_trust_js/generate_witness.js zk_trust_js/zk_trust.wasm input.json witness.wtns

echo "[*] Creating proof..."
snarkjs groth16 prove zk_trust.zkey witness.wtns proof.json public.json

echo "[*] Verifying proof..."
snarkjs groth16 verify verification_key.json public.json proof.json

echo "[✅] Proof verified successfully!"
