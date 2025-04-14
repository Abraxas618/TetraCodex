#!/bin/bash
circom zk_trust.circom --r1cs --wasm --sym
snarkjs r1cs info zk_trust.r1cs
