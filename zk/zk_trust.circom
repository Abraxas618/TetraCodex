pragma circom 2.0.0;

include "poseidon.circom";

template Main() {
    signal input user_entropy;
    signal input time_salt;
    signal output hash;

    signal hasher_in[2];
    component hasher = Poseidon(2);
    
    hasher_in[0] <== user_entropy;
    hasher_in[1] <== time_salt;

    hasher.inputs <== hasher_in;
    hash <== hasher.out;
}

component main = Main();
