//Create a BankAccount class with balance and accountNumber properties, and methods called deposit() and withdraw() that modify the balance property. Then create a CheckingAccount class that inherits from BankAccount and has a transactionLimit property. Override the withdraw() method in the CheckingAccount class to check if the withdrawal amount is within the transaction limit before modifying the balance property.
class BankAccount {
  int accountNumber;
  double balance;

  BankAccount({required this.accountNumber, required this.balance});

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

class CheckingAccount extends BankAccount {
  double transactionLimit;

  CheckingAccount(
      {required int accountNumber,
      required double balance,
      required this.transactionLimit})
      : super(accountNumber: accountNumber, balance: balance);

  @override
  void withdraw(double amount) {
    if (amount <= transactionLimit) {
      super.withdraw(amount);
    } else {
      print('Transaction limit is exceeded');
    }
  }
}

void main() {
  var myCheckingAccount = CheckingAccount(
      accountNumber: 87493241001,
      balance: 50000000,
      transactionLimit: 10000000000000);

  myCheckingAccount.deposit(80000);
  print('My Balance: \$${myCheckingAccount.balance}');

  myCheckingAccount.withdraw(100);
  print('Current Balance: \$${myCheckingAccount.balance}');
}
