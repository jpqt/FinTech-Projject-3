pragma solidity ^0.5.0;

import "./PuppyPassMintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract PuppyPassCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint256 rate,
        address payable wallet,
        PuppyPass token
    )
        Crowdsale(rate,wallet,token)
        public
    {
        
    }
}

contract PuppyPassCrowdsaleDeployer {
    
    address public puppypass_token_address;
    address public puppypass_crowdsale_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet
    ) public {

        PuppyPass token = new PuppyPass(name,symbol,0);
        puppypass_token_address = address(token);

        PuppyPassCrowdsale puppy_pass_crowdsale = 
            new PuppyPassCrowdsale(1,wallet,token);
        puppypass_token_address = address(puppy_pass_crowdsale);

        token.addMinter(puppypass_crowdsale_address);
        token.renounceMinter();
    }
}