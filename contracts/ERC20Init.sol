pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC20Init{
    ERC20 public web3ojt;

    function setWeb3ojt(address _web3ojt) public {
        web3ojt = ERC20(_web3ojt);
    }
}

contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol){
        _mint(msg.sender, 2000000000 * 10**uint(decimals()));
    }
}
