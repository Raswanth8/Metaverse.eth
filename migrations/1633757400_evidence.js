var EvidenceContract = artifacts.require("Evidence");
module.exports = function(deployer) {
deployer.deploy(EvidenceContract);
};