pragma solidity ^0.5.0;

import "./PupperPass.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


// Have the PupperPass contract inherit the following OpenZeppelin:
// * Crowdsale
// * MintedCrowdsale
contract PupperPassCrowdsale is Crowdsale, MintedCrowdsale{ // UPDATE THE CONTRACT SIGNATURE TO ADD INHERITANCE
    
    // Provide parameters for all of the features of your crowdsale, such as the `rate`, `wallet` for fundraising, and `token`.
    constructor(
        uint256 rate,
        address payable wallet,
        PupCoin token
    ) public Crowdsale(rate, wallet, token) {
        // constructor can stay empty
    }
}


contract PupCoinCrowdsaleDeployer {
    // Create an `address public` variable called `pupper_token_address`.
    address public pupper_token_address;
    // Create an `address public` variable called `pupper_crowdsale_address`.
    address public pupper_crowdsale_address;

    // Add the constructor.
    constructor(
       string memory name,
       string memory symbol,
       address payable wallet 
    ) public {
        // Create a new instance of the Pupcoin contract.
        PupCoin token = new PupCoin(name, symbol, 0);
        
        // Assign the token contract’s address to the `pupper_token_address` variable.
        pupper_token_address = address(token);

        // Create a new instance of the `PupCoinCrowdsale` contract
        PupCoinCrowdsale pupper_crowdsale = 
            new PupCoinCrowdsale(1, wallet, token);
            
        // Assign the `PupCoinCrowdsale` contract’s address to the `pupper_crowdsale_address` variable.
        pupper_crowdsale_address = address(pupper_crowdsale);
        
        // Set the `PupCoinCrowdsale` contract as a minter
        token.addMinter(pupper_crowdsale_address);
        
        // Have the `PupCoinCrowdsaleDeployer` renounce its minter role.
        token.renounceMinter();
    }
}
