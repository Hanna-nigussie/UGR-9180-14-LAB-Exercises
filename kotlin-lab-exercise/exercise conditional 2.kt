fun main() {
    val originalPrice = 100.0
    val discountPercentage = 0.6
    val threshold = 0.5

    val finalPrice: Double
    val appliedDiscountPercentage: Double

    if (discountPercentage > threshold) {
        println("Warning: The discount percentage is too high. Setting it to the threshold value of ${(threshold * 100)}%")
        appliedDiscountPercentage = threshold
        finalPrice = originalPrice * (1 - threshold)
    } else {
        appliedDiscountPercentage = discountPercentage
        finalPrice = originalPrice * (1 - discountPercentage)
    }

    println("Original price: \$${originalPrice}")
    println("Discount percentage: ${(appliedDiscountPercentage * 100)}%")
    println("Final price after discount: \$${finalPrice}")
}
