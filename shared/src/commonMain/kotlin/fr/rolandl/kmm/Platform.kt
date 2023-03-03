package fr.rolandl.kmm

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform