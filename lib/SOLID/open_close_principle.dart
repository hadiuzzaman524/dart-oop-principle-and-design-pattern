/*
Open for extension and closed for modification

Bad Code: 
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

/// the class is not closed for modification, if we need to save user information
/// in local storage or on network we need to modify. so its violate the principle

class StoreUser {
  final User user;
  StoreUser(this.user);
  void saveToDB() {
    print("Save to DB");
  }
   void saveToFile() {
    print("Save to File");
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

abstract class SaveInformation {
  void saveUserInformation(final User user);
}

class LocalStorage implements SaveInformation {
  @override
  void saveUserInformation(User user) {
    print("Saved on Local Storage: $user");
  }
}

class CloudStorage implements SaveInformation {
  @override
  void saveUserInformation(User user) {
    print("Save on Cloud Storage: $user");
  }
}

void main() {
  final user = User(
    name: "Md Hadiuzzaman",
    age: 23,
    phoneNumber: "01908034074",
  );
  final localStorage = LocalStorage();
  localStorage.saveUserInformation(user);
  final cloudStorage = CloudStorage();
  cloudStorage.saveUserInformation(user);
}
