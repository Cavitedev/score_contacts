package com.cavitedev.scorecontacts;

import androidx.test.platform.app.InstrumentationRegistry
import kotlinx.coroutines.async
import kotlinx.coroutines.runBlocking
import org.junit.Assert
import org.junit.Test


class ContactsTest {


    @Test
    fun CanReadContacts(){

        runBlocking {



            val contactsAsync = async { ContactsService.fetchContacts(InstrumentationRegistry.getInstrumentation().targetContext) }
            val contacts = contactsAsync.await()
            val expected =  Contact("1", "Ej1 EjSurname")
            Assert.assertEquals(expected,contacts.get(0))

        }
    }

}
