package com.cavitedev.scorecontacts;

import androidx.test.platform.app.InstrumentationRegistry
import kotlinx.coroutines.async
import kotlinx.coroutines.runBlocking
import org.junit.Assert
import org.junit.Test


class ContactsTest {


    @Test
    fun canReadContacts(){
        runBlocking {
            val contactsAsync = async { ContactsService.fetchContacts(InstrumentationRegistry.getInstrumentation().targetContext) }
            val contacts = contactsAsync.await()
            val expected =  Contact("1", "Ej1 EjSurname")
            Assert.assertEquals(expected,contacts.get(0))
        }
    }

    @Test
    fun contactToJson(){
        val contact = Contact("1", "hola")
        contact.emails = listOf("a@a.com", "b@b.es")
        contact.numbers = listOf("1")
//        val expected = "{\"id\":\"1\",\"name\":\"hola\",\"emails\":[a@a.com, b@b.es],\"numbers\":\"1\"}"
        val expected = "{\"id\":\"1\",\"name\":\"hola\",\"emails\":[\"a@a.com\",\"b@b.es\"],\"numbers\":\"1\"}"
        Assert.assertEquals(expected,contact.toJson())

    }

}
