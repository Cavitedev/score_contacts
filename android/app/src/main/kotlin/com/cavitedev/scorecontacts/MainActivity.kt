package com.cavitedev.scorecontacts

import android.Manifest
import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.runBlocking
import org.json.JSONObject

class MainActivity : FlutterActivity() {
    private val CONTACTS_CHANNEL = "com.cavitedev.scorecontacts/contacts"
    private val PERMISSIONS_REQUEST_READ_CONTACTS: Int = 100


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        requestPermissions()
        (super.onCreate(savedInstanceState, persistentState))
    }


    private fun requestPermissions() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            requestPermissions(arrayOf(Manifest.permission.READ_CONTACTS, Manifest.permission.WRITE_CONTACTS),
                    PERMISSIONS_REQUEST_READ_CONTACTS)
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        val channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CONTACTS_CHANNEL)

        super.configureFlutterEngine(flutterEngine)

        channel.setMethodCallHandler { call, result ->


            if (call.method == "getContacts") {
//                val contact = Contact("1", "hola")
//                result.success(contact.toJson())


                runBlocking {
                    val contacts = ContactsService.fetchContacts(context)
                    val json = JSONObject()
                    contacts.forEach { json.accumulate("contacts", it.toJson()) }
                    result.success(json.toString())
                }


            } else {
                result.notImplemented()
            }

        }
    }

}
