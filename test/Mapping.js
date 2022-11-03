// const {
//   time,
//   loadFixture,
// } = require("@nomicfoundation/hardhat-network-helpers");
// const { anyValue } = require("@nomicfoundation/hardhat-chai-matchers/withArgs");
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Mapping", function () {
  it("mapping ", async function () {
    const [owner] = await ethers.getSigners();
    console.log("Signer object ", owner);
    const Token = await ethers.getContractFactory("Mapping")

    const token = await Token.deploy();

    const ownerBalance = await token.set("0x2546BcD3c84621e976D8185a91A922aE77ECEc30", "excited")
    console.log("Owner address : ", owner.address)
    const response = await token.get("0x2546BcD3c84621e976D8185a91A922aE77ECEc30");
    console.log(response)

  })
});
