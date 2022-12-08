### Project 3: PuppyPass-Utilization of NFTs for Doggy Daycare

### Summary

* NFT token membership to utilize doggy daycare service. Purchase of NFT token will give you exclusive access to our services which include grooming, daycare, puppy play dates, exclusive deals and access for our token holding members to extravagent meetups for puppy lovers.


### Technologies
* Python
* Solidity
* Streamlit
* Pandas
* web3
* Metamask
* Ganache
* Pinata

### Purpose of Use

* Use various solidity contracts and integrate with ganache/metamask/streamlit for the UI experience.

### Files Navigation for NFT Section (Kenny)
* `puppypass_abi.json` 
* `puppypass.sol`
* `app.py`
* `pinata.py` 

### Files Navigation for Token Section (Daniel)
* `PuppyPassCrowdsale.sol` 
* `PuppyPassMintable.sol`
* `PuppyPassToken.sol` 

### Data Prep

* To create the image for our NFT, we utilized a machine learning algorithm site that produces images using text captions. Once the image generated, we set the size parameters and cropped out extra white space, then downloaded it as a .png file for use. 


### Daniel Section Overview 

* PPMintable Contract added appropriate pragma and import statements that defined contracts that inherited erc20, erc20detailed, & erc20mintable contracts. It also navigates to solidity compiler menu in remix and select any version from 0.5.0 to 0.5.17 and compile.



* PPCrowdsale contract contract serves as the base and is for managing a token crowdsale that allows investors to purchase the PuppyPassToken with Ethereum.
    -Add appropriate pragma and import statements
    -Construct the code to initialize all variables that crowdsale requires.



* PPCrowdsaleDeployer contract:
    -This will help set up, configure, and deploy the PPMintToken and PPTokenCrowdsale contracts with all correct information.

* Images: 

<img width="290" alt="buying_token_1" src="https://user-images.githubusercontent.com/95942698/206470239-72d301a3-19ac-478c-8671-0056b41cb9c6.png">

<img width="282" alt="buying_token_2 1" src="https://user-images.githubusercontent.com/95942698/206470561-4f6f5097-c93b-446e-a160-4c51745d14de.png">

<img width="301" alt="STEP3_mint_at_address_textbox" src="https://user-images.githubusercontent.com/95942698/206470729-33e32b10-1232-4c1f-8b63-b69bb76730c3.png">

<img width="299" alt="STEP4_puppy_token_address" src="https://user-images.githubusercontent.com/95942698/206470835-78814dfd-be0c-4242-8375-59d920c05f2e.png">

<img width="360" alt="1 1_deploy_puppypasstoken_contract" src="https://user-images.githubusercontent.com/95942698/206470980-791209f0-cf4c-4033-b268-baffe511380f.png">

<img width="357" alt="1 2_created_custom_token" src="https://user-images.githubusercontent.com/95942698/206471192-d91671cd-6fa0-4fb1-9bc4-5eeb99de0acc.png">

<img width="351" alt="1 2 1_pupptoken_made" src="https://user-images.githubusercontent.com/95942698/206471072-ad5cfadb-3945-45b1-bf3e-d69b2860a4bf.png">

<img width="353" alt="1 3_transferring_token_to_accounts" src="https://user-images.githubusercontent.com/95942698/206471291-037cd6a2-ca70-411c-812a-f30007cbd112.png">

<img width="280" alt="1 4transfer working" src="https://user-images.githubusercontent.com/95942698/206471505-aa818267-7dc2-4d97-9fa5-60bb96e57548.png">



### Kenny Section Overview 

![PuppyPassNFT](https://user-images.githubusercontent.com/95942698/206471630-0c571782-bd81-4e89-be39-84c4f489992e.png)


# Deploy Contract, launch blockchain via Ganache, and utilize MetaMask & Remix to compile/deploy smart contract for our DoggyDayCare NFT 


# Prep env with .env file 


# dAPP using decentralized storage(Pinata) to store our NFT 


# Images: 

<img width="1123" alt="Screenshot 2022-12-08 at 8 28 43 AM" src="https://user-images.githubusercontent.com/95942698/206472281-153bd8de-b41e-4f56-8ecf-3045f4751ba5.png">

![Screenshot 2022-12-04 at 4 10 02 PM](https://user-images.githubusercontent.com/95942698/206472376-74b2b75f-1aef-43c4-ad90-86e9fd6131ad.png)

![Screenshot 2022-12-04 at 4 09 39 PM](https://user-images.githubusercontent.com/95942698/206472424-f480873d-badb-4f93-a4b3-2686c163e242.png)


![Screenshot 2022-12-04 at 4 09 47 PM](https://user-images.githubusercontent.com/95942698/206472456-c34d22ec-7a00-476a-8c34-923361568949.png)

![Screenshot 2022-12-04 at 4 10 09 PM](https://user-images.githubusercontent.com/95942698/206472593-7766e971-632e-4361-89ad-b5a2dc4681cb.png)

![Screenshot 2022-12-04 at 4 19 31 PM](https://user-images.githubusercontent.com/95942698/206472930-d795958b-d8d9-45fe-8c10-200bcf349d18.png)


### Potential Next Steps (Josh) 

* Once we've refined our skills in solidty as far as deploying and minting our contracts; the next probable step would be to build our own local NFT marketplace. Start small with a sample contract and learn to test the contracts and scripts that deploy the contract. Continue building and learning with goals that you learn something new each time you go around. The final and most important highlight among best practices to become Solidity developer focuses on commitment to web and blockchain. You must have faith in the potential of web3 and the transition of the internet into a decentralized web. Blockchain technology is still in the stages of infancy, and smart contract-based applications are only beginning to make an impact.


# Contributors

* Daniel B, Kenny K, Josh P






