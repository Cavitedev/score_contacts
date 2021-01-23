package com.cavitedev.scorecontacts

import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import androidx.annotation.RequiresApi
import com.cavitedev.score_contacts.contacts.ContactsService
import com.cavitedev.score_contacts.core.RegionService
import com.cavitedev.score_contacts.permissions.PermissionManager
import com.cavitedev.score_contacts.permissions.PermissionResult
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

class MainActivity : FlutterFragmentActivity() {


    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        (super.onCreate(savedInstanceState, persistentState))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)



        RegionService.setGetRegionChannel(flutterEngine, this)
        ContactsService.setLoadContactsChannel(flutterEngine, this)


    }


    @RequiresApi(Build.VERSION_CODES.M)
    suspend fun requestPermissionsAsync(
            requestId: Int,
            vararg permissions: String
    ): PermissionResult {

        return withContext(Dispatchers.Default){
            completableDeferred = CompletableDeferred()
            requestPermissions(permissions, requestId)
             completableDeferred.await()
        }


    }


    private lateinit var completableDeferred: CompletableDeferred<PermissionResult>

    private fun onPermissionResult(permissionResult: PermissionResult) {
        if (::completableDeferred.isInitialized) {
            completableDeferred.complete(permissionResult)
        }
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            when {
                areAllPermissionsGranted(grantResults) -> {
                    onPermissionResult(PermissionResult.PermissionGranted(requestCode))
                }
                doesNeedToShowRationale(permissions) -> {
                    onPermissionResult(
                            PermissionResult.PermissionDenied(requestCode,
                                    deniedPermissions(permissions, grantResults)
                            )
                    )
                }
                else -> {
                    onPermissionResult(
                            PermissionResult.PermissionDeniedPermanently(requestCode,
                                    deniedPermissions(permissions, grantResults)
                            ))
                }
            }
        }
    }

    @RequiresApi(Build.VERSION_CODES.M)
    private fun doesNeedToShowRationale(permissions: Array<out String>) =
            permissions.any { shouldShowRequestPermissionRationale(it) }

    private fun deniedPermissions(permissions: Array<out String>, grantResults: IntArray) =
            permissions.filterIndexed { index, _ ->
                grantResults[index] == PackageManager.PERMISSION_DENIED
            }

    private fun areAllPermissionsGranted(grantResults: IntArray) = grantResults.isNotEmpty() &&
            grantResults.all { it == PackageManager.PERMISSION_GRANTED }


    override fun onDestroy() {
        super.onDestroy()
        if (completableDeferred.isActive) {
            completableDeferred.cancel()
        }
    }


}
