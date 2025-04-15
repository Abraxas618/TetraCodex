#!/usr/bin/env bash
set -e

echo "[*] Checking dependencies..."
command -v circom >/dev/null 2>&1 || { echo >&2 "❌ circom not found. Install: npm i -g circom"; exit 1; }
command -v snarkjs >/dev/null 2>&1 || { echo >&2 "❌ snarkjs not found. Install: npm i -g snarkjs"; exit 1; }

echo "[*] Compiling zk_trust.circom..."
circom zk_trust.circom --r1cs --wasm --sym -l ./circomlib/circuits

echo "[*] Running trusted setup..."
snarkjs groth16 setup zk_trust.r1cs powersOfTau28_hez_final_12.ptau zk_trust.zkey

echo "[*] Exporting verification key..."
snarkjs zkey export verificationkey zk_trust.zkey verification_key.json

echo "[✅] Compile process complete!"
