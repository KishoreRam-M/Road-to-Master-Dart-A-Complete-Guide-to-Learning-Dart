void main() {
  print("Welcome to Dart Programming");
  
  List<String> listOfNames = ["Kishore Ram M", "Ram", "KRM"];

  print(listOfNames.length);       // Number of elements
  print(listOfNames.hashCode);     // Hash code of the list
  print(listOfNames.isEmpty);      // Checks if list is empty
  print(listOfNames.runtimeType);  // Data type of list
  print(listOfNames.indexed);      // Indexed view (requires Dart 3.0+)

  listOfNames.add("Mariappan");    // Adds an item at the end
  listOfNames.insert(1, "Dart");   // Inserts at index 1
  
  listOfNames.sort();              // Sorts the list alphabetically
  print(listOfNames);              // ✅ Correct way to print sorted list
}

//Connecting to VM Service at ws://127.0.0.1:38323/aOnj6bnmi-E=/ws
//Connected to the VM Service.
