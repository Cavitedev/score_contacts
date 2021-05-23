package com.cavitedev.score_contacts.services.region

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader

object MIUIDevice {
    private fun isIntentResolved(ctx: Context, intent: Intent?): Boolean {
        return intent != null && ctx.packageManager.resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY) != null
    }

    fun isMIUI(ctx: Context): Boolean {
        return (isIntentResolved(ctx, Intent("miui.intent.action.OP_AUTO_START").addCategory(Intent.CATEGORY_DEFAULT))
                || isIntentResolved(ctx, Intent().setComponent(ComponentName("com.miui.securitycenter", "com.miui.permcenter.autostart.AutoStartManagementActivity")))
                || isIntentResolved(ctx, Intent("miui.intent.action.POWER_HIDE_MODE_APP_LIST").addCategory(Intent.CATEGORY_DEFAULT))
                || isIntentResolved(ctx, Intent().setComponent(ComponentName("com.miui.securitycenter", "com.miui.powercenter.PowerSettings"))))
    }

    fun getRegion(): String {
        var ifc: Process? = null
        return try {
            ifc = Runtime.getRuntime().exec(arrayOf("/system/bin/getprop", "ro.miui.region"))
            val bis = BufferedReader(InputStreamReader(ifc.inputStream))
            bis.readLine()
        } catch (e: IOException) {
            "US"
        } finally {
            ifc?.destroy()
        }
    }
}