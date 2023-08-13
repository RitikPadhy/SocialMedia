const hre = require('hardhat')

//Deploys the profileImageContract
async function main() {
  const profileImageFactory = await hre.ethers.getContractFactory(
    'ProfileImageNfts',
  )
  const profileImageContract = await profileImageFactory.deploy()

  await profileImageContract.deployed()

  console.log('Profile Image Minter deployed to:', profileImageContract.address)
}

//For catching any errors which are present
;(async () => {
  try {
    await main()
  } catch (error) {
    console.error(error)
    process.exit(1)
  }
})()