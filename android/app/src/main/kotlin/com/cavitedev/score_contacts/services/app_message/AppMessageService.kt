package com.cavitedev.score_contacts.services.app_message

import android.content.ComponentName
import android.content.Context
import android.content.Intent
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

    private fun sendMessage(context: Context, phone: String, app: String) {

        val sendIntent = Intent(Intent.ACTION_MAIN)
        sendIntent.component = ComponentName(app, "$app.Conversation")
        sendIntent.putExtra("jid", PhoneNumberUtils.stripSeparators
        (phone.substring(1)).toString() + "@s.whatsapp.net")
        context.startActivity(sendIntent)

    }


}