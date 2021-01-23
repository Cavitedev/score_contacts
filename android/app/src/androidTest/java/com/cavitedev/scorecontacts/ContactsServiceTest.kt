package com.cavitedev.scorecontacts

import androidx.test.platform.app.InstrumentationRegistry
import com.cavitedev.score_contacts.contacts.Company
import com.cavitedev.score_contacts.contacts.Contact
import com.cavitedev.score_contacts.contacts.ContactsService
import kotlinx.coroutines.async
import kotlinx.coroutines.runBlocking
import org.junit.Assert
import org.junit.Test

class ContactsServiceTest {

    //Depends on device contacts, delete it once tested
    @Test
    fun canReadContacts(){
        runBlocking {
            val contactsAsync =
                    async { ContactsService.fetchContacts(InstrumentationRegistry.getInstrumentation().targetContext) }
            val contacts = contactsAsync.await()
            val expected =  Contact("7", "Ej1 EjSurname")
            val company = Company("comp", "title")
            expected.companies = listOf(company)
            Assert.assertEquals(expected, contacts[0])
        }
    }



}