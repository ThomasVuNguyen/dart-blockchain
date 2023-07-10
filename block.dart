Block block1 = new Block(12, ["tung"]);
void main() {
  print("blockHash is ");
  block1.startHash();
  print(block1.blockHash);
}

class Block {
  late int blockHash;
  void startHash() {
    blockHash = Object.hash(this.transactions, this.previousHash);
  }

  int getHash() {
    return this.blockHash;
  }

  int getPrevhash() {
    return this.previousHash;
  }

  List<String> getTransactions() {
    return this.transactions;
  }

  final int previousHash;
  final List<String> transactions;
  Block(this.previousHash, this.transactions);
  //int get hashCode => Object.hash(transactions, transactions);
}
