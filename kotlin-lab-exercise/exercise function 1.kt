fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex()).filter { it.isNotBlank() }
    val uppercaseCount = input.count { it.isUpperCase() }
    val vowelsCount = input.count { it.toLowerCase() in "aeiou" }
    return Triple(words.size, uppercaseCount, vowelsCount)
}

fun main() {
    val input = "Hello World! This is a Test String."

    val (wordCount, uppercaseCount, vowelsCount) = analyzeString(input)

    println("Number of words: $wordCount")
    println("Number of uppercase letters: $uppercaseCount")
    println("Number of vowels: $vowelsCount")
}
