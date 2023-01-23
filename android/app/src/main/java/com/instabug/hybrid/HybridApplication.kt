package com.instabug.hybrid

import android.app.Application
import android.util.Log
import com.instabug.library.Instabug
import com.instabug.library.LogLevel
import com.instabug.library.invocation.InstabugInvocationEvent

class HybridApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        Log.v("Instabug-Hybrid", "starting from native");
        Instabug.Builder(this, "f163dafcad22d79fb3653d3b6458729e")
            .setSdkDebugLogsLevel(LogLevel.VERBOSE)
            .setInvocationEvents(InstabugInvocationEvent.SHAKE, InstabugInvocationEvent.FLOATING_BUTTON)
            .build()
    }
}