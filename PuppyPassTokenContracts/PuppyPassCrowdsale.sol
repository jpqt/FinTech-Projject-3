pragma solidity ^0.5.0;

import "./PuppyPassMintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract PuppyPassTokenCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint256 rate,
        address payable wallet,
        PuppyPassToken token
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

        PuppyPassToken token = new PuppyPassToken(name,symbol,0);
        puppypass_token_address = address(token);

        PuppyPassTokenCrowdsale puppy_pass_crowdsale = 
            new PuppyPassTokenCrowdsale(1,wallet,token);
        puppypass_crowdsale_address = address(puppy_pass_crowdsale);

        token.addMinter(puppypass_crowdsale_address);
        token.renounceMinter();
    }
}