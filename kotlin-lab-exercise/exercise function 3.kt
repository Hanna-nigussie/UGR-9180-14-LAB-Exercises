fun toUpperCaseList(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun sumList(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    val strings = listOf("apple", "banana", "cherry")
    val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

    val upperCaseStrings = toUpperCaseList(strings)
    println("Uppercase strings: $upperCaseStrings")

    val threshold = 5
    val filteredNumbers = filterGreaterThan(numbers, threshold)
    println("Numbers greater than $threshold: $filteredNumbers")

    val sum = sumList(numbers)
    println("Sum of numbers: $sum")
}
