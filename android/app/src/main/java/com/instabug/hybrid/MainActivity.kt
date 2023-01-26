package com.instabug.hybrid

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.instabug.crash.CrashReporting
import com.instabug.crash.models.IBGNonFatalException
import com.instabug.hybrid.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.buttonReactNative.setOnClickListener {
            val intent = Intent(this@MainActivity, ReactNativeAppActivity::class.java)
            startActivity(intent)
        }

        binding.buttonSettings.setOnClickListener {
            val intent = Intent(this@MainActivity, SettingsActivity::class.java)
            startActivity(intent)
        }

        binding.buttonHandled.setOnClickListener {
            val exception = IBGNonFatalException.Builder(Exception("Handled Kotlin Crash"))
                .setUserAttributes(mapOf("hello" to "world"))
                .setFingerprint("My Custom Fingerprint")
                .setLevel(IBGNonFatalException.Level.CRITICAL)
                .build()
            CrashReporting.report(exception)
        }

        binding.buttonUnhandled.setOnClickListener {
            throw Error("Unhandled Kotlin Crash")
        }
    }
}