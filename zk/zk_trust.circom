pragma circom 2.0.0;

include "poseidon.circom";

template Main() {
    signal input user_entropy;
    signal input time_salt;
    signal output hash;

    component hasher = Poseidon(2);
    hasher.inputs[0] <== user_entropy;
    hasher.inputs[1] <== time_salt;

    hash <== hasher.out;
}

component main = Main();

