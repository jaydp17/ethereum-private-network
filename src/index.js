var Web3 = require("web3");
var web3 = new Web3("ws://localhost:8546");

// web3.fromWei(eth.getBalance(eth.accounts[1]), 'ether')

// web3.eth.personal.sendTransaction(
//   {
//     from: "0x0b0710e235fb221b65fde4191d31d51dd7a56c19",
//     to: "0x2158d039de37c127603a7d77db8cd1958088d01e",
//     value: "1123123000000"
//   },
//   "123456",
//   console.log
// );

// Tx id
// 0x264fde800eb0184542620b2a17031311add9c67940ab7ceb8b2eb2e65af12f70
// blockNumber: 6089

// web3.eth.accounts.wallet.add();

web3.eth.net.isListening().then(console.log);
