package com.cavitedev.score_contacts.contacts

import android.Manifest
import android.content.ContentResolver
import android.content.Context
import android.database.Cursor
import android.provider.ContactsContract
import com.cavitedev.score_contacts.core.StringManipulator.toJoinedPhoneString
import com.cavitedev.scorecontacts.MainActivity
import com.cavitedev.score_contacts.permissions.Peko
import com.cavitedev.score_contacts.permissions.PermissionResult
import io.flutter.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.async
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.runBlocking

object ContactsService {

    private val CONTACTS_CHANNEL = "com.cavitedev.scorecontacts/contacts"


    fun setLoadContactsChannel(flutterEngine: FlutterEngine, flutterActivity: MainActivity) {
        val contactsChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CONTACTS_CHANNEL)


        contactsChannel.setMethodCallHandler { call, result ->


            if (call.method == "getContacts") {

                runBlocking {

                    val permission = async{Peko.requestPermissionsAsync(flutterActivity.baseContext, Manifest.permission.READ_CONTACTS)}.await()

                    Log.d("CavitedevDebug", permission.toString())

                    if (permission is PermissionResult.Granted) {
                        val contacts = fetchContacts(flutterActivity.baseContext)
                        val json = Contact.multipleToJson(contacts)
                        result.success(json.toString())
                    } else {
                        result.error("Rational", "sas", "as")
                    }

                }


            } else {
                result.notImplemented()
            }
        }
    }


    suspend fun fetchContacts(context: Context): List<Contact> {
        val contentRes: ContentResolver = context.contentResolver
        var contacts: List<Contact>
        coroutineScope {
            val contactsListAsync = async { getPhoneContacts(contentRes) }
            val contactNumbersAsync = async { getContactNumbers(contentRes) }
            val contactEmailAsync = async { getContactEmails(contentRes) }
            val contactCompanyAsync = async { getContactCompanies(contentRes) }

            contacts = contactsListAsync.await()
            val contactNumbers = contactNumbersAsync.await()
            val contactEmails = contactEmailAsync.await()
            val contactCompanies = contactCompanyAsync.await()

            contacts.forEach {
                contactNumbers[it.id]?.let { numbers ->
                    it.numbers = numbers
                }
                contactEmails[it.id]?.let { emails ->
                    it.emails = emails
                }
                contactCompanies[it.id]?.let { companies ->
                    it.companies = companies
                }

            }
        }
        return contacts
    }

    private fun getPhoneContacts(contentRes: ContentResolver): ArrayList<Contact> {

        val contactsList = ArrayList<Contact>()
        val contactsCursor = contentRes.query(
                ContactsContract.Contacts.CONTENT_URI,
                null,
                null,
                null,
                ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME + " ASC")
        if (contactsCursor != null && contactsCursor.count > 0) {
            val idIndex = contactsCursor.getColumnIndex(ContactsContract.Contacts._ID)
            val nameIndex = contactsCursor.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME)
            while (contactsCursor.moveToNext()) {
                val id = contactsCursor.getString(idIndex)
                val name = contactsCursor.getString(nameIndex)
                val contact = Contact(id, name)
                contactsList.add(contact)

            }
            contactsCursor.close()
        }
        return contactsList
    }

    private fun getContactNumbers(contentRes: ContentResolver): HashMap<String, ArrayList<String>> {
        val contactsNumberMap = HashMap<String, ArrayList<String>>()
        val phoneCursor: Cursor? = contentRes.query(
                ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                null,
                null,
                null,
                null
        )
        if (phoneCursor != null && phoneCursor.count > 0) {
            val contactIdIndex = phoneCursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.CONTACT_ID)
            val numberIndex = phoneCursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER)
            while (phoneCursor.moveToNext()) {
                val contactId = phoneCursor.getString(contactIdIndex)
                val number: String = toJoinedPhoneString(phoneCursor.getString(numberIndex))
                //check if the map contains key or not, if not then create a new array list with number
                if (contactsNumberMap.containsKey(contactId)) {
                    if (!contactsNumberMap[contactId]!!.contains(number)) {
                        contactsNumberMap[contactId]!!.add(number)
                    }
                } else {
                    contactsNumberMap[contactId] = arrayListOf(number)
                }
            }
            //contact contains all the number of a particular contact
            phoneCursor.close()
        }
        return contactsNumberMap
    }

    private fun getContactEmails(contentRes: ContentResolver): HashMap<String, ArrayList<String>> {
        val contactsEmailMap = HashMap<String, ArrayList<String>>()
        val emailCursor = contentRes.query(ContactsContract.CommonDataKinds.Email.CONTENT_URI,
                null,
                null,
                null,
                null)
        if (emailCursor != null && emailCursor.count > 0) {
            val contactIdIndex = emailCursor.getColumnIndex(ContactsContract.CommonDataKinds.Email.CONTACT_ID)
            val emailIndex = emailCursor.getColumnIndex(ContactsContract.CommonDataKinds.Email.ADDRESS)
            while (emailCursor.moveToNext()) {
                val contactId = emailCursor.getString(contactIdIndex)
                val email = emailCursor.getString(emailIndex)
                //check if the map contains key or not, if not then create a new array list with email
                if (contactsEmailMap.containsKey(contactId)) {
                    contactsEmailMap[contactId]?.add(email)
                } else {
                    contactsEmailMap[contactId] = arrayListOf(email)
                }
            }
            //contact contains all the emails of a particular contact
            emailCursor.close()
        }
        return contactsEmailMap
    }

    private fun getContactCompanies(contentRes: ContentResolver): HashMap<String, ArrayList<Company>> {
        val contactsCompanyMap = HashMap<String, ArrayList<Company>>()
        val where = ContactsContract.Data.MIMETYPE + " = ?"
        val params = arrayOf(ContactsContract.CommonDataKinds.Organization.CONTENT_ITEM_TYPE)
        val companyCursor = contentRes.query(ContactsContract.Data.CONTENT_URI,
                null,
                where,
                params,
                null)

        if (companyCursor != null && companyCursor.count > 0) {
            val contactIdIndex = companyCursor.getColumnIndex(ContactsContract.CommonDataKinds.Organization.CONTACT_ID)
            val companyIndex = companyCursor.getColumnIndex(ContactsContract.CommonDataKinds.Organization.COMPANY)
            val titleIndex = companyCursor.getColumnIndex(ContactsContract.CommonDataKinds.Organization.TITLE)
            while (companyCursor.moveToNext()) {
                val contactId = companyCursor.getString(contactIdIndex)
                val companyName = companyCursor.getString(companyIndex)
                val companyTitle = companyCursor.getString(titleIndex)
                //check if the map contains key or not, if not then create a new array list with email
                val company = Company(companyName, companyTitle)
                if (contactsCompanyMap.containsKey(contactId)) {
                    contactsCompanyMap[contactId]?.add(company)
                } else {
                    contactsCompanyMap[contactId] = arrayListOf(company)
                }
            }
            //contact contains all the emails of a particular contact
            companyCursor.close()
        }
        return contactsCompanyMap
    }

}