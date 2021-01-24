package com.cavitedev.score_contacts.core

import android.content.Context
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.*

object RegionService {

    private val REGION_CHANNEL = "com.cavitedev.scorecontacts/region"

    fun setGetRegionChannel(flutterEngine: FlutterEngine, context: Context){
        val regionChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, REGION_CHANNEL)

        regionChannel.setMethodCallHandler { call, result ->

            if (call.method == "getSystemRegion") {
                val region = getRegion(context)
                result.success(region)
            }else{
                result.notImplemented()
            }

        }

    }

    fun getRegion(context: Context) : String{

        return if(MIUIDevice.isMIUI(context)){
            MIUIDevice.getRegion()
        }else{
            Locale.getDefault().country
        }

    }


}