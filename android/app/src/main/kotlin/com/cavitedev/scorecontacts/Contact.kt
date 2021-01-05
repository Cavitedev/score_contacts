package com.cavitedev.scorecontacts

class Contact(val id: String, val name: String) {

    var numbers: List<String>? = null
    var emails: List<String>? = null


    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is Contact) return false

        if (id != other.id) return false

        return true
    }

    override fun hashCode(): Int {
        return id.hashCode()
    }

    override fun toString(): String {
        return "Contact(id='$id', name='$name', numbers=$numbers, emails=$emails)"
    }


}
