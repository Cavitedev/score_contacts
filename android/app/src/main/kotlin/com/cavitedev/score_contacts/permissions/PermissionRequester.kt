package com.cavitedev.score_contacts.permissions

import kotlinx.coroutines.channels.ReceiveChannel

internal interface PermissionRequester {
	fun requestPermissions(permissions: Array<out String>)
	fun finish()
	val resultsChannel: ReceiveChannel<PermissionResult>
}
