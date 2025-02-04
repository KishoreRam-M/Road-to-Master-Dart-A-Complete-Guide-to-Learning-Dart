

---

## **Understanding `{}` and `[]` in Dart Functions**  
When we create functions in Dart, we can pass values (parameters) inside them.  
But sometimes, we don’t **always** need to pass values. This is where **optional parameters** come in!  

There are **two types** of optional parameters in Dart:  
1. **Named Parameters** `{}` → You specify the name when calling.  
2. **Positional Parameters** `[]` → You pass values in order.  

---

### **🔹 1. Named Parameters `{}` (Easier to Read)**
- You can **skip** passing values.  
- You **must** use the **name** when passing values.  
- The order **doesn’t** matter.  

### **📝 Example: Named Parameters (`{}`)**
```dart
void greet({String name = "User"}) {
  print("Hello, $name!");
}

void main() {
  greet(); // Output: Hello, User! (Default value is used)
  greet(name: "Kishore"); // Output: Hello, Kishore!
}
```

🔹 **How does this work?**
- If we don’t give a `name`, Dart automatically uses `"User"`.  
- We must write `name: "Kishore"` when calling the function.  
- The order **doesn’t matter** (if there are multiple parameters).  

---

### **🔹 2. Positional Parameters `[]` (Shorter to Write)**
- You **must** pass values in the correct order.  
- You **cannot** use the parameter name when calling the function.  
- You can **skip** parameters (if they have default values).  

### **📝 Example: Positional Parameters (`[]`)**
```dart
void greet([String name = "User"]) {
  print("Hello, $name!");
}

void main() {
  greet(); // Output: Hello, User! (Default value is used)
  greet("Kishore"); // Output: Hello, Kishore!
}
```

🔹 **How does this work?**
- If we don’t give a `name`, Dart automatically uses `"User"`.  
- We **must** pass `"Kishore"` directly (without `name:`).  
- The order **matters** (if there are multiple parameters).  

---

## **🔎 What’s the Difference?**
| Feature | Named Parameters `{}` | Positional Parameters `[]` |
|---------|----------------------|-------------------------|
| Order | Can be in any order ✅ | Must be in order ❌ |
| Default Value | Yes ✅ | Yes ✅ |
| Can Skip Values? | Yes ✅ | Yes ✅ |
| How to Call? | `greet(name: "Kishore")` | `greet("Kishore")` |
| Must Use Name? | Yes ✅ | No ❌ |

---

## **🤔 Which One Should You Use?**
**Use `{}` (Named Parameters) if:**
✔️ Your function has **many** optional values.  
✔️ You want **clear, readable code**.  
✔️ You don’t want to **remember the order**.  

**Use `[]` (Positional Parameters) if:**
✔️ You only have **1-2 values** to pass.  
✔️ The order of values **makes sense**.  
✔️ You want to **type less**.  

---

## **🎯 Final Example (Both Together)**
```dart
// Named Parameters
void namedGreet({String name = "User", int age = 20}) {
  print("Hello, $name! You are $age years old.");
}

// Positional Parameters
void positionalGreet([String name = "User", int age = 20]) {
  print("Hello, $name! You are $age years old.");
}

void main() {
  // Named Parameters - Order doesn't matter
  namedGreet(); // Output: Hello, User! You are 20 years old.
  namedGreet(name: "Kishore", age: 19); // Output: Hello, Kishore! You are 19 years old.

  // Positional Parameters - Order matters
  positionalGreet(); // Output: Hello, User! You are 20 years old.
  positionalGreet("Kishore", 19); // Output: Hello, Kishore! You are 19 years old.
}
```

---

## **📌 Final Takeaway**
- `{}` is better for **clarity and flexibility** ✅.  
- `[]` is better for **short and simple** functions ✅.  


