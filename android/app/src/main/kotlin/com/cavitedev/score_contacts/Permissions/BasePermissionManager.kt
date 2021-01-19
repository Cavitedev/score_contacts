/*
 * Copyright 2019 Sagar Viradiya
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cavitedev.score_contacts.Permissions

import android.content.pm.PackageManager
import android.os.Bundle
import androidx.core.content.ContextCompat
import androidx.fragment.app.Fragment

abstract class BasePermissionManager : Fragment() {


    protected abstract fun onPermissionResult(permissionResult: PermissionResult)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        retainInstance = true
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
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

    private fun deniedPermissions(permissions: Array<out String>, grantResults: IntArray) =
            permissions.filterIndexed { index, _ ->
                grantResults[index] == PackageManager.PERMISSION_DENIED
            }

    private fun areAllPermissionsGranted(grantResults: IntArray) = grantResults.isNotEmpty() &&
            grantResults.all { it == PackageManager.PERMISSION_GRANTED }


    protected fun requestPermissionsIfNotGranted(id: Int, vararg permissions: String) {

        val notYetGrantedPermissions = permissions.filter {
            ContextCompat.checkSelfPermission(requireActivity(), it) != PackageManager.PERMISSION_GRANTED
        }.toTypedArray()

        when {
            notYetGrantedPermissions.isEmpty() ->
                onPermissionResult(PermissionResult.PermissionGranted(id))
            doesNeedToShowRationale(notYetGrantedPermissions) ->
                onPermissionResult(PermissionResult.ShowRational(id))
            else -> {
                requestPermissions(notYetGrantedPermissions, id)
            }
        }


    }

    private fun doesNeedToShowRationale(permissions: Array<out String>) =
            permissions.any { shouldShowRequestPermissionRationale(it) }



}
