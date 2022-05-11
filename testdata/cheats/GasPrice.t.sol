// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import "ds-test/test.sol";
import "./Cheats.sol";

contract GaspriceTest is DSTest {
    Cheats constant cheats = Cheats(HEVM_ADDRESS);

    function testGasprice() public {
        cheats.gasprice(54321);
        assertEq(tx.gasprice, 54321, "gasprice failed");
    }

    function testGaspriceFuzzed(uint256 wad) public {
        cheats.gasprice(wad);
        assertEq(tx.gasprice, wad, "gasprice failed");
    }
}
