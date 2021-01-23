package com.cavitedev.score_contacts.permissions

import androidx.lifecycle.ViewModel
import kotlinx.coroutines.channels.Channel

internal class PekoViewModel : ViewModel() {
    val channel = Channel<PermissionResult>(Channel.UNLIMITED)

    override fun onCleared() {
        super.onCleared()
        channel.close()
    }
}