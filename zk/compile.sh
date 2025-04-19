#!/bin/bash

set -e  # Exit on any error

# Step into the directory of this script
cd "$(dirname "$0")"

# Define names
CIRCUIT=zk_trust
PTAU=powersOfTau28_hez_final_12.ptau

echo "🔧 Compiling circuit..."
circom $CIRCUIT.circom --r1cs --wasm --sym -l ./circomlib/circuits


echo "🔐 Running trusted setup..."
snarkjs groth16 setup $CIRCUIT.r1cs $PTAU $CIRCUIT.zkey

echo "🔑 Exporting verification key..."
snarkjs zkey export verificationkey $CIRCUIT.zkey verification_key.json

echo "🧠 Generating witness..."
node ${CIRCUIT}_js/generate_witness.js ${CIRCUIT}_js/${CIRCUIT}.wasm input.json witness.wtns

echo "📜 Creating proof..."
snarkjs groth16 prove $CIRCUIT.zkey witness.wtns proof.json public.json

echo "✅ Verifying proof..."
snarkjs groth16 verify verification_key.json public.json proof.json

echo "🚀 TetraCodex pipeline complete."
