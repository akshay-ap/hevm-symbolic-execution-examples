// SPDX-License-Identifier: UNLICENSED

contract BooleanANDCheck {
    function check(bool x, bool y) public pure {
        assert(x && y == true);
    }
}
