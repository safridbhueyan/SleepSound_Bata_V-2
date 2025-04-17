# Flutter wrapper
-keep class io.flutter.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugin.** { *; }
-dontwarn io.flutter.embedding.**

# Keep classes for flutter_local_notifications plugin
-keep class com.dexterous.flutterlocalnotifications.** { *; }
-keep class androidx.core.app.NotificationCompat { *; }
-keep class androidx.core.app.NotificationManagerCompat { *; }

# Prevent obfuscation of classes that might be referenced via reflection
-keep class * extends androidx.core.app.NotificationCompat$Extender { *; }
-keep class * extends androidx.core.app.NotificationCompat$Style { *; }

# Keep generic type parameters (to address "Missing type parameter" error)
-keepattributes Signature
-keepattributes *Annotation*

# Avoid issues with JSON serialization/deserialization (if used)
-keep class com.google.gson.** { *; }
-keep class org.json.** { *; }

# Standard AndroidX and support library rules
-keep class androidx.** { *; }
-dontwarn androidx.**

# Suppress warnings for libraries that might not be used directly
-dontwarn com.google.**
-dontwarn org.apache.**

# Keep the entire Android BroadcastReceiver and its subclasses
-keep class android.content.BroadcastReceiver { *; }
-keep class * extends android.content.BroadcastReceiver { *; }