#!/bin/bash

# Step into project directory
cd "$(dirname "$0")"

# Paths
CIRCUIT=zk_trust
PTAU=powersOfTau28_hez_final_12.ptau

# Compile
circom $CIRCUIT.circom --r1cs --wasm --sym -l ./circomlib/circuits

# Trusted setup
snarkjs groth16 setup $CIRCUIT.r1cs $PTAU $CIRCUIT.zkey

# Verification key
snarkjs zkey export verificationkey $CIRCUIT.zkey verification_key.json

# Witness
node ${CIRCUIT}_js/generate_witness.js ${CIRCUIT}_js/${CIRCUIT}.wasm input.json witness.wtns

# Proof
snarkjs groth16 prove $CIRCUIT.zkey witness.wtns proof.json public.json

# Verify
snarkjs groth16 verify verification_key.json public.json proof.json
