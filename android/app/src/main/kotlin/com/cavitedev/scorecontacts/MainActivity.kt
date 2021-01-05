package com.cavitedev.scorecontacts

import android.Manifest
import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {

    private val PERMISSIONS_REQUEST_READ_CONTACTS: Int = 100


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        requestPermissions()
        (super.onCreate(savedInstanceState, persistentState))
    }



    private fun requestPermissions(){
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ){
            requestPermissions(arrayOf(Manifest.permission.READ_CONTACTS, Manifest.permission.WRITE_CONTACTS),
                    PERMISSIONS_REQUEST_READ_CONTACTS)
        }


    }



}
