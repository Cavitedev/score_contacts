package com.cavitedev.score_contacts

import android.os.Bundle
import android.os.PersistableBundle
import com.cavitedev.score_contacts.services.app_message.AppMessageService
import com.cavitedev.score_contacts.services.region.RegionService
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        (super.onCreate(savedInstanceState, persistentState))

    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        RegionService.setGetRegionChannel(flutterEngine, this)
        AppMessageService.setAppMessageChannel(flutterEngine, this)

    }





}
