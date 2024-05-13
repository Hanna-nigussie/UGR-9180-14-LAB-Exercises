fun main() {
    print("Enter the first number: ")
    val num1 = readLine()!!.toDouble()

    print("Enter the second number: ")
    val num2 = readLine()!!.toDouble()

    print("Enter the operation (add, subtract, multiply, divide): ")
    val operation = readLine()!!

    val result = when (operation) {
        "add" -> num1 + num2
        "subtract" -> num1 - num2
        "multiply" -> num1 * num2
        "divide" -> if (num2 != 0.0) num1 / num2 else "Error: Division by zero!"
        else -> "Invalid operation"
    }

    println("Result: $result")
}
