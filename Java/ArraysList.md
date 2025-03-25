* Boxing: The process of converting a primitive type (e.g., int, double) into its corresponding wrapper class (e.g., Integer, Double)

* Unboxing: The reverse process of converting a wrapper class back to its primitive type

* Autoboxing: The automatic conversion that the Java compiler makes between primitive types and their corresponding object wrapper classes

# Manual Boxing
Example

Each wrapper has a static overloaded factory method, valueOf. This static factory method has better performance of space and time

```java
Integer boxedInt = Integer.valueOf(15); // using static overloaded factory method
```

Or

```java
Integer boxedInt = new Integer(15) // deprecated code
```

# Auto Boxing
Java automatically boxes primitive type for you and it's recommended

```java
Integer boxedInt = 15;
```

# Unboxing

```java
int unboxedInt = boxedInteger.intValue();
```

## Auto unboxing
```java
int unboxedInt = boxedInteger;
```

* Auto boxing and Auto unboxing can also be done in `return` statement of method or in `parameter` of method