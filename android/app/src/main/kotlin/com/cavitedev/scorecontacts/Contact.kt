package com.cavitedev.scorecontacts

import org.json.JSONObject

class Contact(val id: String, val name: String) {

    var numbers: List<String>? = null
    var emails: List<String>? = null


    fun toJson() : JSONObject{


        val json = JSONObject()
        json.put("id",id)
        json.put("name",name)
        emails?.forEach{json.accumulate("emails",it)}
        numbers?.forEach { json.accumulate("numbers",it) }

        return json

    }

    companion object{

        fun multipleToJson (contacts:Iterable<Contact>) : JSONObject{
            val json = JSONObject()

            contacts.forEach { json.accumulate("contacts", it.toJson()) }
            return json
        }
    }

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
