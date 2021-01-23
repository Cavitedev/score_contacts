package com.cavitedev.score_contacts.core

object StringManipulator {

    val isDigitRegex : Regex = Regex("[^0-9+]+")

    fun toJoinedPhoneString(str : String) : String {

        return str.split(isDigitRegex).joinToString("")

    }

}