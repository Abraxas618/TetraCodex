
#!/bin/bash

set -e

echo "[1] Compiling the circuit..."
circom zk_trust.circom --r1cs --wasm --sym

echo "[2] Starting trusted setup (Powers of Tau)..."
snarkjs powersoftau new bn128 12 pot12_0000.ptau -v
snarkjs powersoftau contribute pot12_0000.ptau pot12_0001.ptau --name="Codex Initial" -v
snarkjs powersoftau prepare phase2 pot12_0001.ptau pot12_final.ptau

echo "[3] Generating zkey..."
snarkjs groth16 setup zk_trust.r1cs pot12_final.ptau zk_trust_0000.zkey
snarkjs zkey contribute zk_trust_0000.zkey zk_trust_final.zkey --name="Codex Final" -v

echo "[4] Exporting verification key..."
snarkjs zkey export verificationkey zk_trust_final.zkey verification_key.json

echo "[5] Creating the witness..."
node zk_trust_js/generate_witness.js zk_trust_js/zk_trust.wasm input.json witness.wtns

echo "[6] Generating the proof..."
snarkjs groth16 prove zk_trust_final.zkey witness.wtns proof.json public.json

echo "[7] Verifying the proof..."
snarkjs groth16 verify verification_key.json public.json proof.json

echo "✅ Proof generated and verified successfully."
