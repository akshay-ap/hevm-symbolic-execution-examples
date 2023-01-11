// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;

contract BooleanChecks {
    function checkOR(bool x, bool y) public pure {
        assert(x || y);
    }

    function checkAND(bool x, bool y) public pure {
        assert(x && y);
    }
}
