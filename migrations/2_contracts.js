const A = artifacts.require("./A.sol");
const B = artifacts.require("./B.sol");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(A, { from: accounts[0] })
        .then(() => A.deployed())
        .then((instance) => {
            return deployer.deploy(B, instance.address, { from: accounts[0] });
        });        
};

