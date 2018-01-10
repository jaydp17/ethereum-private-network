var Web3 = require("web3");
var web3 = new Web3("ws://localhost:8546");

// web3.eth.personal.sendTransaction(
//   {
//     from: "0x9e1a104ee0ba0a3c28984b523c200487d120d586",
//     to: "0x2158d039de37c127603a7d77db8cd1958088d01e",
//     value: "1123123"
//   },
//   "123456",
//   console.log
// );

web3.eth.net.isListening().then(console.log);
