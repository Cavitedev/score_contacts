package com.cavitedev.score_contacts.services.app_message

import android.content.ComponentName
import android.content.ContentResolver
import android.content.Context
import android.content.Intent
import android.database.Cursor
import android.database.CursorJoiner
import android.provider.ContactsContract
import android.telephony.PhoneNumberUtils
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


object AppMessageService {

    private const val REGION_CHANNEL = "com.cavitedev.scorecontacts/app_message"

    @Suppress("UNCHECKED_CAST")
    fun setAppMessageChannel(flutterEngine: FlutterEngine, context: Context) {
        val regionChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, REGION_CHANNEL)

        regionChannel.setMethodCallHandler { call, result ->

            if (call.method == "send_message") {
                try {
                    val args: List<String> = call.arguments as List<String>
                    val num = args[0]
                    val app = args[1]
                    hasWhatsapp(context, num)
                    sendMessage(context, num, app)
                    result.success(null)
                } catch (e: Exception) {
                    result.error("400", e.message, e.localizedMessage)
                }

            } else {
                result.notImplemented()
            }

        }

    }

//https://stackoverflow.com/a/35453979/14559140
    fun hasWhatsapp(context: Context, phoneNum: String): Boolean {

//        val cr: ContentResolver = context.contentResolver
//
//        val contactCursor: Cursor? = cr.query(
//                ContactsContract.RawContacts.CONTENT_URI,
//                arrayOf(ContactsContract.RawContacts._ID, ContactsContract.RawContacts.CONTACT_ID),
//                ContactsContract.RawContacts.ACCOUNT_TYPE + "= ?", arrayOf("com.whatsapp"),
//                null)
//
//
//        if (contactCursor != null) {
//            if (contactCursor.count > 0) {
//                val whatsAppContactCursor: Cursor? = cr.query(
//                        ContactsContract.CommonDataKinds.Phone.CONTENT_URI, arrayOf(ContactsContract.CommonDataKinds.Phone.CONTACT_ID,
//                        ContactsContract.CommonDataKinds.Phone.NUMBER),
//                        "CAST(${ContactsContract.CommonDataKinds.Phone.NUMBER} AS INTEGER) LIKE  ?", arrayOf("%640232416"), null)
//                val join = CursorJoiner(contactCursor, arrayOf(ContactsContract.RawContacts.CONTACT_ID), whatsAppContactCursor, arrayOf(ContactsContract.CommonDataKinds.Phone.CONTACT_ID))
//
////                (whatsAppContactCursor.getString(whatsAppContactCursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER)))
//
//
//            }
//        }

//        val whatsAppContactCursor: Cursor? = cr.query(
//        ContactsContract.CommonDataKinds.Phone.CONTENT_URI, arrayOf(ContactsContract.CommonDataKinds.Phone.CONTACT_ID,
//        ContactsContract.CommonDataKinds.Phone.NUMBER,
//        ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME),
//        "CAST(${ContactsContract.CommonDataKinds.Phone.NUMBER} AS INTEGER) LIKE  ?", arrayOf("%640232416"), null)
//val join = CursorJoiner(contactCursor, arrayOf(ContactsContract.RawContacts.CONTACT_ID), whatsAppContactCursor, arrayOf(ContactsContract.CommonDataKinds.Phone.CONTACT_ID))
//
//(whatsAppContactCursor.getString(whatsAppContactCursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER)))
//


//        showLogI(TAG, " WhatsApp contact size :  " + myWhatsappContacts.size())

//        val hasWhatsApp: Boolean
////        val projection = arrayOf<String>(ContactsContract.RawContacts._ID)
//        val projection = arrayOf(ContactsContract.CommonDataKinds.Phone.CONTACT_ID)
////        val selection: String = "${ContactsContract.CommonDataKinds.Phone.CONTENT_URI} = ? AND account_type IN (?)"
//        val selection: String = "account_type IN (?)"
////        val selectionArgs = arrayOf(phoneNum, "com.whatsapp")
//        val selectionArgs = arrayOf("com.whatsapp")
//        val cursor: Cursor? = context.contentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, projection, selection, selectionArgs, null)
//        if (cursor != null) {
//            hasWhatsApp = cursor.moveToNext()
//            cursor.close()
//        }else{
//            hasWhatsApp = false
//        }
//        return hasWhatsApp

//        val projection = arrayOf<String>(RawContacts._ID)
//        val selection = ContactsContract.Data.CONTACT_ID + " = ? AND account_type IN (?)"
//        val selectionArgs = arrayOf("THE_CONTACT_DEVICE_ID", "com.whatsapp")
//        val cursor: Cursor = activity.getContentResolver().query(RawContacts.CONTENT_URI, projection, selection, selectionArgs, null)
//        val hasWhatsApp = cursor.moveToNext()
//        if (hasWhatsApp) {
//            val rowContactId = cursor.getString(0)
//        }

        return false
    }


    private fun sendMessage(context: Context, phone: String, app: String) {

        val sendIntent = Intent(Intent.ACTION_MAIN)
        sendIntent.component = ComponentName(app, "$app.Conversation")
        sendIntent.putExtra("jid", PhoneNumberUtils.stripSeparators
        (phone.substring(1)).toString() + "@s.whatsapp.net")
        context.startActivity(sendIntent)

    }


}