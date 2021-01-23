package com.cavitedev.score_contacts.permissions

sealed class PermissionResult {
    class Granted(val grantedPermissions: Collection<String>) : PermissionResult()
    sealed class Denied(val deniedPermissions: Collection<String>) : PermissionResult() {
        class JustDenied(deniedPermissions: Collection<String>) : Denied(deniedPermissions)
        class NeedsRationale(deniedPermissions: Collection<String>) : Denied(deniedPermissions)
        class DeniedPermanently(deniedPermissions: Collection<String>) : Denied(deniedPermissions)
    }
    object Cancelled : PermissionResult()
}