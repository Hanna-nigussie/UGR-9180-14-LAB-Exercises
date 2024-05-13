import kotlin.random.Random

fun generateRandomPassword(length: Int): String {
    val passwordChars = mutableListOf<Char>()

    passwordChars.addAll(('a'..'z'))
    passwordChars.addAll(('A'..'Z'))
    passwordChars.addAll(('0'..'9'))

    val specialSymbols = listOf('!', '@', '#', '$', '%', '^', '&', '*')
    passwordChars.addAll(specialSymbols)

    passwordChars.shuffle()

    return passwordChars.subList(0, length).joinToString("")
}

fun main() {
    val passwordLength = 12
    val generatedPassword = generateRandomPassword(passwordLength)
    println("Generated Password: $generatedPassword")
}
