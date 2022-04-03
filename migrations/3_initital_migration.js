const Swaps = artifacts.require('Swaps');

module.exports = function(deployer) {
  deployer.deploy(Swaps)
}