The **`=>`** symbol in Dart is used for **arrow functions** or **fat arrow functions**. It provides a shorthand for writing simple one-line functions.

### **How it works:**

1. **Single Expression Functions**  
   If a function has just one expression, you can use `=>` instead of writing the entire function block.

2. **Function Syntax:**
   ```dart
   returnType functionName(parameters) => expression;
   ```

### **Example:**

```dart
// Without the arrow syntax (normal function)
int add(int a, int b) {
  return a + b;
}

// With the arrow syntax (using =>)
int add(int a, int b) => a + b;

void main() {
  print(add(5, 3)); // Output: 8
}
```

### **Explanation:**
- In the first example, the function `add()` is written using a normal block of code with the `return` keyword.
- In the second example, the `=>` shorthand simplifies the function into a one-liner, removing the need for `return` and curly braces `{}`.

---

### **When to Use `=>`:**
- You should use `=>` when your function contains **only one expression** and doesn't need multiple statements or complex logic.
- It’s great for simple operations like addition, subtraction, or any expression where the return value is straightforward.

---

### **Example with Other Data Types:**

```dart
// Function to calculate the square of a number
int square(int num) => num * num;

void main() {
  print(square(4)); // Output: 16
}
```

---

**Summary:**  
The `=>` symbol is a **shorter way** to define simple functions in Dart. If your function does something simple (like returning a value based on parameters), you can use `=>` to make your code cleaner and more concise.
