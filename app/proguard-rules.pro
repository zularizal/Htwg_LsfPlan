# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in I:\Programme\AndroidSDK/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-dontobfuscate

-keep class .R
-keep class **.R$* {
    <fields>;
}

#  proguard-rules-ical4j.txt
#

###############
# ical4j also contains groovy code which is not used in android
-dontwarn aQute.bnd.**
-dontwarn groovy.**
-dontwarn groovyjarjarasm.**
-dontwarn groovyjarjarantlr.**
-dontwarn org.codehaus.groovy.**
-dontwarn org.slf4j.**

-keep class net.fortuna.ical4j.validate.**
-keep class net.fortuna.ical4j.model.**

###############
# Get rid of #can't find referenced method in library class java.lang.Object# warnings for clone() and finalize()
# Warning: net.fortuna.ical4j.model.CalendarFactory: can't find referenced method 'void finalize()' in library class java.lang.Object
# Warning: net.fortuna.ical4j.model.ContentBuilder: can't find referenced method 'java.lang.Object clone()' in library class java.lang.Object
# for details see http://stackoverflow.com/questions/23883028/how-to-fix-proguard-warning-cant-find-referenced-method-for-existing-methods
-dontwarn net.fortuna.ical4j.model.**

-dontwarn sun.misc.Perf


-keep class org.apache.commons.logging.** { *; }

-dontwarn javax.xml.stream.events.**
-dontwarn org.codehaus.jackson.**
-dontwarn org.apache.commons.logging.impl.**
-dontwarn org.apache.http.conn.scheme.**