contract StorageC {
  struct LotteryNumber{
    uint256 Lnumber;
    string selection;
  }  mapping(address => LotteryNumber) LotteryNumber;
}
