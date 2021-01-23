package com.cavitedev.score_contacts.contacts

import android.Manifest
import android.app.Activity
import android.content.pm.PackageManager
import androidx.core.app.ActivityCompat
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry

class ContactMethodService (val activity: Activity) : MethodChannel.MethodCallHandler, PluginRegistry.RequestPermissionsResultListener{
    private val myPermissionCode = 72
    private var permissionGranted: Boolean = false
    private var currentActivity: Activity? = null

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        ActivityCompat.requestPermissions(activity,
                arrayOf(Manifest.permission.READ_CONTACTS),
                myPermissionCode )
        result.notImplemented()
    }

    override fun onRequestPermissionsResult( requestCode: Int,
                                             permissions: Array<out String>?,
                                             grantResults: IntArray?): Boolean {

        when (requestCode) {
            myPermissionCode -> {
                if ( null != grantResults ) {
                    permissionGranted = grantResults.isNotEmpty() &&
                            grantResults.get(0) == PackageManager.PERMISSION_GRANTED
                }

                return true
            }
        }
        return false
    }
}