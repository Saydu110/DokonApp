; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [398 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1194 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 354
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 270
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x02123411c4e01926, ; 4: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 259
	i64 u0x0284512fad379f7e, ; 5: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 6: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 7: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 8: lib_Xamarin.AndroidX.AppCompat.dll.so => 213
	i64 u0x03621c804933a890, ; 9: System.Buffers => 7
	i64 u0x0399610510a38a38, ; 10: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x043032f1d071fae0, ; 11: ru/Microsoft.Maui.Controls.resources => 384
	i64 u0x044440a55165631e, ; 12: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 362
	i64 u0x046eb1581a80c6b0, ; 13: vi/Microsoft.Maui.Controls.resources => 390
	i64 u0x047408741db2431a, ; 14: Xamarin.AndroidX.DynamicAnimation => 233
	i64 u0x04acae429ea0efac, ; 15: Xamarin.Grpc.Context => 338
	i64 u0x0514f1a3ae77a228, ; 16: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 348
	i64 u0x0517ef04e06e9f76, ; 17: System.Net.Primitives => 71
	i64 u0x051a3be159e4ef99, ; 18: Xamarin.GooglePlayServices.Tasks => 335
	i64 u0x0565d18c6da3de38, ; 19: Xamarin.AndroidX.RecyclerView => 263
	i64 u0x0580fcad5f8dc5ac, ; 20: lib_Xamarin.Google.Dagger.dll.so => 317
	i64 u0x0581db89237110e9, ; 21: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 22: Microsoft.Maui.dll => 186
	i64 u0x05a1c25e78e22d87, ; 23: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x06076b5d2b581f08, ; 24: zh-HK/Microsoft.Maui.Controls.resources => 391
	i64 u0x06388ffe9f6c161a, ; 25: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 26: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 27: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 238
	i64 u0x0680a433c781bb3d, ; 28: Xamarin.AndroidX.Collection.Jvm => 220
	i64 u0x069fff96ec92a91d, ; 29: System.Xml.XPath.dll => 161
	i64 u0x070b0847e18dab68, ; 30: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 235
	i64 u0x071cdb5520b57ab2, ; 31: lib_Plugin.Firebase.RemoteConfig.dll.so => 199
	i64 u0x0739448d84d3b016, ; 32: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 273
	i64 u0x07469f2eecce9e85, ; 33: mscorlib.dll => 167
	i64 u0x07555d967851701d, ; 34: Xamarin.Firebase.Storage.Common.dll => 308
	i64 u0x07c57877c7ba78ad, ; 35: ru/Microsoft.Maui.Controls.resources.dll => 384
	i64 u0x07dcdc7460a0c5e4, ; 36: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 37: lib_Microsoft.Extensions.Logging.Debug.dll.so => 181
	i64 u0x088610fc2509f69e, ; 38: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 274
	i64 u0x08a7c865576bbde7, ; 39: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 40: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 230
	i64 u0x08f3c9788ee2153c, ; 41: Xamarin.AndroidX.DrawerLayout => 232
	i64 u0x09076b821f278db5, ; 42: Xamarin.Google.Dagger => 317
	i64 u0x09138715c92dba90, ; 43: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 44: lib_Microsoft.Extensions.Options.dll.so => 182
	i64 u0x092266563089ae3e, ; 45: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x098b50f911ccea8d, ; 46: lib_Xamarin.GooglePlayServices.Basement.dll.so => 326
	i64 u0x09d144a7e214d457, ; 47: System.Security.Cryptography => 127
	i64 u0x09da6dfc3439e851, ; 48: lib_Xamarin.Firebase.Components.dll.so => 289
	i64 u0x09e2b9f743db21a8, ; 49: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0a76609879dc4df2, ; 50: Plugin.Firebase.Storage.dll => 200
	i64 u0x0abb3e2b271edc45, ; 51: System.Threading.Channels.dll => 140
	i64 u0x0b06b1feab070143, ; 52: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 53: sk/Microsoft.Maui.Controls.resources => 385
	i64 u0x0b521223ae889727, ; 54: Xamarin.Firebase.Messaging => 305
	i64 u0x0b6aff547b84fbe9, ; 55: Xamarin.KotlinX.Serialization.Core.Jvm => 358
	i64 u0x0be2e1f8ce4064ed, ; 56: Xamarin.AndroidX.ViewPager => 276
	i64 u0x0c3ca6cc978e2aae, ; 57: pt-BR/Microsoft.Maui.Controls.resources => 381
	i64 u0x0c59ad9fbbd43abe, ; 58: Mono.Android => 172
	i64 u0x0c65741e86371ee3, ; 59: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 207
	i64 u0x0c74af560004e816, ; 60: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 61: lib_Microsoft.Maui.Essentials.dll.so => 187
	i64 u0x0c83c82812e96127, ; 62: lib_System.Net.Mail.dll.so => 67
	i64 u0x0cce4bce83380b7f, ; 63: Xamarin.AndroidX.Security.SecurityCrypto => 267
	i64 u0x0d13cd7cce4284e4, ; 64: System.Security.SecureString => 130
	i64 u0x0d63f4f73521c24f, ; 65: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 266
	i64 u0x0df310f37bf4881f, ; 66: lib_Xamarin.Firebase.Storage.Common.dll.so => 308
	i64 u0x0e04e702012f8463, ; 67: Xamarin.AndroidX.Emoji2 => 234
	i64 u0x0e14e73a54dda68e, ; 68: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0e5f1ca7132adebb, ; 69: Xamarin.Firebase.Installations.dll => 302
	i64 u0x0f37dd7a62ae99af, ; 70: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 221
	i64 u0x0f5e7abaa7cf470a, ; 71: System.Net.HttpListener => 66
	i64 u0x0fcf2ab35058c989, ; 72: Plugin.Firebase.DynamicLinks.dll => 196
	i64 u0x1001f97bbe242e64, ; 73: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 74: Xamarin.AndroidX.CustomView => 229
	i64 u0x1065c4cb554c3d75, ; 75: System.IO.IsolatedStorage.dll => 52
	i64 u0x10f6cfcbcf801616, ; 76: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 77: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 78: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 79: System.Net.WebSockets.dll => 81
	i64 u0x11f26371eee0d3c1, ; 80: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 249
	i64 u0x11fbe62d469cc1c8, ; 81: Microsoft.VisualStudio.DesignTools.TapContract.dll => 396
	i64 u0x12128b3f59302d47, ; 82: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 83: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 84: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 85: Xamarin.AndroidX.RecyclerView.dll => 263
	i64 u0x12d3b63863d4ab0b, ; 86: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x12db68ac7e4d099f, ; 87: lib_Xamarin.Firebase.Iid.dll.so => 300
	i64 u0x134eab1061c395ee, ; 88: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 89: Xamarin.AndroidX.Browser => 217
	i64 u0x13a01de0cbc3f06c, ; 90: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 368
	i64 u0x13beedefb0e28a45, ; 91: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 92: lib_Java.Interop.dll.so => 169
	i64 u0x13f1e880c25d96d1, ; 93: he/Microsoft.Maui.Controls.resources => 369
	i64 u0x1403071365bcd83a, ; 94: Xamarin.Firebase.Annotations => 283
	i64 u0x142d604b786f5eb8, ; 95: lib_Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll.so => 280
	i64 u0x143d8ea60a6a4011, ; 96: Microsoft.Extensions.DependencyInjection.Abstractions => 178
	i64 u0x1497051b917530bd, ; 97: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14a644965fc9a91b, ; 98: Xamarin.Google.Android.Recaptcha.dll => 314
	i64 u0x14b78ce3adce0011, ; 99: Microsoft.VisualStudio.DesignTools.TapContract => 396
	i64 u0x14e68447938213b7, ; 100: Xamarin.AndroidX.Collection.Ktx.dll => 221
	i64 u0x152a448bd1e745a7, ; 101: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 102: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 103: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 104: System.Resources.Writer.dll => 101
	i64 u0x16726eac78495e6d, ; 105: Xamarin.Grpc.Stub => 342
	i64 u0x16b1b4f3fc11f978, ; 106: Xamarin.GooglePlayServices.Measurement => 328
	i64 u0x16bf2a22df043a09, ; 107: System.IO.Pipes.dll => 56
	i64 u0x16c1af7a51a0334a, ; 108: lib_Xamarin.GooglePlayServices.Measurement.Base.dll.so => 330
	i64 u0x16ea2b318ad2d830, ; 109: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 110: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 111: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 112: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x174f71c46216e44a, ; 113: Xamarin.KotlinX.Coroutines.Core => 354
	i64 u0x1752c12f1e1fc00c, ; 114: System.Core => 21
	i64 u0x17b56e25558a5d36, ; 115: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 372
	i64 u0x17f9358913beb16a, ; 116: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 117: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18402a709e357f3b, ; 118: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 358
	i64 u0x18a9befae51bb361, ; 119: System.Net.WebClient => 77
	i64 u0x18f0ce884e87d89a, ; 120: nb/Microsoft.Maui.Controls.resources.dll => 378
	i64 u0x193d7a04b7eda8bc, ; 121: lib_Xamarin.AndroidX.Print.dll.so => 261
	i64 u0x19777fba3c41b398, ; 122: Xamarin.AndroidX.Startup.StartupRuntime.dll => 269
	i64 u0x19a4c090f14ebb66, ; 123: System.Security.Claims => 119
	i64 u0x1a03fc927e6891b9, ; 124: Xamarin.GooglePlayServices.Measurement.Base => 330
	i64 u0x1a91866a319e9259, ; 125: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 126: lib_System.dll.so => 165
	i64 u0x1aad60783ffa3e5b, ; 127: lib-th-Microsoft.Maui.Controls.resources.dll.so => 387
	i64 u0x1aea8f1c3b282172, ; 128: lib_System.Net.Ping.dll.so => 70
	i64 u0x1b4b7a1d0d265fa2, ; 129: Xamarin.Android.Glide.DiskLruCache => 206
	i64 u0x1bbdb16cfa73e785, ; 130: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 250
	i64 u0x1bc766e07b2b4241, ; 131: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 264
	i64 u0x1bf5791bb4435277, ; 132: lib_Xamarin.GoogleAndroid.Annotations.dll.so => 322
	i64 u0x1c753b5ff15bce1b, ; 133: Mono.Android.Runtime.dll => 171
	i64 u0x1c7cbc0ecd18cdaf, ; 134: Xamarin.Firebase.Encoders.dll => 295
	i64 u0x1cd47467799d8250, ; 135: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 136: System.Globalization.Calendars.dll => 40
	i64 u0x1d33fb39b11be1fe, ; 137: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 280
	i64 u0x1da4110562816681, ; 138: Xamarin.AndroidX.Security.SecurityCrypto.dll => 267
	i64 u0x1db6820994506bf5, ; 139: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 140: System.Diagnostics.StackTrace => 30
	i64 u0x1dcda680b17dc5bb, ; 141: lib_Xamarin.Google.Guava.FailureAccess.dll.so => 320
	i64 u0x1e0486c615e0dc7e, ; 142: Xamarin.Firebase.Dynamic.Links => 294
	i64 u0x1e3d87657e9659bc, ; 143: Xamarin.AndroidX.Navigation.UI => 260
	i64 u0x1e71143913d56c10, ; 144: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 376
	i64 u0x1e7c31185e2fb266, ; 145: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1e8303b9cb0977f2, ; 146: Xamarin.Firebase.Functions.dll => 299
	i64 u0x1ed8fcce5e9b50a0, ; 147: Microsoft.Extensions.Options.dll => 182
	i64 u0x1f055d15d807e1b2, ; 148: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 149: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 150: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 151: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 271
	i64 u0x1fc1a401201d7356, ; 152: Xamarin.Google.Dagger.dll => 317
	i64 u0x20237ea48006d7a8, ; 153: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 154: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 155: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 156: System.Globalization => 42
	i64 u0x21419508838f7547, ; 157: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2141deb83566de9d, ; 158: lib_Square.OkHttp3.dll.so => 201
	i64 u0x2174319c0d835bc9, ; 159: System.Runtime => 117
	i64 u0x218ae22aa3ec33e7, ; 160: Xamarin.Grpc.Protobuf.Lite.dll => 341
	i64 u0x2198e5bc8b7153fa, ; 161: Xamarin.AndroidX.Annotation.Experimental.dll => 211
	i64 u0x219ea1b751a4dee4, ; 162: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 163: System.Reflection.Emit.ILGeneration => 91
	i64 u0x220fd4f2e7c48170, ; 164: th/Microsoft.Maui.Controls.resources => 387
	i64 u0x224538d85ed15a82, ; 165: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 166: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22fbc14e981e3b45, ; 167: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 395
	i64 u0x2347c268e3e4e536, ; 168: Xamarin.GooglePlayServices.Basement.dll => 326
	i64 u0x237be844f1f812c7, ; 169: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 170: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 171: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x23bbd31edb1647bc, ; 172: lib_Plugin.Firebase.Core.dll.so => 194
	i64 u0x2407aef2bbe8fadf, ; 173: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 174: Xamarin.AndroidX.Core.dll => 226
	i64 u0x247619fe4413f8bf, ; 175: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x24b87318591adabe, ; 176: lib_Xamarin.Firebase.Database.Collection.dll.so => 292
	i64 u0x24de8d301281575e, ; 177: Xamarin.Android.Glide => 204
	i64 u0x252073cc3caa62c2, ; 178: fr/Microsoft.Maui.Controls.resources.dll => 368
	i64 u0x256b8d41255f01b1, ; 179: Xamarin.Google.Crypto.Tink.Android => 316
	i64 u0x25da9c898b4437a3, ; 180: Xamarin.Google.Android.Play.Integrity => 313
	i64 u0x25ffffb1789c4579, ; 181: Plugin.Firebase.Core => 194
	i64 u0x2662c629b96b0b30, ; 182: lib_Xamarin.Kotlin.StdLib.dll.so => 347
	i64 u0x268c1439f13bcc29, ; 183: lib_Microsoft.Extensions.Primitives.dll.so => 183
	i64 u0x26918e5f13c8fc7c, ; 184: Xamarin.Firebase.Firestore => 298
	i64 u0x26a670e154a9c54b, ; 185: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 186: System.IO.dll => 58
	i64 u0x273f3515de5faf0d, ; 187: id/Microsoft.Maui.Controls.resources.dll => 373
	i64 u0x2742545f9094896d, ; 188: hr/Microsoft.Maui.Controls.resources => 371
	i64 u0x2759af78ab94d39b, ; 189: System.Net.WebSockets => 81
	i64 u0x27b2b16f3e9de038, ; 190: Xamarin.Google.Crypto.Tink.Android.dll => 316
	i64 u0x27b410442fad6cf1, ; 191: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 192: System.Diagnostics.Debug => 26
	i64 u0x27c1227907352196, ; 193: lib_Xamarin.Firebase.Installations.InterOp.dll.so => 303
	i64 u0x27d88445c936a1af, ; 194: lib_Xamarin.Grpc.Android.dll.so => 336
	i64 u0x27eb21c6eb99d774, ; 195: Xamarin.Kotlin.StdLib.Jdk8.dll => 350
	i64 u0x2801845a2c71fbfb, ; 196: System.Net.Primitives.dll => 71
	i64 u0x28457a8c23b2a129, ; 197: Xamarin.Firebase.Iid => 300
	i64 u0x286835e259162700, ; 198: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 262
	i64 u0x2949f3617a02c6b2, ; 199: Xamarin.AndroidX.ExifInterface => 236
	i64 u0x29f947844fb7fc11, ; 200: Microsoft.Maui.Controls.HotReload.Forms => 394
	i64 u0x2a128783efe70ba0, ; 201: uk/Microsoft.Maui.Controls.resources.dll => 389
	i64 u0x2a3b095612184159, ; 202: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 203: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2acd46d52b77f7fb, ; 204: lib_Plugin.Firebase.dll.so => 190
	i64 u0x2ad156c8e1354139, ; 205: fi/Microsoft.Maui.Controls.resources => 367
	i64 u0x2ad5d6b13b7a3e04, ; 206: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 207: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 208: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 209: zh-Hant/Microsoft.Maui.Controls.resources.dll => 393
	i64 u0x2b6989d78cba9a15, ; 210: Xamarin.AndroidX.Concurrent.Futures.dll => 222
	i64 u0x2c517f906db0a191, ; 211: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 310
	i64 u0x2c8bd14bb93a7d82, ; 212: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 380
	i64 u0x2cbd9262ca785540, ; 213: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 214: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 215: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 216: System.Threading.dll => 149
	i64 u0x2d1d1413dd10c597, ; 217: Xamarin.Google.Guava.FailureAccess => 320
	i64 u0x2d47774b7d993f59, ; 218: sv/Microsoft.Maui.Controls.resources.dll => 386
	i64 u0x2d5ffcae1ad0aaca, ; 219: System.Data.dll => 24
	i64 u0x2d6267ac7de1d619, ; 220: Xamarin.Firebase.Database.Collection.dll => 292
	i64 u0x2d8414ebbf6218ce, ; 221: Plugin.Firebase.RemoteConfig.dll => 199
	i64 u0x2db915caf23548d2, ; 222: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 223: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e5a40c319acb800, ; 224: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 225: el/Microsoft.Maui.Controls.resources.dll => 365
	i64 u0x2e7ae36a08a1dbb3, ; 226: Xamarin.Firebase.Encoders => 295
	i64 u0x2f02f94df3200fe5, ; 227: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 228: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 229: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 230: lib_System.Xml.dll.so => 164
	i64 u0x2fd92a71c7638cfd, ; 231: Xamarin.Firebase.Database.Collection => 292
	i64 u0x301713b5054e4388, ; 232: Xamarin.GooglePlayServices.Stats.dll => 334
	i64 u0x3053de11b4c0cb63, ; 233: lib_Xamarin.Firebase.Measurement.Connector.dll.so => 304
	i64 u0x30829702a4057a12, ; 234: Xamarin.Google.Android.DataTransport.TransportBackendCct => 310
	i64 u0x309ee9eeec09a71e, ; 235: lib_Xamarin.AndroidX.Fragment.dll.so => 237
	i64 u0x30c6dda129408828, ; 236: System.IO.IsolatedStorage => 52
	i64 u0x31195fef5d8fb552, ; 237: _Microsoft.Android.Resource.Designer.dll => 397
	i64 u0x312c8ed623cbfc8d, ; 238: Xamarin.AndroidX.Window.dll => 278
	i64 u0x31496b779ed0663d, ; 239: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x31f946282b3de50c, ; 240: Xamarin.Firebase.Datatransport.dll => 293
	i64 u0x3200b1eae7efaded, ; 241: lib_Xamarin.Firebase.Encoders.JSON.dll.so => 296
	i64 u0x32243413e774362a, ; 242: Xamarin.AndroidX.CardView.dll => 218
	i64 u0x3235427f8d12dae1, ; 243: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x329753a17a517811, ; 244: fr/Microsoft.Maui.Controls.resources => 368
	i64 u0x32aa989ff07a84ff, ; 245: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 246: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 247: lib-es-Microsoft.Maui.Controls.resources.dll.so => 366
	i64 u0x341abc357fbb4ebf, ; 248: lib_System.Net.Sockets.dll.so => 76
	i64 u0x342397b849d48e49, ; 249: Xamarin.Grpc.Core => 339
	i64 u0x3496c1e2dcaf5ecc, ; 250: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34dfd74fe2afcf37, ; 251: Microsoft.Maui => 186
	i64 u0x34e292762d9615df, ; 252: cs/Microsoft.Maui.Controls.resources.dll => 362
	i64 u0x34f550615634aa64, ; 253: lib_Xamarin.Firebase.Encoders.dll.so => 295
	i64 u0x3508234247f48404, ; 254: Microsoft.Maui.Controls => 184
	i64 u0x353590da528c9d22, ; 255: System.ComponentModel.Annotations => 13
	i64 u0x353c74869339570c, ; 256: lib_Xamarin.Firebase.Auth.dll.so => 285
	i64 u0x3549870798b4cd30, ; 257: lib_Xamarin.AndroidX.ViewPager2.dll.so => 277
	i64 u0x355282fc1c909694, ; 258: Microsoft.Extensions.Configuration => 175
	i64 u0x3552fc5d578f0fbf, ; 259: Xamarin.AndroidX.Arch.Core.Common => 215
	i64 u0x355c649948d55d97, ; 260: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x356fd122ba041cb4, ; 261: lib_Xamarin.Grpc.Protobuf.Lite.dll.so => 341
	i64 u0x35ea9d1c6834bc8c, ; 262: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 253
	i64 u0x3628ab68db23a01a, ; 263: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x364703ab05867b92, ; 264: Xamarin.Firebase.Components => 289
	i64 u0x3673b042508f5b6b, ; 265: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 266: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 267: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 268: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 269: System.Reflection.Primitives.dll => 96
	i64 u0x376bf93e521a5417, ; 270: lib_Xamarin.Jetbrains.Annotations.dll.so => 346
	i64 u0x37bc29f3183003b6, ; 271: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 272: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 273: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x385c17636bb6fe6e, ; 274: Xamarin.AndroidX.CustomView.dll => 229
	i64 u0x38869c811d74050e, ; 275: System.Net.NameResolution.dll => 68
	i64 u0x393c226616977fdb, ; 276: lib_Xamarin.AndroidX.ViewPager.dll.so => 276
	i64 u0x395e37c3334cf82a, ; 277: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 361
	i64 u0x39aa39fda111d9d3, ; 278: Newtonsoft.Json => 189
	i64 u0x3ab5859054645f72, ; 279: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad75090c3fac0e9, ; 280: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 264
	i64 u0x3ae44ac43a1fbdbb, ; 281: System.Runtime.Serialization => 116
	i64 u0x3b860f9932505633, ; 282: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3c0c1b892a2cb57e, ; 283: Plugin.Firebase.CloudMessaging => 193
	i64 u0x3c3aafb6b3a00bf6, ; 284: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 285: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 286: Xamarin.Kotlin.StdLib => 347
	i64 u0x3c7e5ed3d5db71bb, ; 287: System.Security => 131
	i64 u0x3c90a7b70f45292a, ; 288: Xamarin.Grpc.OkHttp.dll => 340
	i64 u0x3cc1676a8781bdbc, ; 289: Xamarin.Firebase.Auth.Interop.dll => 286
	i64 u0x3cd9d281d402eb9b, ; 290: Xamarin.AndroidX.Browser.dll => 217
	i64 u0x3d1c50cc001a991e, ; 291: Xamarin.Google.Guava.ListenableFuture.dll => 321
	i64 u0x3d2b1913edfc08d7, ; 292: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 293: System.Xml.Linq => 156
	i64 u0x3d8a8f400514a790, ; 294: Xamarin.AndroidX.Fragment.Ktx.dll => 238
	i64 u0x3d9c2a242b040a50, ; 295: lib_Xamarin.AndroidX.Core.dll.so => 226
	i64 u0x3dbb6b9f5ab90fa7, ; 296: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 233
	i64 u0x3e250296f3b5714d, ; 297: Xamarin.Firebase.Measurement.Connector => 304
	i64 u0x3e5441657549b213, ; 298: Xamarin.AndroidX.ResourceInspection.Annotation => 264
	i64 u0x3e57d4d195c53c2e, ; 299: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 300: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 301: Xamarin.AndroidX.SlidingPaneLayout.dll => 268
	i64 u0x3f510adf788828dd, ; 302: System.Threading.Tasks.Extensions => 143
	i64 u0x407740ff2e914d86, ; 303: Xamarin.AndroidX.Print.dll => 261
	i64 u0x407a10bb4bf95829, ; 304: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 257
	i64 u0x40c98b6bd77346d4, ; 305: Microsoft.VisualBasic.dll => 3
	i64 u0x4160e46b59efd769, ; 306: dokonApp3 => 0
	i64 u0x41833cf766d27d96, ; 307: mscorlib => 167
	i64 u0x41cab042be111c34, ; 308: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 214
	i64 u0x41f64d46793f6584, ; 309: Plugin.Firebase.Analytics.dll => 191
	i64 u0x423a9ecc4d905a88, ; 310: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 311: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 312: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 313: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 314: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x43375950ec7c1b6a, ; 315: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 316: Mono.Android.dll => 172
	i64 u0x43505013578652a0, ; 317: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 209
	i64 u0x437d06c381ed575a, ; 318: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 319: pl/Microsoft.Maui.Controls.resources.dll => 380
	i64 u0x43e8ca5bc927ff37, ; 320: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 235
	i64 u0x447e266c182176d4, ; 321: Xamarin.GooglePlayServices.Measurement.Api => 329
	i64 u0x448bd33429269b19, ; 322: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 323: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 324: Xamarin.Kotlin.StdLib.dll => 347
	i64 u0x4545802489b736b9, ; 325: Xamarin.AndroidX.Fragment.Ktx => 238
	i64 u0x454b4d1e66bb783c, ; 326: Xamarin.AndroidX.Lifecycle.Process => 246
	i64 u0x45c40276a42e283e, ; 327: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 328: System.AppContext.dll => 6
	i64 u0x4688df2d3127fb7a, ; 329: lib_Xamarin.GooglePlayServices.Measurement.dll.so => 328
	i64 u0x46a4213bc97fe5ae, ; 330: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 384
	i64 u0x46e11054e74afdb7, ; 331: Xamarin.Firebase.AppCheck.Interop => 284
	i64 u0x47358bd471172e1d, ; 332: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47a2af602ae797ed, ; 333: lib_Xamarin.KotlinX.Coroutines.Play.Services.dll.so => 356
	i64 u0x47daf4e1afbada10, ; 334: pt/Microsoft.Maui.Controls.resources => 382
	i64 u0x480c0a47dd42dd81, ; 335: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 336: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 240
	i64 u0x49946f0d78a813ad, ; 337: Xamarin.GooglePlayServices.Auth.Api.Phone => 324
	i64 u0x49e952f19a4e2022, ; 338: System.ObjectModel => 85
	i64 u0x49f6ab815e178ca9, ; 339: lib_Xamarin.Firebase.Common.dll.so => 287
	i64 u0x49f9e6948a8131e4, ; 340: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 275
	i64 u0x4a5667b2462a664b, ; 341: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 260
	i64 u0x4a7a18981dbd56bc, ; 342: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 343: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 245
	i64 u0x4b07a0ed0ab33ff4, ; 344: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 345: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 346: System.Text.Json => 138
	i64 u0x4bb6f6e34164a378, ; 347: Square.OkIO.JVM.dll => 203
	i64 u0x4c7755cf07ad2d5f, ; 348: System.Net.Http.Json.dll => 64
	i64 u0x4c915fc509d9e8d7, ; 349: Xamarin.GooglePlayServices.Measurement.Sdk.Api => 333
	i64 u0x4cad38a03a928144, ; 350: lib_Xamarin.Firebase.Encoders.Proto.dll.so => 297
	i64 u0x4cc5f15266470798, ; 351: lib_Xamarin.AndroidX.Loader.dll.so => 255
	i64 u0x4cf6f67dc77aacd2, ; 352: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 353: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 354: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 355: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 356: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 357: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 215
	i64 u0x4d7793536e79c309, ; 358: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 359: System.Runtime.Loader.dll => 110
	i64 u0x4dcf44c3c9b076a2, ; 360: it/Microsoft.Maui.Controls.resources.dll => 374
	i64 u0x4dd9247f1d2c3235, ; 361: Xamarin.AndroidX.Loader.dll => 255
	i64 u0x4e2aeee78e2c4a87, ; 362: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 262
	i64 u0x4e32f00cb0937401, ; 363: Mono.Android.Runtime => 171
	i64 u0x4e46048835331fcd, ; 364: Xamarin.Firebase.Analytics => 282
	i64 u0x4e5eea4668ac2b18, ; 365: System.Text.Encoding.CodePages => 134
	i64 u0x4e742b34f53425d7, ; 366: Xamarin.Firebase.Encoders.Proto.dll => 297
	i64 u0x4e8a4fc9d408f7aa, ; 367: lib_dokonApp3.dll.so => 0
	i64 u0x4ebd0c4b82c5eefc, ; 368: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 369: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 370: ca/Microsoft.Maui.Controls.resources => 361
	i64 u0x4f805f1e120ed022, ; 371: Xamarin.GooglePlayServices.Ads.Identifier => 323
	i64 u0x4ff8ea8951a69b9f, ; 372: Xamarin.Grpc.Android.dll => 336
	i64 u0x5037f0be3c28c7a3, ; 373: lib_Microsoft.Maui.Controls.dll.so => 184
	i64 u0x50bd8cfae0f07500, ; 374: lib_Xamarin.GooglePlayServices.Stats.dll.so => 334
	i64 u0x50c3a29b21050d45, ; 375: System.Linq.Parallel.dll => 60
	i64 u0x5131bbe80989093f, ; 376: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 252
	i64 u0x515d61d6527dac70, ; 377: lib_Xamarin.Firebase.Auth.Interop.dll.so => 286
	i64 u0x516324a5050a7e3c, ; 378: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 379: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 380: System.Drawing => 36
	i64 u0x51d5fd31c5909faf, ; 381: lib_Xamarin.Google.Android.Recaptcha.dll.so => 314
	i64 u0x5247c5c32a4140f0, ; 382: System.Resources.Reader => 99
	i64 u0x526bb15e3c386364, ; 383: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 249
	i64 u0x526ce79eb8e90527, ; 384: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 385: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 386: Xamarin.AndroidX.Core => 226
	i64 u0x52ff996554dbf352, ; 387: Microsoft.Maui.Graphics => 188
	i64 u0x535f7e40e8fef8af, ; 388: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 385
	i64 u0x536bf0b25fe5ae63, ; 389: Plugin.Firebase.DynamicLinks => 196
	i64 u0x53978aac584c666e, ; 390: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 391: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 392: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53c3014b9437e684, ; 393: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 391
	i64 u0x53e450ebd586f842, ; 394: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 256
	i64 u0x5435e6f049e9bc37, ; 395: System.Security.Claims.dll => 119
	i64 u0x54795225dd1587af, ; 396: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 397: Xamarin.AndroidX.Lifecycle.Common.dll => 241
	i64 u0x556e8b63b660ab8b, ; 398: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 242
	i64 u0x5588627c9a108ec9, ; 399: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 400: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 401: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 402: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x56a5d2c17db41bcb, ; 403: Xamarin.Google.Android.DataTransport.TransportRuntime => 311
	i64 u0x56a8b26e1aeae27b, ; 404: System.Threading.Tasks.Dataflow => 142
	i64 u0x56eacd1e7e04c04e, ; 405: lib_Xamarin.Google.Android.Play.Integrity.dll.so => 313
	i64 u0x56f932d61e93c07f, ; 406: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 407: System.Private.Uri => 87
	i64 u0x57201164aeb974e3, ; 408: Xamarin.Google.Guava.FailureAccess.dll => 320
	i64 u0x5722aed33ba95e06, ; 409: lib_Xamarin.GooglePlayServices.Measurement.Impl.dll.so => 331
	i64 u0x576499c9f52fea31, ; 410: Xamarin.AndroidX.Annotation => 210
	i64 u0x579a06fed6eec900, ; 411: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 412: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 413: System.Threading.Timer => 148
	i64 u0x58601b2dda4a27b9, ; 414: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 375
	i64 u0x58688d9af496b168, ; 415: Microsoft.Extensions.DependencyInjection.dll => 177
	i64 u0x588c167a79db6bfb, ; 416: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 318
	i64 u0x5906028ae5151104, ; 417: Xamarin.AndroidX.Activity.Ktx => 209
	i64 u0x595a356d23e8da9a, ; 418: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59bf5951f09e7573, ; 419: Plugin.Firebase.Functions.dll => 198
	i64 u0x59f9e60b9475085f, ; 420: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 211
	i64 u0x5a0aca0ebb32457d, ; 421: Xamarin.Grpc.Util => 343
	i64 u0x5a6dc081b000c5d7, ; 422: lib_Xamarin.Grpc.OkHttp.dll.so => 340
	i64 u0x5a745f5101a75527, ; 423: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 424: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 225
	i64 u0x5a8f6699f4a1caa9, ; 425: lib_System.Threading.dll.so => 149
	i64 u0x5ae8e4f3eae4d547, ; 426: Xamarin.AndroidX.Legacy.Support.Core.Utils => 240
	i64 u0x5ae9cd33b15841bf, ; 427: System.ComponentModel => 18
	i64 u0x5aeb8cd498d4823e, ; 428: lib_Xamarin.Google.Guava.dll.so => 319
	i64 u0x5b00c69e1da8fac1, ; 429: Plugin.Firebase.RemoteConfig => 199
	i64 u0x5b54391bdc6fcfe6, ; 430: System.Private.DataContractSerialization => 86
	i64 u0x5b5f0e240a06a2a2, ; 431: da/Microsoft.Maui.Controls.resources.dll => 363
	i64 u0x5b755276902c8414, ; 432: Xamarin.GooglePlayServices.Base => 325
	i64 u0x5b8109e8e14c5e3e, ; 433: System.Globalization.Extensions.dll => 41
	i64 u0x5bddd04d72a9e350, ; 434: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 245
	i64 u0x5bdf16b09da116ab, ; 435: Xamarin.AndroidX.Collection => 219
	i64 u0x5bff6a70194300bd, ; 436: lib_Xamarin.Kotlin.StdLib.Jdk8.dll.so => 350
	i64 u0x5c019d5266093159, ; 437: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 250
	i64 u0x5c30a4a35f9cc8c4, ; 438: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 439: lib_Microsoft.Extensions.Logging.dll.so => 179
	i64 u0x5c53c29f5073b0c9, ; 440: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 441: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 442: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d40c9b15181641f, ; 443: lib_Xamarin.AndroidX.Emoji2.dll.so => 234
	i64 u0x5d6ca10d35e9485b, ; 444: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 222
	i64 u0x5d7ec76c1c703055, ; 445: System.Threading.Tasks.Parallel => 144
	i64 u0x5d98595378bae545, ; 446: dokonApp3.dll => 0
	i64 u0x5db0cbbd1028510e, ; 447: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 448: Xamarin.AndroidX.Collection.Jvm.dll => 220
	i64 u0x5dd10b96620cce23, ; 449: Xamarin.Firebase.Iid.Interop => 301
	i64 u0x5e467bc8f09ad026, ; 450: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 451: System.Runtime.Handles.dll => 105
	i64 u0x5e866d69770119c9, ; 452: lib_Xamarin.Firebase.Abt.dll.so => 281
	i64 u0x5ea92fdb19ec8c4c, ; 453: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 454: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 455: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 456: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 457: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 458: System.Data.Common => 22
	i64 u0x5f4fa8b9ffd0e2c5, ; 459: lib_Xamarin.Google.Android.DataTransport.TransportApi.dll.so => 309
	i64 u0x5f9a2d823f664957, ; 460: lib-el-Microsoft.Maui.Controls.resources.dll.so => 365
	i64 u0x5fa6da9c3cd8142a, ; 461: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 357
	i64 u0x5fac98e0b37a5b9d, ; 462: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x609f4b7b63d802d4, ; 463: lib_Microsoft.Extensions.DependencyInjection.dll.so => 177
	i64 u0x60cd4e33d7e60134, ; 464: Xamarin.KotlinX.Coroutines.Core.Jvm => 355
	i64 u0x60ee72f71c4b3113, ; 465: Xamarin.Firebase.Iid.Interop.dll => 301
	i64 u0x60f62d786afcf130, ; 466: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 467: System.IO => 58
	i64 u0x61be8d1299194243, ; 468: Microsoft.Maui.Controls.Xaml => 185
	i64 u0x61d2cba29557038f, ; 469: de/Microsoft.Maui.Controls.resources => 364
	i64 u0x61d88f399afb2f45, ; 470: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 471: System.Private.CoreLib => 173
	i64 u0x62e976fd765a2339, ; 472: Xamarin.Firebase.Auth.Interop => 286
	i64 u0x63982c87366f9be8, ; 473: Xamarin.Google.Guava => 319
	i64 u0x63d5e3aa4ef9b931, ; 474: Xamarin.KotlinX.Coroutines.Android.dll => 353
	i64 u0x63f1f6883c1e23c2, ; 475: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 476: Xamarin.Google.Android.Material.dll => 312
	i64 u0x640e3b14dbd325c2, ; 477: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 478: System.Reflection => 98
	i64 u0x646bbda4b2219cc2, ; 479: lib_Xamarin.Firebase.Datatransport.dll.so => 293
	i64 u0x64b1529a438a3c45, ; 480: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x64f30e567cb41fac, ; 481: Xamarin.KotlinX.Coroutines.Play.Services => 356
	i64 u0x6565fba2cd8f235b, ; 482: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 253
	i64 u0x65ecac39144dd3cc, ; 483: Microsoft.Maui.Controls.dll => 184
	i64 u0x65ece51227bfa724, ; 484: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 485: Xamarin.AndroidX.Annotation.Jvm.dll => 212
	i64 u0x6679b2337ee6b22a, ; 486: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 487: lib_System.Console.dll.so => 20
	i64 u0x669b2e9020ef2b4e, ; 488: Xamarin.Firebase.Datatransport => 293
	i64 u0x66a4e5c6a3fb0bae, ; 489: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 252
	i64 u0x66d13304ce1a3efa, ; 490: Xamarin.AndroidX.CursorAdapter => 228
	i64 u0x674303f65d8fad6f, ; 491: lib_System.Net.Quic.dll.so => 72
	i64 u0x6756ca4cad62e9d6, ; 492: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 224
	i64 u0x67bca11acb828d8d, ; 493: lib_Xamarin.Google.Android.DataTransport.TransportBackendCct.dll.so => 310
	i64 u0x67c0802770244408, ; 494: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 495: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68558ec653afa616, ; 496: lib-da-Microsoft.Maui.Controls.resources.dll.so => 363
	i64 u0x6872ec7a2e36b1ac, ; 497: System.Drawing.Primitives.dll => 35
	i64 u0x68bb2c417aa9b61c, ; 498: Xamarin.KotlinX.AtomicFU.dll => 351
	i64 u0x68fbbbe2eb455198, ; 499: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 500: he/Microsoft.Maui.Controls.resources.dll => 369
	i64 u0x69a3e26c76f6eec4, ; 501: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 279
	i64 u0x6a4d7577b2317255, ; 502: System.Runtime.InteropServices.dll => 108
	i64 u0x6a61e5b7d5907416, ; 503: lib_Xamarin.GooglePlayServices.Auth.Api.Phone.dll.so => 324
	i64 u0x6a83dcc5e7641aa4, ; 504: lib_Xamarin.GooglePlayServices.Measurement.Api.dll.so => 329
	i64 u0x6ace3b74b15ee4a4, ; 505: nb/Microsoft.Maui.Controls.resources => 378
	i64 u0x6afcedb171067e2b, ; 506: System.Core.dll => 21
	i64 u0x6bbbec44779e48c2, ; 507: Xamarin.GooglePlayServices.Measurement.Base.dll => 330
	i64 u0x6be5fa9d8f68118d, ; 508: Square.OkHttp3.dll => 201
	i64 u0x6bef98e124147c24, ; 509: Xamarin.Jetbrains.Annotations => 346
	i64 u0x6ce874bff138ce2b, ; 510: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 251
	i64 u0x6cfa2bd175637715, ; 511: Square.OkIO.JVM => 203
	i64 u0x6d12bfaa99c72b1f, ; 512: lib_Microsoft.Maui.Graphics.dll.so => 188
	i64 u0x6d70755158ca866e, ; 513: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 514: Microsoft.Extensions.Primitives => 183
	i64 u0x6d7eeca99577fc8b, ; 515: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 516: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 517: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 228
	i64 u0x6d9bea6b3e895cf7, ; 518: Microsoft.Extensions.Primitives.dll => 183
	i64 u0x6dd9bf4083de3f6a, ; 519: Xamarin.AndroidX.DocumentFile.dll => 231
	i64 u0x6e25a02c3833319a, ; 520: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 258
	i64 u0x6e79c6bd8627412a, ; 521: Xamarin.AndroidX.SavedState.SavedState.Ktx => 266
	i64 u0x6e838d9a2a6f6c9e, ; 522: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 523: lib_System.Core.dll.so => 21
	i64 u0x6f304d1dec1019e9, ; 524: lib_Xamarin.Firebase.Installations.dll.so => 302
	i64 u0x6fd2265da78b93a4, ; 525: lib_Microsoft.Maui.dll.so => 186
	i64 u0x6fdfc7de82c33008, ; 526: cs/Microsoft.Maui.Controls.resources => 362
	i64 u0x6ffc4967cc47ba57, ; 527: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 528: System.IO.FileSystem.dll => 51
	i64 u0x70664ad3307f4fbf, ; 529: Xamarin.Grpc.Core.dll => 339
	i64 u0x70c1154d9ce7bd51, ; 530: Xamarin.Kotlin.StdLib.Common.dll => 348
	i64 u0x70e99f48c05cb921, ; 531: tr/Microsoft.Maui.Controls.resources.dll => 388
	i64 u0x70fd3deda22442d2, ; 532: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 378
	i64 u0x71485e7ffdb4b958, ; 533: System.Reflection.Extensions => 94
	i64 u0x7162a2fce67a945f, ; 534: lib_Xamarin.Android.Glide.Annotations.dll.so => 205
	i64 u0x719176ec28437f1c, ; 535: Xamarin.Protobuf.JavaLite => 359
	i64 u0x71a495ea3761dde8, ; 536: lib-it-Microsoft.Maui.Controls.resources.dll.so => 374
	i64 u0x71ad672adbe48f35, ; 537: System.ComponentModel.Primitives.dll => 16
	i64 u0x7207f5c4519b0c98, ; 538: Plugin.Firebase.Auth.dll => 192
	i64 u0x725f5a9e82a45c81, ; 539: System.Security.Cryptography.Encoding => 123
	i64 u0x72b1fb4109e08d7b, ; 540: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 371
	i64 u0x72e0300099accce1, ; 541: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 542: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 543: Xamarin.Google.ErrorProne.Annotations.dll => 318
	i64 u0x734b76fdc0dc05bb, ; 544: lib_GoogleGson.dll.so => 174
	i64 u0x73a6be34e822f9d1, ; 545: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 546: lib_System.Memory.dll.so => 63
	i64 u0x743a1eccf080489a, ; 547: WindowsBase.dll => 166
	i64 u0x755a91767330b3d4, ; 548: lib_Microsoft.Extensions.Configuration.dll.so => 175
	i64 u0x75c326eb821b85c4, ; 549: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 550: lib_Xamarin.AndroidX.SavedState.dll.so => 265
	i64 u0x76ca07b878f44da0, ; 551: System.Runtime.Numerics.dll => 111
	i64 u0x7736c8a96e51a061, ; 552: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 212
	i64 u0x778a805e625329ef, ; 553: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 554: Xamarin.KotlinX.AtomicFU.Jvm => 352
	i64 u0x77f8a4acc2fdc449, ; 555: System.Security.Cryptography.Cng.dll => 121
	i64 u0x780bc73597a503a9, ; 556: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 377
	i64 u0x782c5d8eb99ff201, ; 557: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 558: th/Microsoft.Maui.Controls.resources.dll => 387
	i64 u0x784b4ff3eed363ff, ; 559: Xamarin.Firebase.Common => 287
	i64 u0x78a0275e998ae4ef, ; 560: Xamarin.Firebase.Measurement.Connector.dll => 304
	i64 u0x78a45e51311409b6, ; 561: Xamarin.AndroidX.Fragment.dll => 237
	i64 u0x78d5c74e565733ea, ; 562: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 311
	i64 u0x78ed4ab8f9d800a1, ; 563: Xamarin.AndroidX.Lifecycle.ViewModel => 251
	i64 u0x793546dbadd324b1, ; 564: Xamarin.Google.Android.DataTransport.TransportApi => 309
	i64 u0x7a39601d6f0bb831, ; 565: lib_Xamarin.KotlinX.AtomicFU.dll.so => 351
	i64 u0x7a7e7eddf79c5d26, ; 566: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 251
	i64 u0x7a9a57d43b0845fa, ; 567: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 568: Xamarin.AndroidX.Collection.dll => 219
	i64 u0x7adb8da2ac89b647, ; 569: fi/Microsoft.Maui.Controls.resources.dll => 367
	i64 u0x7b13d9eaa944ade8, ; 570: Xamarin.AndroidX.DynamicAnimation.dll => 233
	i64 u0x7b1644fe7249da0c, ; 571: Plugin.Firebase.Firestore => 197
	i64 u0x7b41df00b4b7f385, ; 572: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 280
	i64 u0x7bef86a4335c4870, ; 573: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 574: sk/Microsoft.Maui.Controls.resources.dll => 385
	i64 u0x7c2a0bd1e0f988fc, ; 575: lib-de-Microsoft.Maui.Controls.resources.dll.so => 364
	i64 u0x7c41d387501568ba, ; 576: System.Net.WebClient.dll => 77
	i64 u0x7c482cd79bd24b13, ; 577: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 223
	i64 u0x7cb95ad2a929d044, ; 578: Xamarin.GooglePlayServices.Basement => 326
	i64 u0x7cd2ec8eaf5241cd, ; 579: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 580: Xamarin.Jetbrains.Annotations.dll => 346
	i64 u0x7d649b75d580bb42, ; 581: ms/Microsoft.Maui.Controls.resources.dll => 377
	i64 u0x7d8ee2bdc8e3aad1, ; 582: System.Numerics.Vectors => 83
	i64 u0x7df5df8db8eaa6ac, ; 583: Microsoft.Extensions.Logging.Debug => 181
	i64 u0x7dfc3d6d9d8d7b70, ; 584: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 585: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 586: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e4465b3f78ad8d0, ; 587: Xamarin.KotlinX.Serialization.Core.dll => 357
	i64 u0x7e571cad5915e6c3, ; 588: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 246
	i64 u0x7e65340ed0da76d2, ; 589: Xamarin.Grpc.OkHttp => 340
	i64 u0x7e6b1ca712437d7d, ; 590: Xamarin.AndroidX.Emoji2.ViewsHelper => 235
	i64 u0x7e946809d6008ef2, ; 591: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ea0272c1b4a9635, ; 592: lib_Xamarin.Android.Glide.dll.so => 204
	i64 u0x7eb4f0dc47488736, ; 593: lib_Xamarin.GooglePlayServices.Tasks.dll.so => 335
	i64 u0x7ecc13347c8fd849, ; 594: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 595: Xamarin.AndroidX.ViewPager.dll => 276
	i64 u0x7f9351cd44b1273f, ; 596: Microsoft.Extensions.Configuration.Abstractions => 176
	i64 u0x7fbd557c99b3ce6f, ; 597: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 244
	i64 u0x8076a9a44a2ca331, ; 598: System.Net.Quic => 72
	i64 u0x80b7e726b0280681, ; 599: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 395
	i64 u0x80da183a87731838, ; 600: System.Reflection.Metadata => 95
	i64 u0x812c069d5cdecc17, ; 601: System.dll => 165
	i64 u0x81381be520a60adb, ; 602: Xamarin.AndroidX.Interpolator.dll => 239
	i64 u0x81657cec2b31e8aa, ; 603: System.Net => 82
	i64 u0x81ab745f6c0f5ce6, ; 604: zh-Hant/Microsoft.Maui.Controls.resources => 393
	i64 u0x81db25321ea48ab3, ; 605: lib_Xamarin.Firebase.AppCheck.Interop.dll.so => 284
	i64 u0x8277f2be6b5ce05f, ; 606: Xamarin.AndroidX.AppCompat => 213
	i64 u0x828f06563b30bc50, ; 607: lib_Xamarin.AndroidX.CardView.dll.so => 218
	i64 u0x82920a8d9194a019, ; 608: Xamarin.KotlinX.AtomicFU.Jvm.dll => 352
	i64 u0x82b399cb01b531c4, ; 609: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 610: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 611: lib_System.Transactions.dll.so => 151
	i64 u0x82f6403342e12049, ; 612: uk/Microsoft.Maui.Controls.resources => 389
	i64 u0x8393689e0a5c408d, ; 613: lib_Xamarin.GooglePlayServices.Measurement.Sdk.dll.so => 332
	i64 u0x83c14ba66c8e2b8c, ; 614: zh-Hans/Microsoft.Maui.Controls.resources => 392
	i64 u0x846ce984efea52c7, ; 615: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 616: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 617: System.Runtime.Serialization.Json.dll => 113
	i64 u0x850c5ba0b57ce8e7, ; 618: lib_Xamarin.AndroidX.Collection.dll.so => 219
	i64 u0x851d02edd334b044, ; 619: Xamarin.AndroidX.VectorDrawable => 273
	i64 u0x85410a0ce2b82e74, ; 620: lib_Xamarin.Grpc.Context.dll.so => 338
	i64 u0x85c919db62150978, ; 621: Xamarin.AndroidX.Transition.dll => 272
	i64 u0x85fe8aab7ca9ed11, ; 622: Xamarin.Google.Android.Recaptcha => 314
	i64 u0x8662aaeb94fef37f, ; 623: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 624: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 393
	i64 u0x86b3e00c36b84509, ; 625: Microsoft.Extensions.Configuration.dll => 175
	i64 u0x86b62cb077ec4fd7, ; 626: System.Runtime.Serialization.Xml => 115
	i64 u0x8706ffb12bf3f53d, ; 627: Xamarin.AndroidX.Annotation.Experimental => 211
	i64 u0x872a5b14c18d328c, ; 628: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 629: Xamarin.Android.Glide.Annotations.dll => 205
	i64 u0x8794c7c19600413d, ; 630: Xamarin.Grpc.Protobuf.Lite => 341
	i64 u0x87b7bede2c8fef74, ; 631: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 306
	i64 u0x87c69b87d9283884, ; 632: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 633: System.IO.Compression.Brotli.dll => 43
	i64 u0x87fe2bfaae9f8412, ; 634: lib_Plugin.Firebase.Auth.dll.so => 192
	i64 u0x8842b3a5d2d3fb36, ; 635: Microsoft.Maui.Essentials => 187
	i64 u0x88926583efe7ee86, ; 636: Xamarin.AndroidX.Activity.Ktx.dll => 209
	i64 u0x88b16a1a7051ebe2, ; 637: Xamarin.Firebase.Annotations.dll => 283
	i64 u0x88ba6bc4f7762b03, ; 638: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 639: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 355
	i64 u0x8930322c7bd8f768, ; 640: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 641: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 642: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 643: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a19e3dc71b34b2c, ; 644: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8ad229ea26432ee2, ; 645: Xamarin.AndroidX.Loader => 255
	i64 u0x8b4ff5d0fdd5faa1, ; 646: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 647: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 648: System.Diagnostics.Process.dll => 29
	i64 u0x8b9278242f21e276, ; 649: Xamarin.Firebase.Encoders.JSON.dll => 296
	i64 u0x8b9ceca7acae3451, ; 650: lib-he-Microsoft.Maui.Controls.resources.dll.so => 369
	i64 u0x8c230514448fef34, ; 651: Xamarin.Firebase.ProtoliteWellKnownTypes => 306
	i64 u0x8cb8f612b633affb, ; 652: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 266
	i64 u0x8cdfdb4ce85fb925, ; 653: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 654: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 655: Xamarin.AndroidX.CursorAdapter.dll => 228
	i64 u0x8d29ad8fa9631e25, ; 656: lib_Xamarin.GooglePlayServices.Ads.Identifier.dll.so => 323
	i64 u0x8d52f7ea2796c531, ; 657: Xamarin.AndroidX.Emoji2.dll => 234
	i64 u0x8d7b8ab4b3310ead, ; 658: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 659: System.Collections.Concurrent => 8
	i64 u0x8ec6e06a61c1baeb, ; 660: lib_Newtonsoft.Json.dll.so => 189
	i64 u0x8ed807bfe9858dfc, ; 661: Xamarin.AndroidX.Navigation.Common => 257
	i64 u0x8ee08b8194a30f48, ; 662: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 370
	i64 u0x8ef7601039857a44, ; 663: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 383
	i64 u0x8efbc0801a122264, ; 664: Xamarin.GooglePlayServices.Tasks.dll => 335
	i64 u0x8f32c6f611f6ffab, ; 665: pt/Microsoft.Maui.Controls.resources.dll => 382
	i64 u0x8f44b45eb046bbd1, ; 666: System.ServiceModel.Web.dll => 132
	i64 u0x8f8829d21c8985a4, ; 667: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 381
	i64 u0x8fbf5b0114c6dcef, ; 668: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 669: Xamarin.KotlinX.Serialization.Core => 357
	i64 u0x8fd42635e63de49e, ; 670: Xamarin.Grpc.Context.dll => 338
	i64 u0x8feffa44c5924324, ; 671: lib_Xamarin.Protobuf.JavaLite.dll.so => 359
	i64 u0x90263f8448b8f572, ; 672: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 673: _Microsoft.Android.Resource.Designer => 397
	i64 u0x90393bd4865292f3, ; 674: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 675: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 676: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 252
	i64 u0x907b636704ad79ef, ; 677: lib_Microsoft.Maui.Controls.Xaml.dll.so => 185
	i64 u0x90e9efbfd68593e0, ; 678: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 243
	i64 u0x910c160571ecf437, ; 679: Xamarin.Firebase.Abt.dll => 281
	i64 u0x91413101e5d9f995, ; 680: Xamarin.Firebase.Auth => 285
	i64 u0x91418dc638b29e68, ; 681: lib_Xamarin.AndroidX.CustomView.dll.so => 229
	i64 u0x9157bd523cd7ed36, ; 682: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 683: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 684: System.ServiceModel.Web => 132
	i64 u0x91fa41a87223399f, ; 685: ca/Microsoft.Maui.Controls.resources.dll => 361
	i64 u0x92054e486c0c7ea7, ; 686: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 687: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92a698e6d582778f, ; 688: Xamarin.Firebase.Components.dll => 289
	i64 u0x92b138fffca2b01e, ; 689: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 216
	i64 u0x92dfc2bfc6c6a888, ; 690: Xamarin.AndroidX.Lifecycle.LiveData => 243
	i64 u0x933da2c779423d68, ; 691: Xamarin.Android.Glide.Annotations => 205
	i64 u0x9388aad9b7ae40ce, ; 692: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 241
	i64 u0x939ce2bba50a7f7a, ; 693: Xamarin.Firebase.Crashlytics => 291
	i64 u0x93a39f9bbc3b3ca4, ; 694: Xamarin.GooglePlayServices.CloudMessaging.dll => 327
	i64 u0x93cfa73ab28d6e35, ; 695: ms/Microsoft.Maui.Controls.resources => 377
	i64 u0x941c00d21e5c0679, ; 696: lib_Xamarin.AndroidX.Transition.dll.so => 272
	i64 u0x944077d8ca3c6580, ; 697: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 698: System.Xml => 164
	i64 u0x94c8990839c4bdb1, ; 699: lib_Xamarin.AndroidX.Interpolator.dll.so => 239
	i64 u0x95c96189b88c95f7, ; 700: Plugin.Firebase.Analytics => 191
	i64 u0x9603ff572969049c, ; 701: Xamarin.Firebase.Analytics.dll => 282
	i64 u0x967fc325e09bfa8c, ; 702: es/Microsoft.Maui.Controls.resources => 366
	i64 u0x9686161486d34b81, ; 703: lib_Xamarin.AndroidX.ExifInterface.dll.so => 236
	i64 u0x9732d8dbddea3d9a, ; 704: id/Microsoft.Maui.Controls.resources => 373
	i64 u0x97695ad5e6dbb63d, ; 705: Xamarin.Io.PerfMark.PerfMarkApi.dll => 344
	i64 u0x978be80e5210d31b, ; 706: Microsoft.Maui.Graphics.dll => 188
	i64 u0x979ab54025cc1c7f, ; 707: lib_Xamarin.GooglePlayServices.Base.dll.so => 325
	i64 u0x97b8c771ea3e4220, ; 708: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 709: System.Collections.Concurrent.dll => 8
	i64 u0x97e55f96df4ddd72, ; 710: lib_Xamarin.Firebase.Annotations.dll.so => 283
	i64 u0x984184e3c70d4419, ; 711: GoogleGson => 174
	i64 u0x9843944103683dd3, ; 712: Xamarin.AndroidX.Core.Core.Ktx => 227
	i64 u0x98af17e841bbadcb, ; 713: Xamarin.Firebase.Storage.dll => 307
	i64 u0x98d720cc4597562c, ; 714: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 715: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 716: System.Threading.Overlapped.dll => 141
	i64 u0x99a00ca5270c6878, ; 717: Xamarin.AndroidX.Navigation.Runtime => 259
	i64 u0x99cdc6d1f2d3a72f, ; 718: ko/Microsoft.Maui.Controls.resources.dll => 376
	i64 u0x9a01b1da98b6ee10, ; 719: Xamarin.AndroidX.Lifecycle.Runtime.dll => 247
	i64 u0x9a5ccc274fd6e6ee, ; 720: Jsr305Binding.dll => 315
	i64 u0x9aca298b5a43ad5c, ; 721: Plugin.Firebase.Core.dll => 194
	i64 u0x9ae6940b11c02876, ; 722: lib_Xamarin.AndroidX.Window.dll.so => 278
	i64 u0x9b211a749105beac, ; 723: System.Transactions.Local => 150
	i64 u0x9b76bea3357ab1a1, ; 724: Xamarin.GooglePlayServices.Measurement.Api.dll => 329
	i64 u0x9b8734714671022d, ; 725: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bb3e2d53d840e51, ; 726: Xamarin.Protobuf.JavaLite.dll => 359
	i64 u0x9bc6aea27fbf034f, ; 727: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 354
	i64 u0x9bd8cc74558ad4c7, ; 728: Xamarin.KotlinX.AtomicFU => 351
	i64 u0x9c244ac7cda32d26, ; 729: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c465f280cf43733, ; 730: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 353
	i64 u0x9c4dd9126a77a711, ; 731: Xamarin.Firebase.Installations.InterOp => 303
	i64 u0x9c8f6872beab6408, ; 732: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 733: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 734: Xamarin.AndroidX.CustomView.PoolingContainer => 230
	i64 u0x9d5dbcf5a48583fe, ; 735: lib_Xamarin.AndroidX.Activity.dll.so => 208
	i64 u0x9d74dee1a7725f34, ; 736: Microsoft.Extensions.Configuration.Abstractions.dll => 176
	i64 u0x9dd9025fdfb738aa, ; 737: Plugin.Firebase.Crashlytics.dll => 195
	i64 u0x9de64d56c52fba95, ; 738: Xamarin.Firebase.Encoders.Proto => 297
	i64 u0x9df1696bb97cdfbb, ; 739: Xamarin.GooglePlayServices.Measurement.Sdk.dll => 332
	i64 u0x9e4534b6adaf6e84, ; 740: nl/Microsoft.Maui.Controls.resources => 379
	i64 u0x9e4b95dec42769f7, ; 741: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 742: Xamarin.AndroidX.Navigation.Common.dll => 257
	i64 u0x9ef542cf1f78c506, ; 743: Xamarin.AndroidX.Lifecycle.LiveData.Core => 244
	i64 u0xa00832eb975f56a8, ; 744: lib_System.Net.dll.so => 82
	i64 u0xa0ad78236b7b267f, ; 745: Xamarin.AndroidX.Window => 278
	i64 u0xa0d8259f4cc284ec, ; 746: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0e17ca50c77a225, ; 747: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 316
	i64 u0xa0ff9b3e34d92f11, ; 748: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa123c421dc71de88, ; 749: lib_Xamarin.Grpc.Util.dll.so => 343
	i64 u0xa12fbfb4da97d9f3, ; 750: System.Threading.Timer.dll => 148
	i64 u0xa1440773ee9d341e, ; 751: Xamarin.Google.Android.Material => 312
	i64 u0xa1b9d7c27f47219f, ; 752: Xamarin.AndroidX.Navigation.UI.dll => 260
	i64 u0xa2572680829d2c7c, ; 753: System.IO.Pipelines.dll => 54
	i64 u0xa258230b8fad57ac, ; 754: lib_Xamarin.Io.PerfMark.PerfMarkApi.dll.so => 344
	i64 u0xa26597e57ee9c7f6, ; 755: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 756: lib_mscorlib.dll.so => 167
	i64 u0xa395572e7da6c99d, ; 757: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 758: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 759: Xamarin.AndroidX.VectorDrawable.Animated => 274
	i64 u0xa46aa1eaa214539b, ; 760: ko/Microsoft.Maui.Controls.resources => 376
	i64 u0xa4edc8f2ceae241a, ; 761: System.Data.Common.dll => 22
	i64 u0xa5072f596f97bd71, ; 762: lib_Plugin.Firebase.Crashlytics.dll.so => 195
	i64 u0xa5494f40f128ce6a, ; 763: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 764: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 765: Xamarin.AndroidX.DocumentFile => 231
	i64 u0xa5b7152421ed6d98, ; 766: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 767: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 768: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 769: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 770: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 771: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa6593e21584384d2, ; 772: lib_Jsr305Binding.dll.so => 315
	i64 u0xa66cbee0130865f7, ; 773: lib_WindowsBase.dll.so => 166
	i64 u0xa67dbee13e1df9ca, ; 774: Xamarin.AndroidX.SavedState.dll => 265
	i64 u0xa684b098dd27b296, ; 775: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 267
	i64 u0xa68a420042bb9b1f, ; 776: Xamarin.AndroidX.DrawerLayout.dll => 232
	i64 u0xa6d26156d1cacc7c, ; 777: Xamarin.Android.Glide.dll => 204
	i64 u0xa75386b5cb9595aa, ; 778: Xamarin.AndroidX.Lifecycle.Runtime.Android => 248
	i64 u0xa763fbb98df8d9fb, ; 779: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 780: Xamarin.AndroidX.Lifecycle.Common.Jvm => 242
	i64 u0xa7a08e0f3bd00c3e, ; 781: Xamarin.Firebase.Messaging.dll => 305
	i64 u0xa7c31b56b4dc7b33, ; 782: hu/Microsoft.Maui.Controls.resources => 372
	i64 u0xa7eab29ed44b4e7a, ; 783: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 784: Microsoft.VisualBasic.Core => 2
	i64 u0xa843f6095f0d247d, ; 785: Xamarin.GooglePlayServices.Base.dll => 325
	i64 u0xa859a95830f367ff, ; 786: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 253
	i64 u0xa8b52f21e0dbe690, ; 787: System.Runtime.Serialization.dll => 116
	i64 u0xa8ee4ed7de2efaee, ; 788: Xamarin.AndroidX.Annotation.dll => 210
	i64 u0xa91bd3f9fcc9ed32, ; 789: Xamarin.GooglePlayServices.Measurement.Sdk => 332
	i64 u0xa9302afdfc455810, ; 790: Xamarin.GoogleAndroid.Annotations.dll => 322
	i64 u0xa95590e7c57438a4, ; 791: System.Configuration => 19
	i64 u0xaa2219c8e3449ff5, ; 792: Microsoft.Extensions.Logging.Abstractions => 180
	i64 u0xaa2de94d374e55df, ; 793: Xamarin.Firebase.Common.Ktx => 288
	i64 u0xaa443ac34067eeef, ; 794: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 795: System.Net.Http => 65
	i64 u0xaa571d3c32740d65, ; 796: Plugin.Firebase.Auth => 192
	i64 u0xaa9a7b0214a5cc5c, ; 797: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 798: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 178
	i64 u0xaaf84bb3f052a265, ; 799: el/Microsoft.Maui.Controls.resources => 365
	i64 u0xab9af77b5b67a0b8, ; 800: Xamarin.AndroidX.ConstraintLayout.Core => 224
	i64 u0xab9c1b2687d86b0b, ; 801: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac2af3fa195a15ce, ; 802: System.Runtime.Numerics => 111
	i64 u0xac5376a2a538dc10, ; 803: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 244
	i64 u0xac5acae88f60357e, ; 804: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 805: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 806: System.Xml.XDocument => 159
	i64 u0xacd46e002c3ccb97, ; 807: ro/Microsoft.Maui.Controls.resources => 383
	i64 u0xacda2fab67639416, ; 808: Xamarin.Firebase.Installations => 302
	i64 u0xacdd9e4180d56dda, ; 809: Xamarin.AndroidX.Concurrent.Futures => 222
	i64 u0xacf42eea7ef9cd12, ; 810: System.Threading.Channels => 140
	i64 u0xad7e82ed3b0f16d0, ; 811: lib_Xamarin.AndroidX.DocumentFile.dll.so => 231
	i64 u0xad89c07347f1bad6, ; 812: nl/Microsoft.Maui.Controls.resources.dll => 379
	i64 u0xadbb53caf78a79d2, ; 813: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 814: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 815: Xamarin.AndroidX.Collection.Ktx => 221
	i64 u0xadd8eda2edf396ad, ; 816: Xamarin.Android.Glide.GifDecoder => 207
	i64 u0xadf4cf30debbeb9a, ; 817: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 818: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 819: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 820: Java.Interop => 169
	i64 u0xae52d4a130fb9b72, ; 821: lib_Xamarin.Firebase.Analytics.dll.so => 282
	i64 u0xae53579c90db1107, ; 822: System.ObjectModel.dll => 85
	i64 u0xaeb080014622ef84, ; 823: Xamarin.JavaX.Inject => 345
	i64 u0xaec7c0c7e2ed4575, ; 824: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 352
	i64 u0xaefb3ebdf2b6cb76, ; 825: Xamarin.Grpc.Util.dll => 343
	i64 u0xaf732d0b2193b8f5, ; 826: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xaf871db261e04601, ; 827: lib_Xamarin.Firebase.Crashlytics.dll.so => 291
	i64 u0xafdb94dbccd9d11c, ; 828: Xamarin.AndroidX.Lifecycle.LiveData.dll => 243
	i64 u0xafe29f45095518e7, ; 829: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 254
	i64 u0xb03ae931fb25607e, ; 830: Xamarin.AndroidX.ConstraintLayout => 223
	i64 u0xb05cc42cd94c6d9d, ; 831: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 386
	i64 u0xb0ac21bec8f428c5, ; 832: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 250
	i64 u0xb0bb43dc52ea59f9, ; 833: System.Diagnostics.Tracing.dll => 34
	i64 u0xb1dd05401aa8ee63, ; 834: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 835: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 836: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 837: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb2a3f67f3bf29fce, ; 838: da/Microsoft.Maui.Controls.resources => 363
	i64 u0xb3005ac9c8a035c5, ; 839: lib_Xamarin.JavaX.Inject.dll.so => 345
	i64 u0xb3011a0a57f7ffb2, ; 840: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 395
	i64 u0xb363b43eeec5798e, ; 841: lib_Xamarin.Firebase.Iid.Interop.dll.so => 301
	i64 u0xb3874072ee0ecf8c, ; 842: Xamarin.AndroidX.VectorDrawable.Animated.dll => 274
	i64 u0xb3f0a0fcda8d3ebc, ; 843: Xamarin.AndroidX.CardView => 218
	i64 u0xb404462cdf3bffdb, ; 844: lib_Xamarin.Firebase.ProtoliteWellKnownTypes.dll.so => 306
	i64 u0xb46be1aa6d4fff93, ; 845: hi/Microsoft.Maui.Controls.resources => 370
	i64 u0xb477491be13109d8, ; 846: ar/Microsoft.Maui.Controls.resources => 360
	i64 u0xb4b4a8794e933f72, ; 847: lib_Plugin.Firebase.Firestore.dll.so => 197
	i64 u0xb4bd7015ecee9d86, ; 848: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 849: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4f8071f1e28b58e, ; 850: Xamarin.Firebase.AppCheck.Interop.dll => 284
	i64 u0xb4ff710863453fda, ; 851: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb565e07395edb5ad, ; 852: Xamarin.Firebase.Storage.Common => 308
	i64 u0xb5c38bf497a4cfe2, ; 853: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 854: Microsoft.Extensions.Logging.Abstractions.dll => 180
	i64 u0xb5e2ea1bb00704d6, ; 855: Xamarin.Kotlin.StdLib.Jdk7.dll => 349
	i64 u0xb5ea31d5244c6626, ; 856: System.Threading.ThreadPool.dll => 147
	i64 u0xb66575354464a3ec, ; 857: Xamarin.Kotlin.StdLib.Common => 348
	i64 u0xb685a1c17fee494b, ; 858: Xamarin.Firebase.Crashlytics.dll => 291
	i64 u0xb7212c4683a94afe, ; 859: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 860: sv/Microsoft.Maui.Controls.resources => 386
	i64 u0xb81a2c6e0aee50fe, ; 861: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8b0a9b3dfbc5cb7, ; 862: Xamarin.AndroidX.Window.Extensions.Core.Core => 279
	i64 u0xb8c60af47c08d4da, ; 863: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 864: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 865: Microsoft.CSharp.dll => 1
	i64 u0xb97187307f9dba5e, ; 866: Xamarin.KotlinX.Coroutines.Play.Services.dll => 356
	i64 u0xb9b8001adf4ed7cc, ; 867: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 268
	i64 u0xb9f64d3b230def68, ; 868: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 382
	i64 u0xb9fc3c8a556e3691, ; 869: ja/Microsoft.Maui.Controls.resources => 375
	i64 u0xba4670aa94a2b3c6, ; 870: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 871: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 872: lib_System.Windows.dll.so => 155
	i64 u0xbb286883bc35db36, ; 873: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 874: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 875: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 876: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc0e640e7c6bcdf8, ; 877: Xamarin.Grpc.Api => 337
	i64 u0xbc260cdba33291a3, ; 878: Xamarin.AndroidX.Arch.Core.Common.dll => 215
	i64 u0xbc727ece861e474e, ; 879: lib_Square.OkIO.JVM.dll.so => 203
	i64 u0xbd0e2c0d55246576, ; 880: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 881: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 882: Xamarin.AndroidX.ViewPager2 => 277
	i64 u0xbd47da6a92fd7307, ; 883: Xamarin.Firebase.Config.dll => 290
	i64 u0xbd4f572d2bd0a789, ; 884: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 885: lib_Xamarin.AndroidX.Browser.dll.so => 217
	i64 u0xbd877b14d0b56392, ; 886: System.Runtime.Intrinsics.dll => 109
	i64 u0xbd960c672af2c51e, ; 887: Xamarin.GooglePlayServices.Stats => 334
	i64 u0xbe65a49036345cf4, ; 888: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 889: Xamarin.AndroidX.AppCompat.AppCompatResources => 214
	i64 u0xbef9919db45b4ca7, ; 890: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 891: lib_Xamarin.AndroidX.Annotation.dll.so => 210
	i64 u0xbfc1e1fb3095f2b3, ; 892: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xc040a4ab55817f58, ; 893: ar/Microsoft.Maui.Controls.resources.dll => 360
	i64 u0xc07cadab29efeba0, ; 894: Xamarin.AndroidX.Core.Core.Ktx.dll => 227
	i64 u0xc0d928351ab5ca77, ; 895: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 896: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 897: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 898: lib_System.Linq.dll.so => 62
	i64 u0xc156694d1a6d7cd6, ; 899: Plugin.Firebase.dll => 190
	i64 u0xc183ca0b74453aa9, ; 900: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1ff9ae3cdb6e1e6, ; 901: Xamarin.AndroidX.Activity.dll => 208
	i64 u0xc226d517e7e30388, ; 902: lib_Xamarin.Grpc.Stub.dll.so => 342
	i64 u0xc26c064effb1dea9, ; 903: System.Buffers.dll => 7
	i64 u0xc28c50f32f81cc73, ; 904: ja/Microsoft.Maui.Controls.resources.dll => 375
	i64 u0xc2902f6cf5452577, ; 905: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 906: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 907: Xamarin.AndroidX.ViewPager2.dll => 277
	i64 u0xc30b52815b58ac2c, ; 908: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 909: System.Threading.Overlapped => 141
	i64 u0xc396b285e59e5493, ; 910: GoogleGson.dll => 174
	i64 u0xc3c86c1e5e12f03d, ; 911: WindowsBase => 166
	i64 u0xc421b61fd853169d, ; 912: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc4628cb75a5204b4, ; 913: lib_Xamarin.GooglePlayServices.CloudMessaging.dll.so => 327
	i64 u0xc463e077917aa21d, ; 914: System.Runtime.Serialization.Json => 113
	i64 u0xc491e38137aa3bcf, ; 915: Xamarin.Firebase.Storage => 307
	i64 u0xc4d3858ed4d08512, ; 916: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 254
	i64 u0xc50fded0ded1418c, ; 917: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 918: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5293b19e4dc230e, ; 919: Xamarin.AndroidX.Navigation.Fragment => 258
	i64 u0xc5325b2fcb37446f, ; 920: lib_System.Private.Xml.dll.so => 89
	i64 u0xc535cb9a21385d9b, ; 921: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 206
	i64 u0xc5a0f4b95a699af7, ; 922: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 923: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 924: Xamarin.AndroidX.Tracing.Tracing => 271
	i64 u0xc62af3e2d6d38289, ; 925: lib_Xamarin.Firebase.Firestore.dll.so => 298
	i64 u0xc6706bc8aa7fe265, ; 926: Xamarin.AndroidX.Annotation.Jvm => 212
	i64 u0xc7c01e7d7c93a110, ; 927: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 928: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 929: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 930: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 931: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc8b01aafa0eb7f80, ; 932: Xamarin.Firebase.Iid.dll => 300
	i64 u0xc9c62c8f354ac568, ; 933: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca3a723e7342c5b6, ; 934: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 388
	i64 u0xca5801070d9fccfb, ; 935: System.Text.Encoding => 136
	i64 u0xcab3493c70141c2d, ; 936: pl/Microsoft.Maui.Controls.resources => 380
	i64 u0xcacfddc9f7c6de76, ; 937: ro/Microsoft.Maui.Controls.resources.dll => 383
	i64 u0xcadbc92899a777f0, ; 938: Xamarin.AndroidX.Startup.StartupRuntime => 269
	i64 u0xcba1cb79f45292b5, ; 939: Xamarin.Android.Glide.GifDecoder.dll => 207
	i64 u0xcbb5f80c7293e696, ; 940: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 941: lib__Microsoft.Android.Resource.Designer.dll.so => 397
	i64 u0xcc15da1e07bbd994, ; 942: Xamarin.AndroidX.SlidingPaneLayout => 268
	i64 u0xcc2876b32ef2794c, ; 943: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 944: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 355
	i64 u0xcc76886e09b88260, ; 945: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 358
	i64 u0xcc9fa2923aa1c9ef, ; 946: System.Diagnostics.Contracts.dll => 25
	i64 u0xccf25c4b634ccd3a, ; 947: zh-Hans/Microsoft.Maui.Controls.resources.dll => 392
	i64 u0xcd10a42808629144, ; 948: System.Net.Requests => 73
	i64 u0xcd82116fea47859e, ; 949: Plugin.Firebase.CloudMessaging.dll => 193
	i64 u0xcdca1b920e9f53ba, ; 950: Xamarin.AndroidX.Interpolator => 239
	i64 u0xcdd0c48b6937b21c, ; 951: Xamarin.AndroidX.SwipeRefreshLayout => 270
	i64 u0xce9594d842cf35a9, ; 952: lib_Xamarin.Firebase.Common.Ktx.dll.so => 288
	i64 u0xcf1f7a2359f1a539, ; 953: Xamarin.JavaX.Inject.dll => 345
	i64 u0xcf23d8093f3ceadf, ; 954: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 955: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 956: System.Private.Xml.Linq => 88
	i64 u0xd04b5f59ed596e31, ; 957: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 958: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd07eb0f20de63ff6, ; 959: Xamarin.Firebase.Encoders.JSON => 296
	i64 u0xd0de8a113e976700, ; 960: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 961: System.Runtime.Extensions => 104
	i64 u0xd100f453fb70440c, ; 962: Xamarin.Firebase.Functions => 299
	i64 u0xd1194e1d8a8de83c, ; 963: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 242
	i64 u0xd12beacdfc14f696, ; 964: System.Dynamic.Runtime => 37
	i64 u0xd14743e7ab3d6623, ; 965: lib_Xamarin.Firebase.Config.dll.so => 290
	i64 u0xd198e7ce1b6a8344, ; 966: System.Net.Quic.dll => 72
	i64 u0xd20588bdafd1c17c, ; 967: Xamarin.Grpc.Stub.dll => 342
	i64 u0xd3144156a3727ebe, ; 968: Xamarin.Google.Guava.ListenableFuture => 321
	i64 u0xd333d0af9e423810, ; 969: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 970: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3426d966bb704f5, ; 971: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 214
	i64 u0xd3651b6fc3125825, ; 972: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 973: Microsoft.Extensions.Logging.dll => 179
	i64 u0xd3801faafafb7698, ; 974: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e4c8d6a2d5d470, ; 975: it/Microsoft.Maui.Controls.resources => 374
	i64 u0xd3edcc1f25459a50, ; 976: System.Reflection.Emit => 93
	i64 u0xd4645626dffec99d, ; 977: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 178
	i64 u0xd4fa0abb79079ea9, ; 978: System.Security.Principal.dll => 129
	i64 u0xd5507e11a2b2839f, ; 979: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 254
	i64 u0xd553306bfc9d438f, ; 980: Plugin.Firebase.Functions => 198
	i64 u0xd5d04bef8478ea19, ; 981: Xamarin.AndroidX.Tracing.Tracing.dll => 271
	i64 u0xd5d562f8d2ec1c98, ; 982: Xamarin.GooglePlayServices.Measurement.Impl.dll => 331
	i64 u0xd60815f26a12e140, ; 983: Microsoft.Extensions.Logging.Debug.dll => 181
	i64 u0xd65786d27a4ad960, ; 984: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 394
	i64 u0xd6694f8359737e4e, ; 985: Xamarin.AndroidX.SavedState => 265
	i64 u0xd6949e129339eae5, ; 986: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 227
	i64 u0xd6d21782156bc35b, ; 987: Xamarin.AndroidX.SwipeRefreshLayout.dll => 270
	i64 u0xd6de019f6af72435, ; 988: Xamarin.AndroidX.ConstraintLayout.Core.dll => 224
	i64 u0xd6ed09ee80649430, ; 989: lib_Xamarin.Grpc.Core.dll.so => 339
	i64 u0xd70956d1e6deefb9, ; 990: Jsr305Binding => 315
	i64 u0xd72329819cbbbc44, ; 991: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 176
	i64 u0xd72c760af136e863, ; 992: System.Xml.XmlSerializer.dll => 163
	i64 u0xd74883ff25771958, ; 993: Xamarin.Io.PerfMark.PerfMarkApi => 344
	i64 u0xd74f2028e57f6faf, ; 994: Plugin.Firebase.Storage => 200
	i64 u0xd753f071e44c2a03, ; 995: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd7b3764ada9d341d, ; 996: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 180
	i64 u0xd7dfd89d34e8dd1d, ; 997: Square.OkIO => 202
	i64 u0xd7e8ce535a3e02a1, ; 998: lib_Plugin.Firebase.Analytics.dll.so => 191
	i64 u0xd7f0088bc5ad71f2, ; 999: Xamarin.AndroidX.VersionedParcelable => 275
	i64 u0xd7f086420957bfa6, ; 1000: lib_Plugin.Firebase.CloudMessaging.dll.so => 193
	i64 u0xd896bbf4bbb77722, ; 1001: Plugin.Firebase.Crashlytics => 195
	i64 u0xd8fb25e28ae30a12, ; 1002: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 262
	i64 u0xda1dfa4c534a9251, ; 1003: Microsoft.Extensions.DependencyInjection => 177
	i64 u0xdab94026b007e005, ; 1004: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 324
	i64 u0xdad05a11827959a3, ; 1005: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 1006: System.IO.FileSystem.Primitives => 49
	i64 u0xdaff1e02a729f3a2, ; 1007: Xamarin.Grpc.Android => 336
	i64 u0xdb5383ab5865c007, ; 1008: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 390
	i64 u0xdb58816721c02a59, ; 1009: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdbeda89f832aa805, ; 1010: vi/Microsoft.Maui.Controls.resources.dll => 390
	i64 u0xdbf2a779fbc3ac31, ; 1011: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 1012: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 1013: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc75032002d1a212, ; 1014: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 1015: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 1016: Microsoft.Extensions.Logging => 179
	i64 u0xdd2b722d78ef5f43, ; 1017: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 1018: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 1019: System.Numerics.dll => 84
	i64 u0xddaac4821f63b25f, ; 1020: lib_Xamarin.GooglePlayServices.Measurement.Sdk.Api.dll.so => 333
	i64 u0xdddcdd701e911af1, ; 1021: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 240
	i64 u0xdde30e6b77aa6f6c, ; 1022: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 392
	i64 u0xde110ae80fa7c2e2, ; 1023: System.Xml.XDocument.dll => 159
	i64 u0xde4726fcdf63a198, ; 1024: Xamarin.AndroidX.Transition => 272
	i64 u0xde572c2b2fb32f93, ; 1025: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xde8769ebda7d8647, ; 1026: hr/Microsoft.Maui.Controls.resources.dll => 371
	i64 u0xdea791ecb8d4fb73, ; 1027: Xamarin.Google.Android.Play.Integrity.dll => 313
	i64 u0xdee075f3477ef6be, ; 1028: Xamarin.AndroidX.ExifInterface.dll => 236
	i64 u0xdee9c5f72a60d9b7, ; 1029: Xamarin.GooglePlayServices.Measurement.Sdk.Api.dll => 333
	i64 u0xdf4b773de8fb1540, ; 1030: System.Net.dll => 82
	i64 u0xdf5cc1fa03af29c1, ; 1031: Xamarin.GooglePlayServices.Measurement.dll => 328
	i64 u0xdfa254ebb4346068, ; 1032: System.Net.Ping => 70
	i64 u0xe0142572c095a480, ; 1033: Xamarin.AndroidX.AppCompat.dll => 213
	i64 u0xe021eaa401792a05, ; 1034: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 1035: Xamarin.AndroidX.CoordinatorLayout.dll => 225
	i64 u0xe03ac59b394077a7, ; 1036: lib_Xamarin.Firebase.Messaging.dll.so => 305
	i64 u0xe0496b9d65ef5474, ; 1037: Xamarin.Android.Glide.DiskLruCache.dll => 206
	i64 u0xe10b760bb1462e7a, ; 1038: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe14ff8e84737288a, ; 1039: Xamarin.Firebase.Installations.InterOp.dll => 303
	i64 u0xe1566bbdb759c5af, ; 1040: Microsoft.Maui.Controls.HotReload.Forms.dll => 394
	i64 u0xe192a588d4410686, ; 1041: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 1042: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 1043: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 1044: System.Private.Xml.Linq.dll => 88
	i64 u0xe1de400f85bb1ea2, ; 1045: Xamarin.GooglePlayServices.Measurement.Impl => 331
	i64 u0xe1e199c8ab02e356, ; 1046: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 1047: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 1048: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 1049: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2420585aeceb728, ; 1050: System.Net.Requests.dll => 73
	i64 u0xe247baa54eab2a37, ; 1051: Xamarin.Firebase.Common.Ktx.dll => 288
	i64 u0xe26692647e6bcb62, ; 1052: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 249
	i64 u0xe2799d9c4661dbbc, ; 1053: Xamarin.GoogleAndroid.Annotations => 322
	i64 u0xe27a4eed1bd77064, ; 1054: Xamarin.Firebase.Abt => 281
	i64 u0xe29b73bc11392966, ; 1055: lib-id-Microsoft.Maui.Controls.resources.dll.so => 373
	i64 u0xe2a295b75d36df94, ; 1056: Xamarin.Firebase.Auth.dll => 285
	i64 u0xe2ad448dee50fbdf, ; 1057: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 1058: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1059: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 1060: Mono.Android.Export.dll => 170
	i64 u0xe3811d68d4fe8463, ; 1061: pt-BR/Microsoft.Maui.Controls.resources.dll => 381
	i64 u0xe392dad93475f892, ; 1062: Xamarin.Firebase.Config => 290
	i64 u0xe3b7cbae5ad66c75, ; 1063: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe3f96d37a010f8d7, ; 1064: lib_Xamarin.Firebase.Dynamic.Links.dll.so => 294
	i64 u0xe494f7ced4ecd10a, ; 1065: hu/Microsoft.Maui.Controls.resources.dll => 372
	i64 u0xe4a9b1e40d1e8917, ; 1066: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 367
	i64 u0xe4f74a0b5bf9703f, ; 1067: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 1068: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 1069: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1070: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 1071: System.Xml.dll => 164
	i64 u0xe7bea09c4900a191, ; 1072: Xamarin.AndroidX.VectorDrawable.dll => 273
	i64 u0xe7e03cc18dcdeb49, ; 1073: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1074: lib_System.Configuration.dll.so => 19
	i64 u0xe836920fb94f1cc4, ; 1075: Square.OkHttp3 => 201
	i64 u0xe83ddbccfc6aff3f, ; 1076: Xamarin.Kotlin.StdLib.Jdk7 => 349
	i64 u0xe86b0df4ba9e5db8, ; 1077: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 248
	i64 u0xe896622fe0902957, ; 1078: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 1079: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 1080: Microsoft.Win32.Registry => 5
	i64 u0xe8e7b675503ab70a, ; 1081: lib_Xamarin.Firebase.Functions.dll.so => 299
	i64 u0xe8efe6c2171f7cd2, ; 1082: Xamarin.Google.Guava.dll => 319
	i64 u0xe93ca41931f1f2d0, ; 1083: Xamarin.Grpc.Api.dll => 337
	i64 u0xe957c3976986ab72, ; 1084: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 279
	i64 u0xe968ab252d3dda82, ; 1085: lib_Xamarin.Google.Android.DataTransport.TransportRuntime.dll.so => 311
	i64 u0xe98163eb702ae5c5, ; 1086: Xamarin.AndroidX.Arch.Core.Runtime => 216
	i64 u0xe994f23ba4c143e5, ; 1087: Xamarin.KotlinX.Coroutines.Android => 353
	i64 u0xe9b9c8c0458fd92a, ; 1088: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 1089: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 269
	i64 u0xea5a4efc2ad81d1b, ; 1090: Xamarin.Google.ErrorProne.Annotations => 318
	i64 u0xeb05d8ab87158d10, ; 1091: Plugin.Firebase => 190
	i64 u0xeb2313fe9d65b785, ; 1092: Xamarin.AndroidX.ConstraintLayout.dll => 223
	i64 u0xeb6e275e78cb8d42, ; 1093: Xamarin.AndroidX.LocalBroadcastManager.dll => 256
	i64 u0xeb710a05c0467d46, ; 1094: Xamarin.GooglePlayServices.CloudMessaging => 327
	i64 u0xeb9973cda26e858f, ; 1095: Xamarin.Firebase.Common.dll => 287
	i64 u0xebbcc2bc51cb4a56, ; 1096: Plugin.Firebase.Firestore.dll => 197
	i64 u0xed19c616b3fcb7eb, ; 1097: Xamarin.AndroidX.VersionedParcelable.dll => 275
	i64 u0xed60c6fa891c051a, ; 1098: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 396
	i64 u0xed71cc7167e5bfad, ; 1099: lib_Plugin.Firebase.DynamicLinks.dll.so => 196
	i64 u0xedc4817167106c23, ; 1100: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 1101: System.Memory.dll => 63
	i64 u0xedc8e4ca71a02a8b, ; 1102: Xamarin.AndroidX.Navigation.Runtime.dll => 259
	i64 u0xee81f5b3f1c4f83b, ; 1103: System.Threading.ThreadPool => 147
	i64 u0xeeb7ebb80150501b, ; 1104: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 220
	i64 u0xeec0ecc44f1bf592, ; 1105: lib_Xamarin.Firebase.Storage.dll.so => 307
	i64 u0xeefc635595ef57f0, ; 1106: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 1107: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef432781d5667f61, ; 1108: Xamarin.AndroidX.Print => 261
	i64 u0xef602c523fe2e87a, ; 1109: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 321
	i64 u0xef72742e1bcca27a, ; 1110: Microsoft.Maui.Essentials.dll => 187
	i64 u0xefd1e0c4e5c9b371, ; 1111: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 1112: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 1113: Xamarin.AndroidX.Activity => 208
	i64 u0xf00c29406ea45e19, ; 1114: es/Microsoft.Maui.Controls.resources.dll => 366
	i64 u0xf09e47b6ae914f6e, ; 1115: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 1116: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 1117: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 1118: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 1119: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 247
	i64 u0xf11b621fc87b983f, ; 1120: Microsoft.Maui.Controls.Xaml.dll => 185
	i64 u0xf161f4f3c3b7e62c, ; 1121: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1122: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 1123: System.Formats.Asn1.dll => 38
	i64 u0xf2039b1a33e63e8e, ; 1124: Xamarin.Google.Android.DataTransport.TransportApi.dll => 309
	i64 u0xf238bd79489d3a96, ; 1125: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 379
	i64 u0xf2a69492c6bd46b0, ; 1126: lib_Xamarin.Kotlin.StdLib.Jdk7.dll.so => 349
	i64 u0xf2feea356ba760af, ; 1127: Xamarin.AndroidX.Arch.Core.Runtime.dll => 216
	i64 u0xf300e085f8acd238, ; 1128: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 1129: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf37221fda4ef8830, ; 1130: lib_Xamarin.Google.Android.Material.dll.so => 312
	i64 u0xf3ad9b8fb3eefd12, ; 1131: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 1132: System => 165
	i64 u0xf3f82de7e22a8032, ; 1133: Xamarin.GooglePlayServices.Ads.Identifier.dll => 323
	i64 u0xf408654b2a135055, ; 1134: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 1135: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 1136: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf483be3bba89b4ff, ; 1137: lib_Xamarin.Grpc.Api.dll.so => 337
	i64 u0xf4c1dd70a5496a17, ; 1138: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 1139: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 1140: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 230
	i64 u0xf518f63ead11fcd1, ; 1141: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 1142: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 1143: Xamarin.AndroidX.CoordinatorLayout => 225
	i64 u0xf6742cbf457c450b, ; 1144: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 248
	i64 u0xf70c0a7bf8ccf5af, ; 1145: System.Web => 154
	i64 u0xf73b506af603bfe1, ; 1146: lib_Square.OkIO.dll.so => 202
	i64 u0xf77b20923f07c667, ; 1147: de/Microsoft.Maui.Controls.resources.dll => 364
	i64 u0xf7e2cac4c45067b3, ; 1148: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7e74930e0e3d214, ; 1149: zh-HK/Microsoft.Maui.Controls.resources.dll => 391
	i64 u0xf7fa0bf77fe677cc, ; 1150: Newtonsoft.Json.dll => 189
	i64 u0xf84773b5c81e3cef, ; 1151: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 389
	i64 u0xf895bc445b304688, ; 1152: lib_Plugin.Firebase.Storage.dll.so => 200
	i64 u0xf8aac5ea82de1348, ; 1153: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 1154: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8dacc6dd9573437, ; 1155: Square.OkIO.dll => 202
	i64 u0xf8e045dc345b2ea3, ; 1156: lib_Xamarin.AndroidX.RecyclerView.dll.so => 263
	i64 u0xf915dc29808193a1, ; 1157: System.Web.HttpUtility.dll => 153
	i64 u0xf96c777a2a0686f4, ; 1158: hi/Microsoft.Maui.Controls.resources.dll => 370
	i64 u0xf9be54c8bcf8ff3b, ; 1159: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 1160: Microsoft.Extensions.Options => 182
	i64 u0xfa0e82300e67f913, ; 1161: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1162: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1163: lib_System.Net.Security.dll.so => 74
	i64 u0xfa5ed7226d978949, ; 1164: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 360
	i64 u0xfa645d91e9fc4cba, ; 1165: System.Threading.Thread => 146
	i64 u0xfad4d2c770e827f9, ; 1166: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb06dd2338e6f7c4, ; 1167: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 1168: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb4159a996444a12, ; 1169: Xamarin.Firebase.Dynamic.Links.dll => 294
	i64 u0xfb846e949baff5ea, ; 1170: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 1171: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 1172: lib_System.Net.Http.dll.so => 65
	i64 u0xfc61ddcf78dd1f54, ; 1173: Xamarin.AndroidX.LocalBroadcastManager => 256
	i64 u0xfc6b7527cc280b3f, ; 1174: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc719aec26adf9d9, ; 1175: Xamarin.AndroidX.Navigation.Fragment.dll => 258
	i64 u0xfc82690c2fe2735c, ; 1176: Xamarin.AndroidX.Lifecycle.Process.dll => 246
	i64 u0xfc93fc307d279893, ; 1177: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1178: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 1179: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 232
	i64 u0xfd3ce7bc9232d417, ; 1180: Xamarin.Firebase.Firestore.dll => 298
	i64 u0xfd49b3c1a76e2748, ; 1181: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 1182: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 1183: Xamarin.AndroidX.Fragment => 237
	i64 u0xfd8dd91a2c26bd5d, ; 1184: Xamarin.AndroidX.Lifecycle.Runtime => 247
	i64 u0xfda36abccf05cf5c, ; 1185: System.Net.WebSockets.Client => 80
	i64 u0xfddbe9695626a7f5, ; 1186: Xamarin.AndroidX.Lifecycle.Common => 241
	i64 u0xfeae9952cf03b8cb, ; 1187: tr/Microsoft.Maui.Controls.resources => 388
	i64 u0xfebe1950717515f9, ; 1188: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 245
	i64 u0xff270a55858bac8d, ; 1189: System.Security.Principal => 129
	i64 u0xff4093883e1e70fd, ; 1190: lib_Plugin.Firebase.Functions.dll.so => 198
	i64 u0xff9b54613e0d2cc8, ; 1191: System.Net.Http.Json => 64
	i64 u0xffb5607c2db1b7e8, ; 1192: Xamarin.Kotlin.StdLib.Jdk8 => 350
	i64 u0xffdb7a971be4ec73 ; 1193: System.ValueTuple.dll => 152
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1194 x i32] [
	i32 42, i32 354, i32 270, i32 13, i32 259, i32 105, i32 171, i32 48,
	i32 213, i32 7, i32 86, i32 384, i32 362, i32 390, i32 233, i32 338,
	i32 348, i32 71, i32 335, i32 263, i32 317, i32 12, i32 186, i32 102,
	i32 391, i32 156, i32 19, i32 238, i32 220, i32 161, i32 235, i32 199,
	i32 273, i32 167, i32 308, i32 384, i32 10, i32 181, i32 274, i32 96,
	i32 230, i32 232, i32 317, i32 13, i32 182, i32 10, i32 326, i32 127,
	i32 289, i32 95, i32 200, i32 140, i32 39, i32 385, i32 305, i32 358,
	i32 276, i32 381, i32 172, i32 207, i32 5, i32 187, i32 67, i32 267,
	i32 130, i32 266, i32 308, i32 234, i32 68, i32 302, i32 221, i32 66,
	i32 196, i32 57, i32 229, i32 52, i32 43, i32 125, i32 67, i32 81,
	i32 249, i32 396, i32 158, i32 92, i32 99, i32 263, i32 141, i32 300,
	i32 151, i32 217, i32 368, i32 162, i32 169, i32 369, i32 283, i32 280,
	i32 178, i32 81, i32 314, i32 396, i32 221, i32 4, i32 5, i32 51,
	i32 101, i32 342, i32 328, i32 56, i32 330, i32 120, i32 98, i32 168,
	i32 118, i32 354, i32 21, i32 372, i32 137, i32 97, i32 358, i32 77,
	i32 378, i32 261, i32 269, i32 119, i32 330, i32 8, i32 165, i32 387,
	i32 70, i32 206, i32 250, i32 264, i32 322, i32 171, i32 295, i32 145,
	i32 40, i32 280, i32 267, i32 47, i32 30, i32 320, i32 294, i32 260,
	i32 376, i32 144, i32 299, i32 182, i32 163, i32 28, i32 84, i32 271,
	i32 317, i32 77, i32 43, i32 29, i32 42, i32 103, i32 201, i32 117,
	i32 341, i32 211, i32 45, i32 91, i32 387, i32 56, i32 148, i32 395,
	i32 326, i32 146, i32 100, i32 49, i32 194, i32 20, i32 226, i32 114,
	i32 292, i32 204, i32 368, i32 316, i32 313, i32 194, i32 347, i32 183,
	i32 298, i32 94, i32 58, i32 373, i32 371, i32 81, i32 316, i32 169,
	i32 26, i32 303, i32 336, i32 350, i32 71, i32 300, i32 262, i32 236,
	i32 394, i32 389, i32 69, i32 33, i32 190, i32 367, i32 14, i32 139,
	i32 38, i32 393, i32 222, i32 310, i32 380, i32 134, i32 92, i32 88,
	i32 149, i32 320, i32 386, i32 24, i32 292, i32 199, i32 138, i32 57,
	i32 51, i32 365, i32 295, i32 29, i32 157, i32 34, i32 164, i32 292,
	i32 334, i32 304, i32 310, i32 237, i32 52, i32 397, i32 278, i32 90,
	i32 293, i32 296, i32 218, i32 35, i32 368, i32 157, i32 9, i32 366,
	i32 76, i32 339, i32 55, i32 186, i32 362, i32 295, i32 184, i32 13,
	i32 285, i32 277, i32 175, i32 215, i32 109, i32 341, i32 253, i32 32,
	i32 289, i32 104, i32 84, i32 92, i32 53, i32 96, i32 346, i32 58,
	i32 9, i32 102, i32 229, i32 68, i32 276, i32 361, i32 189, i32 125,
	i32 264, i32 116, i32 135, i32 193, i32 126, i32 106, i32 347, i32 131,
	i32 340, i32 286, i32 217, i32 321, i32 147, i32 156, i32 238, i32 226,
	i32 233, i32 304, i32 264, i32 97, i32 24, i32 268, i32 143, i32 261,
	i32 257, i32 3, i32 0, i32 167, i32 214, i32 191, i32 100, i32 161,
	i32 99, i32 25, i32 93, i32 168, i32 172, i32 209, i32 3, i32 380,
	i32 235, i32 329, i32 1, i32 114, i32 347, i32 238, i32 246, i32 33,
	i32 6, i32 328, i32 384, i32 284, i32 156, i32 356, i32 382, i32 53,
	i32 240, i32 324, i32 85, i32 287, i32 275, i32 260, i32 44, i32 245,
	i32 104, i32 47, i32 138, i32 203, i32 64, i32 333, i32 297, i32 255,
	i32 69, i32 80, i32 59, i32 89, i32 154, i32 215, i32 133, i32 110,
	i32 374, i32 255, i32 262, i32 171, i32 282, i32 134, i32 297, i32 0,
	i32 140, i32 40, i32 361, i32 323, i32 336, i32 184, i32 334, i32 60,
	i32 252, i32 286, i32 79, i32 25, i32 36, i32 314, i32 99, i32 249,
	i32 71, i32 22, i32 226, i32 188, i32 385, i32 196, i32 121, i32 69,
	i32 107, i32 391, i32 256, i32 119, i32 117, i32 241, i32 242, i32 11,
	i32 2, i32 124, i32 115, i32 311, i32 142, i32 313, i32 41, i32 87,
	i32 320, i32 331, i32 210, i32 173, i32 27, i32 148, i32 375, i32 177,
	i32 318, i32 209, i32 1, i32 198, i32 211, i32 343, i32 340, i32 44,
	i32 225, i32 149, i32 240, i32 18, i32 319, i32 199, i32 86, i32 363,
	i32 325, i32 41, i32 245, i32 219, i32 350, i32 250, i32 94, i32 179,
	i32 28, i32 41, i32 78, i32 234, i32 222, i32 144, i32 0, i32 108,
	i32 220, i32 301, i32 11, i32 105, i32 281, i32 137, i32 16, i32 122,
	i32 66, i32 157, i32 22, i32 309, i32 365, i32 357, i32 102, i32 177,
	i32 355, i32 301, i32 63, i32 58, i32 185, i32 364, i32 110, i32 173,
	i32 286, i32 319, i32 353, i32 9, i32 312, i32 120, i32 98, i32 293,
	i32 105, i32 356, i32 253, i32 184, i32 111, i32 212, i32 49, i32 20,
	i32 293, i32 252, i32 228, i32 72, i32 224, i32 310, i32 155, i32 39,
	i32 363, i32 35, i32 351, i32 38, i32 369, i32 279, i32 108, i32 324,
	i32 329, i32 378, i32 21, i32 330, i32 201, i32 346, i32 251, i32 203,
	i32 188, i32 15, i32 183, i32 79, i32 79, i32 228, i32 183, i32 231,
	i32 258, i32 266, i32 152, i32 21, i32 302, i32 186, i32 362, i32 50,
	i32 51, i32 339, i32 348, i32 388, i32 378, i32 94, i32 205, i32 359,
	i32 374, i32 16, i32 192, i32 123, i32 371, i32 160, i32 45, i32 318,
	i32 174, i32 116, i32 63, i32 166, i32 175, i32 14, i32 265, i32 111,
	i32 212, i32 60, i32 352, i32 121, i32 377, i32 2, i32 387, i32 287,
	i32 304, i32 237, i32 311, i32 251, i32 309, i32 351, i32 251, i32 6,
	i32 219, i32 367, i32 233, i32 197, i32 280, i32 17, i32 385, i32 364,
	i32 77, i32 223, i32 326, i32 131, i32 346, i32 377, i32 83, i32 181,
	i32 12, i32 34, i32 119, i32 357, i32 246, i32 340, i32 235, i32 85,
	i32 204, i32 335, i32 18, i32 276, i32 176, i32 244, i32 72, i32 395,
	i32 95, i32 165, i32 239, i32 82, i32 393, i32 284, i32 213, i32 218,
	i32 352, i32 154, i32 36, i32 151, i32 389, i32 332, i32 392, i32 144,
	i32 56, i32 113, i32 219, i32 273, i32 338, i32 272, i32 314, i32 37,
	i32 393, i32 175, i32 115, i32 211, i32 14, i32 205, i32 341, i32 306,
	i32 146, i32 43, i32 192, i32 187, i32 209, i32 283, i32 98, i32 355,
	i32 168, i32 16, i32 48, i32 107, i32 97, i32 255, i32 27, i32 128,
	i32 29, i32 296, i32 369, i32 306, i32 266, i32 128, i32 44, i32 228,
	i32 323, i32 234, i32 149, i32 8, i32 189, i32 257, i32 370, i32 383,
	i32 335, i32 382, i32 132, i32 381, i32 42, i32 357, i32 338, i32 359,
	i32 33, i32 397, i32 46, i32 143, i32 252, i32 185, i32 243, i32 281,
	i32 285, i32 229, i32 138, i32 62, i32 132, i32 361, i32 48, i32 160,
	i32 289, i32 216, i32 243, i32 205, i32 241, i32 291, i32 327, i32 377,
	i32 272, i32 46, i32 164, i32 239, i32 191, i32 282, i32 366, i32 236,
	i32 373, i32 344, i32 188, i32 325, i32 18, i32 8, i32 283, i32 174,
	i32 227, i32 307, i32 124, i32 59, i32 141, i32 259, i32 376, i32 247,
	i32 315, i32 194, i32 278, i32 150, i32 329, i32 142, i32 359, i32 354,
	i32 351, i32 126, i32 353, i32 303, i32 160, i32 162, i32 230, i32 208,
	i32 176, i32 195, i32 297, i32 332, i32 379, i32 26, i32 257, i32 244,
	i32 82, i32 278, i32 127, i32 316, i32 101, i32 343, i32 148, i32 312,
	i32 260, i32 54, i32 344, i32 162, i32 167, i32 131, i32 37, i32 274,
	i32 376, i32 22, i32 195, i32 112, i32 90, i32 231, i32 50, i32 60,
	i32 122, i32 83, i32 127, i32 163, i32 315, i32 166, i32 265, i32 267,
	i32 232, i32 204, i32 248, i32 4, i32 242, i32 305, i32 372, i32 170,
	i32 2, i32 325, i32 253, i32 116, i32 210, i32 332, i32 322, i32 19,
	i32 180, i32 288, i32 89, i32 65, i32 192, i32 30, i32 178, i32 365,
	i32 224, i32 59, i32 111, i32 244, i32 32, i32 128, i32 159, i32 383,
	i32 302, i32 222, i32 140, i32 231, i32 379, i32 153, i32 17, i32 221,
	i32 207, i32 75, i32 74, i32 15, i32 169, i32 282, i32 85, i32 345,
	i32 352, i32 343, i32 124, i32 291, i32 243, i32 254, i32 223, i32 386,
	i32 250, i32 34, i32 118, i32 139, i32 122, i32 106, i32 363, i32 345,
	i32 395, i32 301, i32 274, i32 218, i32 306, i32 370, i32 360, i32 197,
	i32 54, i32 47, i32 284, i32 28, i32 308, i32 145, i32 180, i32 349,
	i32 147, i32 348, i32 291, i32 35, i32 386, i32 173, i32 279, i32 75,
	i32 161, i32 1, i32 356, i32 268, i32 382, i32 375, i32 159, i32 12,
	i32 155, i32 151, i32 76, i32 103, i32 112, i32 337, i32 215, i32 203,
	i32 65, i32 66, i32 277, i32 290, i32 45, i32 217, i32 109, i32 334,
	i32 7, i32 214, i32 55, i32 210, i32 64, i32 360, i32 227, i32 20,
	i32 109, i32 101, i32 62, i32 190, i32 142, i32 208, i32 342, i32 7,
	i32 375, i32 170, i32 50, i32 277, i32 115, i32 141, i32 174, i32 166,
	i32 80, i32 327, i32 113, i32 307, i32 254, i32 17, i32 73, i32 258,
	i32 89, i32 206, i32 87, i32 120, i32 271, i32 298, i32 212, i32 135,
	i32 153, i32 106, i32 11, i32 90, i32 300, i32 31, i32 388, i32 136,
	i32 380, i32 383, i32 269, i32 207, i32 40, i32 397, i32 268, i32 139,
	i32 355, i32 358, i32 25, i32 392, i32 73, i32 193, i32 239, i32 270,
	i32 288, i32 345, i32 27, i32 67, i32 88, i32 95, i32 113, i32 296,
	i32 31, i32 104, i32 299, i32 242, i32 37, i32 290, i32 72, i32 342,
	i32 321, i32 108, i32 123, i32 214, i32 87, i32 179, i32 86, i32 374,
	i32 93, i32 178, i32 129, i32 254, i32 198, i32 271, i32 331, i32 181,
	i32 394, i32 265, i32 227, i32 270, i32 224, i32 339, i32 315, i32 176,
	i32 163, i32 344, i32 200, i32 130, i32 180, i32 202, i32 191, i32 275,
	i32 193, i32 195, i32 262, i32 177, i32 324, i32 10, i32 49, i32 336,
	i32 390, i32 91, i32 390, i32 150, i32 62, i32 136, i32 150, i32 61,
	i32 179, i32 117, i32 137, i32 84, i32 333, i32 240, i32 392, i32 159,
	i32 272, i32 143, i32 371, i32 313, i32 236, i32 333, i32 82, i32 328,
	i32 70, i32 213, i32 136, i32 225, i32 305, i32 206, i32 125, i32 303,
	i32 394, i32 54, i32 110, i32 130, i32 88, i32 331, i32 23, i32 74,
	i32 129, i32 31, i32 73, i32 288, i32 249, i32 322, i32 281, i32 373,
	i32 285, i32 158, i32 23, i32 4, i32 170, i32 381, i32 290, i32 123,
	i32 294, i32 372, i32 367, i32 114, i32 172, i32 32, i32 3, i32 164,
	i32 273, i32 30, i32 19, i32 201, i32 349, i32 248, i32 93, i32 36,
	i32 5, i32 299, i32 319, i32 337, i32 279, i32 311, i32 216, i32 353,
	i32 155, i32 269, i32 318, i32 190, i32 223, i32 256, i32 327, i32 287,
	i32 197, i32 275, i32 396, i32 196, i32 76, i32 63, i32 259, i32 147,
	i32 220, i32 307, i32 121, i32 134, i32 261, i32 321, i32 187, i32 100,
	i32 39, i32 208, i32 366, i32 68, i32 26, i32 75, i32 78, i32 247,
	i32 185, i32 24, i32 152, i32 38, i32 309, i32 379, i32 349, i32 216,
	i32 133, i32 103, i32 312, i32 57, i32 165, i32 323, i32 91, i32 61,
	i32 132, i32 337, i32 46, i32 133, i32 230, i32 145, i32 78, i32 225,
	i32 248, i32 154, i32 202, i32 364, i32 83, i32 391, i32 189, i32 389,
	i32 200, i32 61, i32 96, i32 202, i32 263, i32 153, i32 370, i32 118,
	i32 182, i32 6, i32 15, i32 74, i32 360, i32 146, i32 52, i32 70,
	i32 23, i32 294, i32 158, i32 126, i32 65, i32 256, i32 112, i32 258,
	i32 246, i32 55, i32 53, i32 232, i32 298, i32 107, i32 135, i32 237,
	i32 247, i32 80, i32 241, i32 388, i32 245, i32 129, i32 198, i32 64,
	i32 350, i32 152
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 0ccdc57cf7fc59bd3f6cbf900c9cdbebadfe4609"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
