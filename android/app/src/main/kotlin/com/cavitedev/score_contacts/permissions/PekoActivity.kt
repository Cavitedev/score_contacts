package com.cavitedev.score_contacts.permissions

import android.os.Bundle
import android.view.WindowManager
import androidx.core.app.ActivityCompat
import androidx.core.content.PermissionChecker
import androidx.fragment.app.FragmentActivity
import androidx.lifecycle.ViewModelProvider
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.channels.ReceiveChannel

internal class PekoActivity : FragmentActivity(),
		ActivityCompat.OnRequestPermissionsResultCallback,
		PermissionRequester {

	private lateinit var viewModel: PekoViewModel

	override val resultsChannel: ReceiveChannel<PermissionResult>
		get() = viewModel.channel

	override fun onCreate(savedInstanceState: Bundle?) {
		super.onCreate(savedInstanceState)
		window.addFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE)

		viewModel = ViewModelProvider(this@PekoActivity, ViewModelProvider.NewInstanceFactory()).get(PekoViewModel::class.java)
	}

	override fun onPostCreate(savedInstanceState: Bundle?) {
		super.onPostCreate(savedInstanceState)
		requesterDeferred?.complete(this)
		requesterDeferred = null
	}

	override fun requestPermissions(permissions: Array<out String>) {
		ActivityCompat.requestPermissions(this@PekoActivity, permissions, REQUEST_CODE)
	}

	override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
		super.onRequestPermissionsResult(requestCode, permissions, grantResults)
		if (requestCode == REQUEST_CODE) {
			val grantedPermissions = ArrayList<String>()
			val deniedPermissions = ArrayList<String>()
			for (i in permissions.indices) {
				val permission = permissions[i]
				when (grantResults[i]) {
					PermissionChecker.PERMISSION_DENIED,
					PermissionChecker.PERMISSION_DENIED_APP_OP -> deniedPermissions.add(permission)
					PermissionChecker.PERMISSION_GRANTED -> grantedPermissions.add(permission)
				}
			}
			val needsRationale = deniedPermissions.any { p -> ActivityCompat.shouldShowRequestPermissionRationale(this, p) }
			val doNotAskAgain = deniedPermissions.isNotEmpty() && !needsRationale
			viewModel.channel.offer(
					when {
						permissions.isEmpty() -> PermissionResult.Cancelled
						deniedPermissions.isEmpty() -> PermissionResult.Granted(grantedPermissions)
						needsRationale -> PermissionResult.Denied.NeedsRationale(deniedPermissions)
						doNotAskAgain -> PermissionResult.Denied.DeniedPermanently(deniedPermissions)
						else -> PermissionResult.Denied.JustDenied(deniedPermissions)
					})
		}
	}

	override fun finish() {
		super.finish()
		viewModel.channel.close()
		requesterDeferred = null
	}

	companion object {
		private const val REQUEST_CODE = 931
		internal var requesterDeferred: CompletableDeferred<PermissionRequester>? = null
	}
}