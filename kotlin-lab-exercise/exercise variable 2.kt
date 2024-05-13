fun main() {
    // Input distance and unit
    val distance = 10.0 // Example distance in kilometers
    val unit = "kilometers"

    // Convert kilometers to miles
    val convertedDistance = kilometersToMiles(distance)

    // Print the converted distance
    println("$distance $unit is equal to $convertedDistance miles")
}

fun kilometersToMiles(kilometers: Double): Double {
    // 1 kilometer = 0.621371 miles
    return kilometers * 0.621371
}
