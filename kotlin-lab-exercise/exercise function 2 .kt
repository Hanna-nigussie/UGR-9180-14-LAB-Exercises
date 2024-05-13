fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null
    var max = numbers[0]
    for (num in numbers) {
        if (num > max) {
            max = num
        }
    }
    return max
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
    if (numbers.isEmpty()) return 0.0
    var sum = 0.0
    for (num in numbers) {
        sum += num
    }
    return sum / numbers.size
}

fun main() {
    val numbers1 = listOf(3, 5, 1, 7, 9, 2, 4, 6, 8)
    val numbers2 = listOf(1.5, 2.5, 3.5, 4.5, 5.5)

    println("Maximum value in numbers1: ${findMax(numbers1)}")
    println("Even numbers in numbers1: ${filterEvenNumbers(numbers1)}")
    println("Average of numbers2: ${calculateAverage(numbers2)}")
}
