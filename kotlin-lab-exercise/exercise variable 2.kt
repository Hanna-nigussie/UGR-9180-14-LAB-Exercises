fun main() {
    val distance = 10.0 
    val unit = "kilometers"
    val convertedDistance = kilometersToMiles(distance)
    println("$distance $unit is equal to $convertedDistance miles")
}

fun kilometersToMiles(kilometers: Double): Double {

    return kilometers * 0.621371
}
