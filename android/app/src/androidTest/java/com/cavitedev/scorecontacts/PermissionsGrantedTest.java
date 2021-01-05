package com.cavitedev.scorecontacts;

import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Build;

import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.rule.ActivityTestRule;
import dev.flutter.plugins.integration_test.FlutterTestRunner;

import org.junit.Assert;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import com.cavitedev.scorecontacts.MainActivity;

import static androidx.core.content.ContextCompat.checkSelfPermission;

@RunWith(JUnit4.class)
public class PermissionsGrantedTest {
    @Rule
    public ActivityTestRule<MainActivity> rule = new ActivityTestRule<>(MainActivity.class, true, false);

    @Test
    public void afterInitHasReadAndWriteContactsPermission(){
//        Assert.assertTrue(true);
        Assert.assertTrue(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M);
        Assert.assertEquals(checkSelfPermission(InstrumentationRegistry.getInstrumentation().getTargetContext(),
                Manifest.permission.READ_CONTACTS), PackageManager.PERMISSION_GRANTED);
        Assert.assertEquals(checkSelfPermission(InstrumentationRegistry.getInstrumentation().getTargetContext(),
                Manifest.permission.WRITE_CONTACTS), PackageManager.PERMISSION_GRANTED);
            //callback onRequestPermissionsResult

    }

}
