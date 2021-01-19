package com.cavitedev.scorecontacts

import android.Manifest
import android.os.Bundle
import android.os.PersistableBundle
import androidx.fragment.app.Fragment
import com.cavitedev.score_contacts.Permissions.PermissionManager
import com.cavitedev.score_contacts.Permissions.PermissionResult
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import kotlinx.coroutines.runBlocking

class MainActivity : FlutterFragmentActivity() {
    private val CONTACTS_CHANNEL = "com.cavitedev.scorecontacts/contacts"


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        (super.onCreate(savedInstanceState, persistentState))
    }




    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        val channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CONTACTS_CHANNEL)

        super.configureFlutterEngine(flutterEngine)

        channel.setMethodCallHandler { call, result ->


            if (call.method == "getContacts") {




                runBlocking {



                    PermissionManager.requestPermissions(supportFragmentManager,1, Manifest.permission.READ_CONTACTS)
                    val contacts = ContactsService.fetchContacts(baseContext)
                    val json = Contact.multipleToJson(contacts)
                    result.success(json.toString())
                }


            } else {
                result.notImplemented()
            }

        }
    }



}
