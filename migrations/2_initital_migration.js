const Keeys = artifacts.require('Keeys');

module.exports = function(deployer) {
  deployer.deploy(Keeys)
}
