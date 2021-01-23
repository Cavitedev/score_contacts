package com.cavitedev.scorecontacts;

import com.cavitedev.score_contacts.contacts.Contact
import org.junit.Assert
import org.junit.Test


class ContactsTest {




    @Test
    fun contactToJson(){
        val contact = Contact("1", "hola")
        contact.emails = listOf("a@a.com", "b@b.es")
        contact.numbers = listOf("1")
        val expected = "{\"id\":\"1\",\"name\":\"hola\",\"emails\":[\"a@a.com\",\"b@b.es\"],\"numbers\":\"1\"}"
        Assert.assertEquals(expected,contact.toJson().toString())

    }

    @Test
    fun contactsToJsonWorksSucessfully(){
        val contact1 = Contact("1", "hola")
        contact1.emails = listOf("a@a.com", "b@b.es")
        contact1.numbers = listOf("1")

        val contact2 = Contact("2", "example2")
        contact2.emails = listOf("c@c.uk")
        contact2.numbers = listOf("666")
        val expected = "{\"contacts\":[{\"id\":\"1\",\"name\":\"hola\",\"emails\":[\"a@a.com\",\"b@b.es\"],\"numbers\":\"1\"},{\"id\":\"2\",\"name\":\"example2\",\"emails\":\"c@c.uk\",\"numbers\":\"666\"}]}"

        Assert.assertEquals(expected, Contact.multipleToJson(listOf(contact1, contact2)).toString())
    }

}
