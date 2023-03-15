class Bank {
  List<BankAccount> _accounts = [];
  void addAccount(BankAccount account) {
    _accounts.add(account);
  }

  void removeAccount(BankAccount account) {
    _accounts.remove(account);
  }

  BankAccount? getHighestBalance() {
    if (_accounts.isEmpty) {
      return null;
    }

    BankAccount highestBalanceAccount = _accounts[0];

    for (var i = 1; i < _accounts.length; i++) {
      if (_accounts[i].balance > highestBalanceAccount.balance) {
        highestBalanceAccount = _accounts[i];
      }
    }

    return highestBalanceAccount;
  }
}

class BankAccount {
  String _name;
  double _balance;

  String get name => _name;
  set name(String value) => _name = value;

  double get balance => _balance;
  set balance(double value) => _balance = value;

  BankAccount({required String name, required double balance})
      : _name = name,
        _balance = balance;
}

void main() {
  Bank bank = Bank();

  BankAccount account1 = BankAccount(name: "Saad Ali", balance: 50000000.0);
  bank.addAccount(account1);

  BankAccount account2 = BankAccount(name: "Shakeel Ahmed", balance: 100000.0);
  bank.addAccount(account2);

  BankAccount account3 = BankAccount(name: "Rizwan Khan", balance: 2500000.0);
  bank.addAccount(account3);

  print("Bank accounts added:");
  for (var account in bank._accounts) {
    print("Name: ${account.name}, Balance: ${account.balance}");
  }
  BankAccount? highestBalanceAccount = bank.getHighestBalance();
  if (highestBalanceAccount != null) {
    print(
        "Account with highest balance: ${highestBalanceAccount.name}, Balance: ${highestBalanceAccount.balance}");
  } else {
    print("No accounts found.");
  }
  bank.removeAccount(account1);

  print("Bank accounts after removing ${account1.name}:");
  for (var account in bank._accounts) {
    print("Name: ${account.name}, Balance: ${account.balance}");
  }
}
