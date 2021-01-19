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

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext


class PermissionManager : BasePermissionManager() {


    private lateinit var completableDeferred: CompletableDeferred<PermissionResult>

    override fun onPermissionResult(permissionResult: PermissionResult) {
        completableDeferred.complete(permissionResult)
    }

    companion object {

        private const val TAG = "PermissionManager"


        suspend fun requestPermissions(
                fragment: Fragment,
                requestId: Int,
                vararg permissions: String
        ): PermissionResult {
            return withContext(Dispatchers.Main) {
                return@withContext requestPermissions(
                        fragment.childFragmentManager,
                        requestId,
                        *permissions
                )
            }
        }



        suspend fun requestPermissions(
                fragmentManager: FragmentManager,
                requestId: Int,
                vararg permissions: String
        ): PermissionResult {

            return if (fragmentManager.findFragmentByTag(TAG) != null) {
                val permissionManager = fragmentManager.findFragmentByTag(TAG) as PermissionManager
                permissionManager.completableDeferred = CompletableDeferred()
                permissionManager.requestPermissionsIfNotGranted(
                        requestId,
                        *permissions
                )
                permissionManager.completableDeferred.await()
            } else {
                val permissionManager = PermissionManager().apply {
                    completableDeferred = CompletableDeferred()
                }
                fragmentManager.beginTransaction().add(
                        permissionManager,
                        TAG
                ).commitNow()
                permissionManager.requestPermissionsIfNotGranted(requestId, *permissions)
                permissionManager.completableDeferred.await()
            }

        }
    }

    override fun onDestroy() {
        super.onDestroy()
        if (completableDeferred.isActive) {
            completableDeferred.cancel()
        }
    }


}