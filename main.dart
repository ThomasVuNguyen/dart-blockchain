import 'block.dart';

List<String> genensisTransactions = ["satoshi sent thomas 1 BTC"];

Block genesisBlock = new Block(0,
    genensisTransactions); //a first block to serve as previousHash for more blocks to come
Block fraudBlock = new Block(1, genensisTransactions);
void main() {
  genesisBlock.startHash();
  print(genesisBlock.getHash()); //hash or digital signature of genesisBlock

  fraudBlock.startHash();
  print(fraudBlock
      .getHash()); //attempted fraud will have a different digital signature
  genensisTransactions.add("thomas sent huyen 2 BTC"); //new transaction is made
  Block secondBlock = Block(genesisBlock.getHash(), genensisTransactions);
  secondBlock.startHash();
  print(secondBlock.getHash());
  print(
      "Any attempt to maliciously change the transaction information will change all hash/signature of subsequent blocks");
}
