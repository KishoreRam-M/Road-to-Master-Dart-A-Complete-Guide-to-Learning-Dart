
# **Dart Variables, Constants, and Optional Variables**  

## **1. `var` vs `dynamic`**
### **✅ `var` (Type Inference)**
- The `var` keyword lets Dart **automatically** determine the variable’s type at **compile time**.
- Once a type is assigned, it **cannot** be changed.

```dart
void main() {
  var hi = 154; // Dart infers 'hi' as int
  // hi = "Hello"; // ❌ Error! Cannot change type from int to String
}
```

### **✅ `dynamic` (Type Can Change)**
- The `dynamic` keyword allows the variable **to hold any type** and change dynamically.
- This happens at **runtime**, making it less type-safe.

```dart
void main() {
  dynamic value = 154; 
  value = "Hello"; // ✅ No error, type changed dynamically
}
```

🛑 **Difference:** `var` has **fixed** type once assigned, but `dynamic` can change its type anytime.

---

## **2. `const` vs `final`**
### **✅ `const` (Compile-time Constant)**
- The `const` keyword creates a **constant value that is set at compile time**.
- **Cannot be changed at runtime**.

```dart
void main() {
  const int age = 18; // ✅ Compile-time constant
  // age = 20; // ❌ Error! Cannot change a const variable
}
```

### **✅ `final` (Runtime Constant)**
- The `final` keyword allows setting the variable **only once**.
- Unlike `const`, **final variables can be set at runtime**.

```dart
void main() {
  final DateTime date = DateTime.now(); // ✅ Value assigned at runtime
  print(date);
  // date = DateTime.now(); // ❌ Error! Cannot reassign a final variable
}
```

🛑 **Difference:**  
| Feature  | `const` | `final` |
|----------|--------|--------|
| Value Assigned | **Compile time** | **Runtime** |
| Can Change? | ❌ No | ❌ No |
| Example | `const pi = 3.14;` | `final today = DateTime.now();` |

---

## **3. Optional Variables (`?` - Nullable Types)**
- In Dart, **non-nullable types cannot hold `null`**.
- To allow `null`, **use `?` after the data type**.

```dart
void main() {
  int? optvar = null; // ✅ Allowed (Nullable variable)
  print(optvar); // Output: null
}
```

🛑 **Without `?`, the code will give an error:**
```dart
void main() {
  int optvar = null; // ❌ Error! int cannot be null
}
```

---

## **4. `null` with `const`, `final`, and `var`**
- **`const` cannot be `null` explicitly.**
- **`final` and `var` can hold `null`.**

```dart
void main() {
  // const nullv = null; // ❌ Error! const cannot be null

  final nullvv = null; // ✅ Allowed
  var nullvvv = null; // ✅ Allowed

  print(nullvv);
  print(nullvvv);
}
```

---

## **5. Nullable Variable Outside `main()`**
- **Nullable variables (`?`) should be used inside functions like `main()`**.
- **Dart does not allow** declaring optional variables **outside of functions**.

```dart
int? l = null; // ❌ Error! Optional variables cannot be global
```

✅ **Correct Usage Inside `main()`:**
```dart
void main() {
  int? l = null; // ✅ Allowed inside main
}
```

---

## **Summary Table**
| Feature | Description | Example |
|---------|------------|---------|
| `var` | Type is inferred, but cannot change later | `var x = 10;` |
| `dynamic` | Type can change at runtime | `dynamic y = "Hello"; y = 5;` |
| `const` | Compile-time constant, cannot change | `const pi = 3.14;` |
| `final` | Runtime constant, can be assigned only once | `final today = DateTime.now();` |
| `?` | Nullable variable, allows `null` | `int? age = null;` |
| `!` | Null assertion, ensures value is not `null` | `print(name!.length);` |

---

### ✅ **Key Takeaways**
1. `var` infers type but cannot change it.  
2. `dynamic` allows changing type at runtime.  
3. `const` is a **compile-time constant**.  
4. `final` is a **runtime constant**.  
5. Use `?` to allow `null` values in a variable.  
6. `!` ensures a variable is not `null` (use carefully).  
7. `const` variables **cannot** be `null`, but `final` and `var` can be.  
