/*
“There should never be more than one reason for a class to change”.
 Each class should have only one central responsibility.
*/

/*
Bad Code Example: 

 class User{
  final String name; 
  final int age; 
  final String phoneNumber; 

  User({required this.name, required this.age, required this.phoneNumber}); 

  void showUserInformation(){

  }
  void saveUserInformation(){

  }
 }
*/

class User {
  final String name;
  final int age;
  final String phoneNumber;
  User({required this.name, required this.age, required this.phoneNumber});
  @override
  String toString() {
    return "Name: $name, Age: $age, Phone: $phoneNumber";
  }
}

class UserRepository {
  final User user;
  UserRepository(this.user);

  void saveUserInformation() {
    print("Save User Information In DB: $user");
  }
}

class UserView {
  final User _user;
  UserView(this._user);

  void showUserInformation() {
    print("Show user information : $_user");
  }
}

void main() {
  User user = User(name: "Md Hadiuzzaman", age: 25, phoneNumber: "01785304677");
  final userRepository = UserRepository(user);
  final userView = UserView(user);
  userRepository.saveUserInformation();
  userView.showUserInformation();
}
