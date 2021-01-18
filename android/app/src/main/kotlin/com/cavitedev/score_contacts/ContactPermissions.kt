package com.cavitedev.scorecontacts

import android.Manifest
import android.app.Activity
import android.content.pm.PackageManager
import android.os.Build
import kotlin.coroutines.Continuation
import kotlin.coroutines.resume

class ContactPermissions : Activity() {

    private val PERMISSIONS_REQUEST_READ_CONTACTS: Int = 100
    var continuation : Continuation<Boolean>? = null



    private fun requestContactPermissions(continuation : Continuation<Boolean>) {

        if(this.continuation != null) return
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if(
            checkSelfPermission(Manifest.permission.READ_CONTACTS) == PackageManager.PERMISSION_GRANTED
            && checkSelfPermission(Manifest.permission.WRITE_CONTACTS) == PackageManager.PERMISSION_GRANTED
            ){
                continuation.resume(true)
            }else{
                this.continuation = continuation
                requestPermissions(arrayOf(Manifest.permission.READ_CONTACTS, Manifest.permission.WRITE_CONTACTS),
                        PERMISSIONS_REQUEST_READ_CONTACTS)

            }

        }
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {

        if(requestCode == PERMISSIONS_REQUEST_READ_CONTACTS){

            continuation?.resume(true)
            continuation = null
        }

        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
    }

}