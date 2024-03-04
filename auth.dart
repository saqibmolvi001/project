

import 'dart:io';

class Auth {
  Auth() {
    print("1 for login");
    print("2 for signup");

    var authOption = stdin.readLineSync();
    print('');
    if (authOption == "1") {
      login();
    } else if (authOption == '2') {
      signup();
    } else {
      print('select right option');
    }
  }
}

getEmailandPassword() {
  print("Enter your email ");
  var email = stdin.readLineSync();
  print("Enter your password ");
  var password = stdin.readLineSync();

  if (email == password) {
    print("Please enter your email and password");
    getEmailandPassword();
  } else {
    return [email, password];
  }
}

void login() {
  print('Login');
  List crediantials = getEmailNPass();
  print(crediantials);
}

void signup() {
  print('Sign Up');
  List crediantials = getEmailNPass();
  print(crediantials);
}

List getEmailNPass() {
  print('Write Email');
  var email = stdin.readLineSync();
  print('Write Password');
  var pass = stdin.readLineSync();
  return [email, pass];
}