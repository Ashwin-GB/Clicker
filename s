[1mdiff --git a/android/gradle.properties b/android/gradle.properties[m
[1mindex e097963..e60119f 100644[m
[1m--- a/android/gradle.properties[m
[1m+++ b/android/gradle.properties[m
[36m@@ -1,4 +1,4 @@[m
[31m-org.gradle.jvmargs=-Xmx4608m[m
[32m+[m[32morg.gradle.jvmargs=-Xmx1536M[m
 android.useAndroidX=true[m
 android.enableJetifier=true[m
 [m
[1mdiff --git a/lib/features/presentation/pages/login.dart b/lib/features/presentation/pages/login.dart[m
[1mindex cfad3a6..ae42e7d 100644[m
[1m--- a/lib/features/presentation/pages/login.dart[m
[1m+++ b/lib/features/presentation/pages/login.dart[m
[36m@@ -1,7 +1,5 @@[m
 [m
 import 'package:flutter/material.dart';[m
[31m-import 'package:flutter_appwrite/features/presentation/notifiers/authstate.dart';[m
[31m-import 'package:provider/provider.dart';[m
 [m
 class LoginPage extends StatefulWidget{[m
   @override[m
[36m@@ -46,9 +44,6 @@[m [mclass _LoginPageState extends State<LoginPage> {[m
           Center([m
             child:            ElevatedButton([m
                 onPressed: (){[m
[31m-                AuthState state = Provider.of<AuthState>(context,listen:[m
[31m-                false);[m
[31m-                state.login(_email.text, _password.text);[m
                 },[m
                 child: Text("Login"))[m
 [m
[1mdiff --git a/linux/flutter/generated_plugin_registrant.cc b/linux/flutter/generated_plugin_registrant.cc[m
[1mindex 25f9f58..e71a16d 100644[m
[1m--- a/linux/flutter/generated_plugin_registrant.cc[m
[1m+++ b/linux/flutter/generated_plugin_registrant.cc[m
[36m@@ -6,14 +6,6 @@[m
 [m
 #include "generated_plugin_registrant.h"[m
 [m
[31m-#include <url_launcher_linux/url_launcher_plugin.h>[m
[31m-#include <window_to_front/window_to_front_plugin.h>[m
 [m
 void fl_register_plugins(FlPluginRegistry* registry) {[m
[31m-  g_autoptr(FlPluginRegistrar) url_launcher_linux_registrar =[m
[31m-      fl_plugin_registry_get_registrar_for_plugin(registry, "UrlLauncherPlugin");[m
[31m-  url_launcher_plugin_register_with_registrar(url_launcher_linux_registrar);[m
[31m-  g_autoptr(FlPluginRegistrar) window_to_front_registrar =[m
[31m-      fl_plugin_registry_get_registrar_for_plugin(registry, "WindowToFrontPlugin");[m
[31m-  window_to_front_plugin_register_with_registrar(window_to_front_registrar);[m
 }[m
[1mdiff --git a/linux/flutter/generated_plugins.cmake b/linux/flutter/generated_plugins.cmake[m
[1mindex e9e5df3..2e1de87 100644[m
[1m--- a/linux/flutter/generated_plugins.cmake[m
[1m+++ b/linux/flutter/generated_plugins.cmake[m
[36m@@ -3,8 +3,6 @@[m
 #[m
 [m
 list(APPEND FLUTTER_PLUGIN_LIST[m
[31m-  url_launcher_linux[m
[31m-  window_to_front[m
 )[m
 [m
 list(APPEND FLUTTER_FFI_PLUGIN_LIST[m
[1mdiff --git a/macos/Flutter/GeneratedPluginRegistrant.swift b/macos/Flutter/GeneratedPluginRegistrant.swift[m
[1mindex d51ede4..cccf817 100644[m
[1m--- a/macos/Flutter/GeneratedPluginRegistrant.swift[m
[1m+++ b/macos/Flutter/GeneratedPluginRegistrant.swift[m
[36m@@ -5,18 +5,6 @@[m
 import FlutterMacOS[m
 import Foundation[m
 [m
[31m-import device_info_plus[m
[31m-import flutter_web_auth_2[m
[31m-import package_info_plus[m
[31m-import path_provider_foundation[m
[31m-import url_launcher_macos[m
[31m-import window_to_front[m
 [m
 func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {[m
[31m-  DeviceInfoPlusMacosPlugin.register(with: registry.registrar(forPlugin: "DeviceInfoPlusMacosPlugin"))[m
[31m-  FlutterWebAuth2Plugin.register(with: registry.registrar(forPlugin: "FlutterWebAuth2Plugin"))[m
[31m-  FLTPackageInfoPlusPlugin.register(with: registry.registrar(forPlugin: "FLTPackageInfoPlusPlugin"))[m
[31m-  PathProviderPlugin.register(with: registry.registrar(forPlugin: "PathProviderPlugin"))[m
[31m-  UrlLauncherPlugin.register(with: registry.registrar(forPlugin: "UrlLauncherPlugin"))[m
[31m-  WindowToFrontPlugin.register(with: registry.registrar(forPlugin: "WindowToFrontPlugin"))[m
 }[m
[1mdiff --git a/pubspec.lock b/pubspec.lock[m
[1min