package com.cavitedev.score_contacts.contacts

import org.json.JSONObject

class Company (val name:String?, val title: String?) {





    fun toJson(): JSONObject? {

        if(!isValid()) return null
        val json = JSONObject()
        if(name != null)
            json.put("name", name)
        if(title != null)
            json.put("title", title)


        return json

    }

    fun isValid() = name != null || title != null


    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is Company) return false

        if (name != other.name) return false
        if (title != other.title) return false

        return true
    }

    override fun hashCode(): Int {
        var result = name?.hashCode() ?: 0
        result = 31 * result + (title?.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "Company(name=$name, title=$title)"
    }


}