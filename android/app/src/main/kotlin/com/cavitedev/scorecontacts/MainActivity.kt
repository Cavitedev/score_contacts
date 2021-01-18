package com.cavitedev.scorecontacts

import android.Manifest
import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.runBlocking

class MainActivity : FlutterActivity() {
    private val CONTACTS_CHANNEL = "com.cavitedev.scorecontacts/contacts"


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        (super.onCreate(savedInstanceState, persistentState))
    }




    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        val channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CONTACTS_CHANNEL)

        super.configureFlutterEngine(flutterEngine)

        channel.setMethodCallHandler { call, result ->


            if (call.method == "getContacts") {
                requestPermissions();

                runBlocking {
                    val contacts = ContactsService.fetchContacts(context)
                    val json = Contact.multipleToJson(contacts)
                    result.success(json.toString())
                }


            } else {
                result.notImplemented()
            }

        }
    }



}
