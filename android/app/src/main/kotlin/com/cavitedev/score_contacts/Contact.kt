package com.cavitedev.scorecontacts

import org.json.JSONObject

class Contact(val id: String, val name: String?) {

    constructor(_id: String) : this(_id, null)


    var numbers: List<String>? = null
    var emails: List<String>? = null
    var companies: List<Company>? = null


    fun toJson(): JSONObject {


        val json = JSONObject()
        json.put("id", id)
        if (name != null)
            json.put("name", name)
        emails?.forEach { json.accumulate("emails", it) }
        numbers?.forEach { json.accumulate("numbers", it) }
        companies?.forEach { if (it.isValid())
                            json.accumulate("companies", it.toJson()) }



        return json

    }

    fun isEmpty() : Boolean {
        return name == null && numbers == null && emails == null && companies == null
    }



    companion object {

        fun multipleToJson(contacts: Iterable<Contact>): JSONObject {
            val json = JSONObject()

            contacts.filter{!it.isEmpty()}.forEach { json.accumulate("contacts", it.toJson()) }
            return json
        }
    }


    override fun toString(): String {
        return "Contact(id='$id', name=$name, numbers=$numbers, emails=$emails, companies=$companies)"
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is Contact) return false

        if (name != other.name) return false
        if (numbers != other.numbers) return false
        if (emails != other.emails) return false
        if (companies != other.companies) return false

        return true
    }

    override fun hashCode(): Int {
        var result = name?.hashCode() ?: 0
        result = 31 * result + (numbers?.hashCode() ?: 0)
        result = 31 * result + (emails?.hashCode() ?: 0)
        result = 31 * result + (companies?.hashCode() ?: 0)
        return result
    }

}
