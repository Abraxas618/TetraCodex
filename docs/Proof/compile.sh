#!/bin/bash

# Step into script directory
cd "$(dirname "$0")"

# Circuit filename
CIRCUIT=zk_trust
PTAU=powersOfTau28_hez_final_12.ptau

# Step 1: Compile the circuit
echo "[1/5] Compiling circuit..."
circom $CIRCUIT.circom --r1cs --wasm --sym -l ./circomlibjs/src/circuits

# Step 2: Generate the trusted setup (Groth16 Phase 2)
echo "[2/5] Generating zkey from R1CS and PTAU..."
snarkjs groth16 setup $CIRCUIT.r1cs $PTAU $CIRCUIT.zkey

# Step 3: Export the verification key
echo "[3/5] Exporting verification key..."
snarkjs zkey export verificationkey $CIRCUIT.zkey verification_key.json

# Step 4: Generate witness
echo "[4/5] Generating witness..."
node ${CIRCUIT}_js/generate_witness.js ${CIRCUIT}_js/${CIRCUIT}.wasm input.json witness.wtns

# Step 5: Generate and verify proof
echo "[5/5] Creating zkSNARK proof..."
snarkjs groth16 prove $CIRCUIT.zkey witness.wtns proof.json public.json
snarkjs groth16 verify verification_key.json public.json proof.json

echo "✅ Proof complete. Output written to:"
echo " - proof.json"
echo " - public.json"
echo " - verification_key.json"
