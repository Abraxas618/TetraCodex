#!/bin/bash
circom zk_trust.circom --r1cs --wasm --sym -o zk_trust
snarkjs powersoftau new bn128 10 pot10_0000.ptau -v
snarkjs powersoftau contribute pot10_0000.ptau pot10_final.ptau --name="Codex MPC" -v
snarkjs groth16 setup zk_trust/zk_trust.r1cs pot10_final.ptau zk_trust/circuit_0000.zkey
snarkjs zkey contribute zk_trust/circuit_0000.zkey zk_trust/circuit_final.zkey --name="Codex Contributor" -v
snarkjs zkey export verificationkey zk_trust/circuit_final.zkey zk_trust/verification_key.json
snarkjs wtns calculate zk_trust/zk_trust.wasm input.json zk_trust/witness.wtns
snarkjs groth16 prove zk_trust/circuit_final.zkey zk_trust/witness.wtns zk_trust/proof.json zk_trust/public.json
snarkjs groth16 verify zk_trust/verification_key.json zk_trust/public.json zk_trust/proof.json
