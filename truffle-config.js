module.exports = {
  networks: {
    development: {
       host: "127.0.0.1",
       port: 8545,
       network_id: "*"
    },
    rinkeby: {
       host: "localhost",
       port: 8545,
       network_id: "4",
       gas: 4000000
    }
  }
};