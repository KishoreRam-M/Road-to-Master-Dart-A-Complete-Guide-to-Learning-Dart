void main() {
  print("Hello, Dart! 🚀");

  // Variables
  String name = "Kishore Ram M";
  int age = 20;
  double height = 5.9;
  bool isLearning = true;

  print("Name: $name");
  print("Age: $age");
  print("Height: $height feet");
  print("Learning Dart: $isLearning");

  // Function call
  greetUser(name);

  // Loop example
  print("\nCounting from 1 to 5:");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

// Function example
void greetUser(String name) {
  print("\nWelcome, $name! Happy coding with Dart! 🚀");
}
