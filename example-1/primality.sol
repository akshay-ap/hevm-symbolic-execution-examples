// SPDX-License-Identifier: UNLICENSED

contract PrimalityCheck {
    function factor(uint x, uint y) public pure {
        require(1 < x && x < 973013 && 1 < y && y < 973013);
        assert(x * y != 973013);
    }
}
