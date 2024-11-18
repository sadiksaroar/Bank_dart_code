class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: $amount, New Balance: $balance');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawn: $amount, Remaining Balance: $balance');
    } else {
      print('Insufficient Balance!');
    }
  }
}

void main() {
  // Object creation
  BankAccount account = BankAccount('Alice', 5000.0);

  // Accessing methods
  account.deposit(2000.0);
  account.withdraw(3000.0);
  account.withdraw(5000.0);
}
