// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IStringCompare {
    function compare(string memory _a, string memory _b) external pure returns (bool);
}

contract StringCompareProblem {
    IStringCompare public stringCompareContract;

    function setStringCompareContract(address _stringCompareContract) public {
        stringCompareContract = IStringCompare(_stringCompareContract);
    }
}

contract StringCompareSolve is IStringCompare {
    function compare(string memory _a, string memory _b) external override pure returns (bool) {
        return keccak256(abi.encodePacked(_a)) == keccak256(abi.encodePacked(_b));
    }
}
