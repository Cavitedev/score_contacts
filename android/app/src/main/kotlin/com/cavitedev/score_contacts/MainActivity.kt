package com.cavitedev.scorecontacts

import android.os.Bundle
import android.os.PersistableBundle
import com.cavitedev.score_contacts.contacts.ContactsService
import com.cavitedev.score_contacts.core.RegionService
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterFragmentActivity() {


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        (super.onCreate(savedInstanceState, persistentState))
    }




    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        RegionService.setGetRegionChannel(flutterEngine, this)
        ContactsService.setLoadContactsChannel(flutterEngine, this)


    }




}
