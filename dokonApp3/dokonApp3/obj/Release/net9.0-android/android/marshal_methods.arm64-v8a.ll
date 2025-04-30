; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [164 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [492 x i64] [
	i64 u0x0071cf2d27b7d61e, ; 0: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 83
	i64 u0x02123411c4e01926, ; 1: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 79
	i64 u0x02abedc11addc1ed, ; 2: lib_Mono.Android.Runtime.dll.so => 162
	i64 u0x032267b2a94db371, ; 3: lib_Xamarin.AndroidX.AppCompat.dll.so => 62
	i64 u0x043032f1d071fae0, ; 4: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 5: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 6: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 7: System.Net.Primitives => 132
	i64 u0x051a3be159e4ef99, ; 8: Xamarin.GooglePlayServices.Tasks => 104
	i64 u0x0565d18c6da3de38, ; 9: Xamarin.AndroidX.RecyclerView => 81
	i64 u0x0581db89237110e9, ; 10: lib_System.Collections.dll.so => 114
	i64 u0x05989cb940b225a9, ; 11: Microsoft.Maui.dll => 46
	i64 u0x06076b5d2b581f08, ; 12: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x06388ffe9f6c161a, ; 13: System.Xml.Linq.dll => 156
	i64 u0x0680a433c781bb3d, ; 14: Xamarin.AndroidX.Collection.Jvm => 65
	i64 u0x071cdb5520b57ab2, ; 15: lib_Plugin.Firebase.RemoteConfig.dll.so => 59
	i64 u0x07c57877c7ba78ad, ; 16: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 17: System.Collections.NonGeneric => 112
	i64 u0x08a7c865576bbde7, ; 18: System.Reflection.Primitives => 141
	i64 u0x08f3c9788ee2153c, ; 19: Xamarin.AndroidX.DrawerLayout => 70
	i64 u0x0919c28b89381a0b, ; 20: lib_Microsoft.Extensions.Options.dll.so => 42
	i64 u0x092266563089ae3e, ; 21: lib_System.Collections.NonGeneric.dll.so => 112
	i64 u0x098b50f911ccea8d, ; 22: lib_Xamarin.GooglePlayServices.Basement.dll.so => 102
	i64 u0x09d144a7e214d457, ; 23: System.Security.Cryptography => 148
	i64 u0x09da6dfc3439e851, ; 24: lib_Xamarin.Firebase.Components.dll.so => 90
	i64 u0x0a76609879dc4df2, ; 25: Plugin.Firebase.Storage.dll => 60
	i64 u0x0b3b632c3bbee20c, ; 26: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b521223ae889727, ; 27: Xamarin.Firebase.Messaging => 96
	i64 u0x0b6aff547b84fbe9, ; 28: Xamarin.KotlinX.Serialization.Core.Jvm => 107
	i64 u0x0be2e1f8ce4064ed, ; 29: Xamarin.AndroidX.ViewPager => 85
	i64 u0x0c3ca6cc978e2aae, ; 30: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c59ad9fbbd43abe, ; 31: Mono.Android => 163
	i64 u0x0c7790f60165fc06, ; 32: lib_Microsoft.Maui.Essentials.dll.so => 47
	i64 u0x0fcf2ab35058c989, ; 33: Plugin.Firebase.DynamicLinks.dll => 56
	i64 u0x102a31b45304b1da, ; 34: Xamarin.AndroidX.CustomView => 69
	i64 u0x10f6cfcbcf801616, ; 35: System.IO.Compression.Brotli => 125
	i64 u0x123639456fb056da, ; 36: System.Reflection.Emit.Lightweight.dll => 140
	i64 u0x125b7f94acb989db, ; 37: Xamarin.AndroidX.RecyclerView.dll => 81
	i64 u0x13a01de0cbc3f06c, ; 38: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 39: lib_Java.Interop.dll.so => 161
	i64 u0x13f1e880c25d96d1, ; 40: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 41: Microsoft.Extensions.DependencyInjection.Abstractions => 39
	i64 u0x17b56e25558a5d36, ; 42: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17f9358913beb16a, ; 43: System.Text.Encodings.Web => 150
	i64 u0x18402a709e357f3b, ; 44: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 107
	i64 u0x18f0ce884e87d89a, ; 45: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a91866a319e9259, ; 46: lib_System.Collections.Concurrent.dll.so => 111
	i64 u0x1aac34d1917ba5d3, ; 47: lib_System.dll.so => 159
	i64 u0x1aad60783ffa3e5b, ; 48: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c753b5ff15bce1b, ; 49: Mono.Android.Runtime.dll => 162
	i64 u0x1e0486c615e0dc7e, ; 50: Xamarin.Firebase.Dynamic.Links => 93
	i64 u0x1e3d87657e9659bc, ; 51: Xamarin.AndroidX.Navigation.UI => 80
	i64 u0x1e71143913d56c10, ; 52: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1e8303b9cb0977f2, ; 53: Xamarin.Firebase.Functions.dll => 95
	i64 u0x1ed8fcce5e9b50a0, ; 54: Microsoft.Extensions.Options.dll => 42
	i64 u0x209375905fcc1bad, ; 55: lib_System.IO.Compression.Brotli.dll.so => 125
	i64 u0x2174319c0d835bc9, ; 56: System.Runtime => 147
	i64 u0x21cc7e445dcd5469, ; 57: System.Reflection.Emit.ILGeneration => 139
	i64 u0x220fd4f2e7c48170, ; 58: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x2347c268e3e4e536, ; 59: Xamarin.GooglePlayServices.Basement.dll => 102
	i64 u0x237be844f1f812c7, ; 60: System.Threading.Thread.dll => 153
	i64 u0x23bbd31edb1647bc, ; 61: lib_Plugin.Firebase.Core.dll.so => 54
	i64 u0x2407aef2bbe8fadf, ; 62: System.Console => 118
	i64 u0x240abe014b27e7d3, ; 63: Xamarin.AndroidX.Core.dll => 67
	i64 u0x247619fe4413f8bf, ; 64: System.Runtime.Serialization.Primitives.dll => 146
	i64 u0x252073cc3caa62c2, ; 65: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x25ffffb1789c4579, ; 66: Plugin.Firebase.Core => 54
	i64 u0x2662c629b96b0b30, ; 67: lib_Xamarin.Kotlin.StdLib.dll.so => 105
	i64 u0x268c1439f13bcc29, ; 68: lib_Microsoft.Extensions.Primitives.dll.so => 43
	i64 u0x26918e5f13c8fc7c, ; 69: Xamarin.Firebase.Firestore => 94
	i64 u0x273f3515de5faf0d, ; 70: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 71: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 72: Java.Interop.dll => 161
	i64 u0x2801845a2c71fbfb, ; 73: System.Net.Primitives.dll => 132
	i64 u0x2a128783efe70ba0, ; 74: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2a6507a5ffabdf28, ; 75: System.Diagnostics.TraceSource.dll => 121
	i64 u0x2acd46d52b77f7fb, ; 76: lib_Plugin.Firebase.dll.so => 50
	i64 u0x2ad156c8e1354139, ; 77: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 78: System.Text.RegularExpressions.dll => 152
	i64 u0x2afc1c4f898552ee, ; 79: lib_System.Formats.Asn1.dll.so => 124
	i64 u0x2b148910ed40fbf9, ; 80: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2c8bd14bb93a7d82, ; 81: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2cc9e1fed6257257, ; 82: lib_System.Reflection.Emit.Lightweight.dll.so => 140
	i64 u0x2cd723e9fe623c7c, ; 83: lib_System.Private.Xml.Linq.dll.so => 137
	i64 u0x2d169d318a968379, ; 84: System.Threading.dll => 154
	i64 u0x2d47774b7d993f59, ; 85: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2d8414ebbf6218ce, ; 86: Plugin.Firebase.RemoteConfig.dll => 59
	i64 u0x2db915caf23548d2, ; 87: System.Text.Json.dll => 151
	i64 u0x2e6f1f226821322a, ; 88: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2f2e98e1c89b1aff, ; 89: System.Xml.ReaderWriter => 157
	i64 u0x309ee9eeec09a71e, ; 90: lib_Xamarin.AndroidX.Fragment.dll.so => 71
	i64 u0x31195fef5d8fb552, ; 91: _Microsoft.Android.Resource.Designer.dll => 34
	i64 u0x32243413e774362a, ; 92: Xamarin.AndroidX.CardView.dll => 64
	i64 u0x3235427f8d12dae1, ; 93: lib_System.Drawing.Primitives.dll.so => 122
	i64 u0x329753a17a517811, ; 94: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 95: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33a31443733849fe, ; 96: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x34dfd74fe2afcf37, ; 97: Microsoft.Maui => 46
	i64 u0x34e292762d9615df, ; 98: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 99: Microsoft.Maui.Controls => 44
	i64 u0x353c74869339570c, ; 100: lib_Xamarin.Firebase.Auth.dll.so => 87
	i64 u0x3549870798b4cd30, ; 101: lib_Xamarin.AndroidX.ViewPager2.dll.so => 86
	i64 u0x355282fc1c909694, ; 102: Microsoft.Extensions.Configuration => 36
	i64 u0x364703ab05867b92, ; 103: Xamarin.Firebase.Components => 90
	i64 u0x36b2b50fdf589ae2, ; 104: System.Reflection.Emit.Lightweight => 140
	i64 u0x374ef46b06791af6, ; 105: System.Reflection.Primitives.dll => 141
	i64 u0x385c17636bb6fe6e, ; 106: Xamarin.AndroidX.CustomView.dll => 69
	i64 u0x393c226616977fdb, ; 107: lib_Xamarin.AndroidX.ViewPager.dll.so => 85
	i64 u0x395e37c3334cf82a, ; 108: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x39aa39fda111d9d3, ; 109: Newtonsoft.Json => 49
	i64 u0x3b860f9932505633, ; 110: lib_System.Text.Encoding.Extensions.dll.so => 149
	i64 u0x3c0c1b892a2cb57e, ; 111: Plugin.Firebase.CloudMessaging => 53
	i64 u0x3c7c495f58ac5ee9, ; 112: Xamarin.Kotlin.StdLib => 105
	i64 u0x3cc1676a8781bdbc, ; 113: Xamarin.Firebase.Auth.Interop.dll => 88
	i64 u0x3d1c50cc001a991e, ; 114: Xamarin.Google.Guava.ListenableFuture.dll => 100
	i64 u0x3d46f0b995082740, ; 115: System.Xml.Linq => 156
	i64 u0x3d9c2a242b040a50, ; 116: lib_Xamarin.AndroidX.Core.dll.so => 67
	i64 u0x407a10bb4bf95829, ; 117: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 77
	i64 u0x4160e46b59efd769, ; 118: dokonApp3 => 109
	i64 u0x41cab042be111c34, ; 119: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 63
	i64 u0x41f64d46793f6584, ; 120: Plugin.Firebase.Analytics.dll => 51
	i64 u0x434c4e1d9284cdae, ; 121: Mono.Android.dll => 163
	i64 u0x43950f84de7cc79a, ; 122: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x447e266c182176d4, ; 123: Xamarin.GooglePlayServices.Measurement.Api => 103
	i64 u0x448bd33429269b19, ; 124: Microsoft.CSharp => 110
	i64 u0x4499fa3c8e494654, ; 125: lib_System.Runtime.Serialization.Primitives.dll.so => 146
	i64 u0x4515080865a951a5, ; 126: Xamarin.Kotlin.StdLib.dll => 105
	i64 u0x45c40276a42e283e, ; 127: System.Diagnostics.TraceSource => 121
	i64 u0x46a4213bc97fe5ae, ; 128: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x47358bd471172e1d, ; 129: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47daf4e1afbada10, ; 130: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 131: System.ObjectModel => 135
	i64 u0x49f6ab815e178ca9, ; 132: lib_Xamarin.Firebase.Common.dll.so => 89
	i64 u0x49f9e6948a8131e4, ; 133: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 84
	i64 u0x4a5667b2462a664b, ; 134: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 80
	i64 u0x4b7b6532ded934b7, ; 135: System.Text.Json => 151
	i64 u0x4cc5f15266470798, ; 136: lib_Xamarin.AndroidX.Loader.dll.so => 76
	i64 u0x4d479f968a05e504, ; 137: System.Linq.Expressions.dll => 128
	i64 u0x4d55a010ffc4faff, ; 138: System.Private.Xml => 138
	i64 u0x4d95fccc1f67c7ca, ; 139: System.Runtime.Loader.dll => 143
	i64 u0x4dcf44c3c9b076a2, ; 140: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 141: Xamarin.AndroidX.Loader.dll => 76
	i64 u0x4e32f00cb0937401, ; 142: Mono.Android.Runtime => 162
	i64 u0x4e8a4fc9d408f7aa, ; 143: lib_dokonApp3.dll.so => 109
	i64 u0x4f21ee6ef9eb527e, ; 144: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x5037f0be3c28c7a3, ; 145: lib_Microsoft.Maui.Controls.dll.so => 44
	i64 u0x5131bbe80989093f, ; 146: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 74
	i64 u0x515d61d6527dac70, ; 147: lib_Xamarin.Firebase.Auth.Interop.dll.so => 88
	i64 u0x51bb8a2afe774e32, ; 148: System.Drawing => 123
	i64 u0x526ce79eb8e90527, ; 149: lib_System.Net.Primitives.dll.so => 132
	i64 u0x52829f00b4467c38, ; 150: lib_System.Data.Common.dll.so => 119
	i64 u0x529ffe06f39ab8db, ; 151: Xamarin.AndroidX.Core => 67
	i64 u0x52ff996554dbf352, ; 152: Microsoft.Maui.Graphics => 48
	i64 u0x535f7e40e8fef8af, ; 153: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x536bf0b25fe5ae63, ; 154: Plugin.Firebase.DynamicLinks => 56
	i64 u0x53c3014b9437e684, ; 155: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 156: lib_System.Runtime.dll.so => 147
	i64 u0x556e8b63b660ab8b, ; 157: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 72
	i64 u0x5588627c9a108ec9, ; 158: System.Collections.Specialized => 113
	i64 u0x571c5cfbec5ae8e2, ; 159: System.Private.Uri => 136
	i64 u0x579a06fed6eec900, ; 160: System.Private.CoreLib.dll => 160
	i64 u0x57c542c14049b66d, ; 161: System.Diagnostics.DiagnosticSource => 120
	i64 u0x58601b2dda4a27b9, ; 162: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 163: Microsoft.Extensions.DependencyInjection.dll => 38
	i64 u0x595a356d23e8da9a, ; 164: lib_Microsoft.CSharp.dll.so => 110
	i64 u0x59bf5951f09e7573, ; 165: Plugin.Firebase.Functions.dll => 58
	i64 u0x5a89a886ae30258d, ; 166: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 66
	i64 u0x5a8f6699f4a1caa9, ; 167: lib_System.Threading.dll.so => 154
	i64 u0x5ae9cd33b15841bf, ; 168: System.ComponentModel => 117
	i64 u0x5b00c69e1da8fac1, ; 169: Plugin.Firebase.RemoteConfig => 59
	i64 u0x5b5f0e240a06a2a2, ; 170: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5b755276902c8414, ; 171: Xamarin.GooglePlayServices.Base => 101
	i64 u0x5c393624b8176517, ; 172: lib_Microsoft.Extensions.Logging.dll.so => 40
	i64 u0x5d98595378bae545, ; 173: dokonApp3.dll => 109
	i64 u0x5db0cbbd1028510e, ; 174: lib_System.Runtime.InteropServices.dll.so => 142
	i64 u0x5db30905d3e5013b, ; 175: Xamarin.AndroidX.Collection.Jvm.dll => 65
	i64 u0x5e467bc8f09ad026, ; 176: System.Collections.Specialized.dll => 113
	i64 u0x5ea92fdb19ec8c4c, ; 177: System.Text.Encodings.Web.dll => 150
	i64 u0x5eb8046dd40e9ac3, ; 178: System.ComponentModel.Primitives => 115
	i64 u0x5f36ccf5c6a57e24, ; 179: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 180: System.Data.Common => 119
	i64 u0x5f4fa8b9ffd0e2c5, ; 181: lib_Xamarin.Google.Android.DataTransport.TransportApi.dll.so => 98
	i64 u0x5f9a2d823f664957, ; 182: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x609f4b7b63d802d4, ; 183: lib_Microsoft.Extensions.DependencyInjection.dll.so => 38
	i64 u0x60cd4e33d7e60134, ; 184: Xamarin.KotlinX.Coroutines.Core.Jvm => 106
	i64 u0x60f62d786afcf130, ; 185: System.Memory => 130
	i64 u0x61be8d1299194243, ; 186: Microsoft.Maui.Controls.Xaml => 45
	i64 u0x61d2cba29557038f, ; 187: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 188: lib_System.Runtime.Loader.dll.so => 143
	i64 u0x622eef6f9e59068d, ; 189: System.Private.CoreLib => 160
	i64 u0x62e976fd765a2339, ; 190: Xamarin.Firebase.Auth.Interop => 88
	i64 u0x6400f68068c1e9f1, ; 191: Xamarin.Google.Android.Material.dll => 99
	i64 u0x65ecac39144dd3cc, ; 192: Microsoft.Maui.Controls.dll => 44
	i64 u0x65ece51227bfa724, ; 193: lib_System.Runtime.Numerics.dll.so => 144
	i64 u0x6692e924eade1b29, ; 194: lib_System.Console.dll.so => 118
	i64 u0x66a4e5c6a3fb0bae, ; 195: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 74
	i64 u0x66d13304ce1a3efa, ; 196: Xamarin.AndroidX.CursorAdapter => 68
	i64 u0x68558ec653afa616, ; 197: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x6872ec7a2e36b1ac, ; 198: System.Drawing.Primitives.dll => 122
	i64 u0x68fbbbe2eb455198, ; 199: System.Formats.Asn1 => 124
	i64 u0x69063fc0ba8e6bdd, ; 200: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x6a4d7577b2317255, ; 201: System.Runtime.InteropServices.dll => 142
	i64 u0x6a83dcc5e7641aa4, ; 202: lib_Xamarin.GooglePlayServices.Measurement.Api.dll.so => 103
	i64 u0x6ace3b74b15ee4a4, ; 203: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6d12bfaa99c72b1f, ; 204: lib_Microsoft.Maui.Graphics.dll.so => 48
	i64 u0x6d79993361e10ef2, ; 205: Microsoft.Extensions.Primitives => 43
	i64 u0x6d86d56b84c8eb71, ; 206: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 68
	i64 u0x6d9bea6b3e895cf7, ; 207: Microsoft.Extensions.Primitives.dll => 43
	i64 u0x6e25a02c3833319a, ; 208: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 78
	i64 u0x6fd2265da78b93a4, ; 209: lib_Microsoft.Maui.dll.so => 46
	i64 u0x6fdfc7de82c33008, ; 210: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x70e99f48c05cb921, ; 211: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 212: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x719176ec28437f1c, ; 213: Xamarin.Protobuf.JavaLite => 108
	i64 u0x71a495ea3761dde8, ; 214: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 215: System.ComponentModel.Primitives.dll => 115
	i64 u0x7207f5c4519b0c98, ; 216: Plugin.Firebase.Auth.dll => 52
	i64 u0x72b1fb4109e08d7b, ; 217: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x734b76fdc0dc05bb, ; 218: lib_GoogleGson.dll.so => 35
	i64 u0x73e4ce94e2eb6ffc, ; 219: lib_System.Memory.dll.so => 130
	i64 u0x755a91767330b3d4, ; 220: lib_Microsoft.Extensions.Configuration.dll.so => 36
	i64 u0x76012e7334db86e5, ; 221: lib_Xamarin.AndroidX.SavedState.dll.so => 82
	i64 u0x76ca07b878f44da0, ; 222: System.Runtime.Numerics.dll => 144
	i64 u0x780bc73597a503a9, ; 223: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 224: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x784b4ff3eed363ff, ; 225: Xamarin.Firebase.Common => 89
	i64 u0x78a45e51311409b6, ; 226: Xamarin.AndroidX.Fragment.dll => 71
	i64 u0x793546dbadd324b1, ; 227: Xamarin.Google.Android.DataTransport.TransportApi => 98
	i64 u0x7adb8da2ac89b647, ; 228: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7b1644fe7249da0c, ; 229: Plugin.Firebase.Firestore => 57
	i64 u0x7bef86a4335c4870, ; 230: System.ComponentModel.TypeConverter => 116
	i64 u0x7c0820144cd34d6a, ; 231: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 232: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7cb95ad2a929d044, ; 233: Xamarin.GooglePlayServices.Basement => 102
	i64 u0x7d649b75d580bb42, ; 234: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 235: System.Numerics.Vectors => 134
	i64 u0x7dfc3d6d9d8d7b70, ; 236: System.Collections => 114
	i64 u0x7e946809d6008ef2, ; 237: lib_System.ObjectModel.dll.so => 135
	i64 u0x7eb4f0dc47488736, ; 238: lib_Xamarin.GooglePlayServices.Tasks.dll.so => 104
	i64 u0x7ecc13347c8fd849, ; 239: lib_System.ComponentModel.dll.so => 117
	i64 u0x7f00ddd9b9ca5a13, ; 240: Xamarin.AndroidX.ViewPager.dll => 85
	i64 u0x7f9351cd44b1273f, ; 241: Microsoft.Extensions.Configuration.Abstractions => 37
	i64 u0x7fbd557c99b3ce6f, ; 242: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 73
	i64 u0x812c069d5cdecc17, ; 243: System.dll => 159
	i64 u0x81ab745f6c0f5ce6, ; 244: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 245: Xamarin.AndroidX.AppCompat => 62
	i64 u0x828f06563b30bc50, ; 246: lib_Xamarin.AndroidX.CardView.dll.so => 64
	i64 u0x82df8f5532a10c59, ; 247: lib_System.Drawing.dll.so => 123
	i64 u0x82f6403342e12049, ; 248: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x83c14ba66c8e2b8c, ; 249: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x86a909228dc7657b, ; 250: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 251: Microsoft.Extensions.Configuration.dll => 36
	i64 u0x87c69b87d9283884, ; 252: lib_System.Threading.Thread.dll.so => 153
	i64 u0x87f6569b25707834, ; 253: System.IO.Compression.Brotli.dll => 125
	i64 u0x87fe2bfaae9f8412, ; 254: lib_Plugin.Firebase.Auth.dll.so => 52
	i64 u0x8842b3a5d2d3fb36, ; 255: Microsoft.Maui.Essentials => 47
	i64 u0x88bda98e0cffb7a9, ; 256: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 106
	i64 u0x897a606c9e39c75f, ; 257: lib_System.ComponentModel.Primitives.dll.so => 115
	i64 u0x8ad229ea26432ee2, ; 258: Xamarin.AndroidX.Loader => 76
	i64 u0x8b4ff5d0fdd5faa1, ; 259: lib_System.Diagnostics.DiagnosticSource.dll.so => 120
	i64 u0x8b9ceca7acae3451, ; 260: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8d0f420977c2c1c7, ; 261: Xamarin.AndroidX.CursorAdapter.dll => 68
	i64 u0x8d7b8ab4b3310ead, ; 262: System.Threading => 154
	i64 u0x8da188285aadfe8e, ; 263: System.Collections.Concurrent => 111
	i64 u0x8ec6e06a61c1baeb, ; 264: lib_Newtonsoft.Json.dll.so => 49
	i64 u0x8ed807bfe9858dfc, ; 265: Xamarin.AndroidX.Navigation.Common => 77
	i64 u0x8ee08b8194a30f48, ; 266: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 267: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8efbc0801a122264, ; 268: Xamarin.GooglePlayServices.Tasks.dll => 104
	i64 u0x8f32c6f611f6ffab, ; 269: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 270: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x8feffa44c5924324, ; 271: lib_Xamarin.Protobuf.JavaLite.dll.so => 108
	i64 u0x90263f8448b8f572, ; 272: lib_System.Diagnostics.TraceSource.dll.so => 121
	i64 u0x903101b46fb73a04, ; 273: _Microsoft.Android.Resource.Designer => 34
	i64 u0x90393bd4865292f3, ; 274: lib_System.IO.Compression.dll.so => 126
	i64 u0x90634f86c5ebe2b5, ; 275: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 74
	i64 u0x907b636704ad79ef, ; 276: lib_Microsoft.Maui.Controls.Xaml.dll.so => 45
	i64 u0x91413101e5d9f995, ; 277: Xamarin.Firebase.Auth => 87
	i64 u0x91418dc638b29e68, ; 278: lib_Xamarin.AndroidX.CustomView.dll.so => 69
	i64 u0x9157bd523cd7ed36, ; 279: lib_System.Text.Json.dll.so => 151
	i64 u0x91a74f07b30d37e2, ; 280: System.Linq.dll => 129
	i64 u0x91fa41a87223399f, ; 281: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x92a698e6d582778f, ; 282: Xamarin.Firebase.Components.dll => 90
	i64 u0x939ce2bba50a7f7a, ; 283: Xamarin.Firebase.Crashlytics => 92
	i64 u0x93cfa73ab28d6e35, ; 284: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 285: System.IO.Compression.dll => 126
	i64 u0x95c96189b88c95f7, ; 286: Plugin.Firebase.Analytics => 51
	i64 u0x967fc325e09bfa8c, ; 287: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 288: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 289: Microsoft.Maui.Graphics.dll => 48
	i64 u0x979ab54025cc1c7f, ; 290: lib_Xamarin.GooglePlayServices.Base.dll.so => 101
	i64 u0x97b8c771ea3e4220, ; 291: System.ComponentModel.dll => 117
	i64 u0x97e144c9d3c6976e, ; 292: System.Collections.Concurrent.dll => 111
	i64 u0x984184e3c70d4419, ; 293: GoogleGson => 35
	i64 u0x98af17e841bbadcb, ; 294: Xamarin.Firebase.Storage.dll => 97
	i64 u0x991d510397f92d9d, ; 295: System.Linq.Expressions => 128
	i64 u0x99a00ca5270c6878, ; 296: Xamarin.AndroidX.Navigation.Runtime => 79
	i64 u0x99cdc6d1f2d3a72f, ; 297: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9aca298b5a43ad5c, ; 298: Plugin.Firebase.Core.dll => 54
	i64 u0x9b76bea3357ab1a1, ; 299: Xamarin.GooglePlayServices.Measurement.Api.dll => 103
	i64 u0x9bb3e2d53d840e51, ; 300: Xamarin.Protobuf.JavaLite.dll => 108
	i64 u0x9d5dbcf5a48583fe, ; 301: lib_Xamarin.AndroidX.Activity.dll.so => 61
	i64 u0x9d74dee1a7725f34, ; 302: Microsoft.Extensions.Configuration.Abstractions.dll => 37
	i64 u0x9dd9025fdfb738aa, ; 303: Plugin.Firebase.Crashlytics.dll => 55
	i64 u0x9e4534b6adaf6e84, ; 304: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9eaf1efdf6f7267e, ; 305: Xamarin.AndroidX.Navigation.Common.dll => 77
	i64 u0x9ef542cf1f78c506, ; 306: Xamarin.AndroidX.Lifecycle.LiveData.Core => 73
	i64 u0xa0d8259f4cc284ec, ; 307: lib_System.Security.Cryptography.dll.so => 148
	i64 u0xa1440773ee9d341e, ; 308: Xamarin.Google.Android.Material => 99
	i64 u0xa1b9d7c27f47219f, ; 309: Xamarin.AndroidX.Navigation.UI.dll => 80
	i64 u0xa2572680829d2c7c, ; 310: System.IO.Pipelines.dll => 127
	i64 u0xa46aa1eaa214539b, ; 311: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa4edc8f2ceae241a, ; 312: System.Data.Common.dll => 119
	i64 u0xa5072f596f97bd71, ; 313: lib_Plugin.Firebase.Crashlytics.dll.so => 55
	i64 u0xa5494f40f128ce6a, ; 314: System.Runtime.Serialization.Formatters.dll => 145
	i64 u0xa5e599d1e0524750, ; 315: System.Numerics.Vectors.dll => 134
	i64 u0xa5f1ba49b85dd355, ; 316: System.Security.Cryptography.dll => 148
	i64 u0xa67dbee13e1df9ca, ; 317: Xamarin.AndroidX.SavedState.dll => 82
	i64 u0xa68a420042bb9b1f, ; 318: Xamarin.AndroidX.DrawerLayout.dll => 70
	i64 u0xa78ce3745383236a, ; 319: Xamarin.AndroidX.Lifecycle.Common.Jvm => 72
	i64 u0xa7a08e0f3bd00c3e, ; 320: Xamarin.Firebase.Messaging.dll => 96
	i64 u0xa7c31b56b4dc7b33, ; 321: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xa843f6095f0d247d, ; 322: Xamarin.GooglePlayServices.Base.dll => 101
	i64 u0xaa2219c8e3449ff5, ; 323: Microsoft.Extensions.Logging.Abstractions => 41
	i64 u0xaa443ac34067eeef, ; 324: System.Private.Xml.dll => 138
	i64 u0xaa52de307ef5d1dd, ; 325: System.Net.Http => 131
	i64 u0xaa571d3c32740d65, ; 326: Plugin.Firebase.Auth => 52
	i64 u0xaaaf86367285a918, ; 327: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 39
	i64 u0xaaf84bb3f052a265, ; 328: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 329: lib_System.Linq.Expressions.dll.so => 128
	i64 u0xac2af3fa195a15ce, ; 330: System.Runtime.Numerics => 144
	i64 u0xac5376a2a538dc10, ; 331: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 73
	i64 u0xac98d31068e24591, ; 332: System.Xml.XDocument => 158
	i64 u0xacd46e002c3ccb97, ; 333: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xad89c07347f1bad6, ; 334: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 335: System.Web.HttpUtility => 155
	i64 u0xadc90ab061a9e6e4, ; 336: System.ComponentModel.TypeConverter.dll => 116
	i64 u0xae282bcd03739de7, ; 337: Java.Interop => 161
	i64 u0xae53579c90db1107, ; 338: System.ObjectModel.dll => 135
	i64 u0xaf871db261e04601, ; 339: lib_Xamarin.Firebase.Crashlytics.dll.so => 92
	i64 u0xafe29f45095518e7, ; 340: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 75
	i64 u0xb05cc42cd94c6d9d, ; 341: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb220631954820169, ; 342: System.Text.RegularExpressions => 152
	i64 u0xb2a3f67f3bf29fce, ; 343: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb3f0a0fcda8d3ebc, ; 344: Xamarin.AndroidX.CardView => 64
	i64 u0xb46be1aa6d4fff93, ; 345: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 346: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4b4a8794e933f72, ; 347: lib_Plugin.Firebase.Firestore.dll.so => 57
	i64 u0xb4bd7015ecee9d86, ; 348: System.IO.Pipelines => 127
	i64 u0xb5c7fcdafbc67ee4, ; 349: Microsoft.Extensions.Logging.Abstractions.dll => 41
	i64 u0xb685a1c17fee494b, ; 350: Xamarin.Firebase.Crashlytics.dll => 92
	i64 u0xb7212c4683a94afe, ; 351: System.Drawing.Primitives => 122
	i64 u0xb7b7753d1f319409, ; 352: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 353: lib_System.Private.CoreLib.dll.so => 160
	i64 u0xb9185c33a1643eed, ; 354: Microsoft.CSharp.dll => 110
	i64 u0xb9f64d3b230def68, ; 355: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 356: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba4670aa94a2b3c6, ; 357: lib_System.Xml.XDocument.dll.so => 158
	i64 u0xba48785529705af9, ; 358: System.Collections.dll => 114
	i64 u0xbbd180354b67271a, ; 359: System.Runtime.Serialization.Formatters => 145
	i64 u0xbd0e2c0d55246576, ; 360: System.Net.Http.dll => 131
	i64 u0xbd437a2cdb333d0d, ; 361: Xamarin.AndroidX.ViewPager2 => 86
	i64 u0xbd47da6a92fd7307, ; 362: Xamarin.Firebase.Config.dll => 91
	i64 u0xbee38d4a88835966, ; 363: Xamarin.AndroidX.AppCompat.AppCompatResources => 63
	i64 u0xc040a4ab55817f58, ; 364: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc0d928351ab5ca77, ; 365: System.Console.dll => 118
	i64 u0xc12b8b3afa48329c, ; 366: lib_System.Linq.dll.so => 129
	i64 u0xc156694d1a6d7cd6, ; 367: Plugin.Firebase.dll => 50
	i64 u0xc1ff9ae3cdb6e1e6, ; 368: Xamarin.AndroidX.Activity.dll => 61
	i64 u0xc28c50f32f81cc73, ; 369: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2bcfec99f69365e, ; 370: Xamarin.AndroidX.ViewPager2.dll => 86
	i64 u0xc396b285e59e5493, ; 371: GoogleGson.dll => 35
	i64 u0xc491e38137aa3bcf, ; 372: Xamarin.Firebase.Storage => 97
	i64 u0xc4d3858ed4d08512, ; 373: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 75
	i64 u0xc50fded0ded1418c, ; 374: lib_System.ComponentModel.TypeConverter.dll.so => 116
	i64 u0xc519125d6bc8fb11, ; 375: lib_System.Net.Requests.dll.so => 133
	i64 u0xc5293b19e4dc230e, ; 376: Xamarin.AndroidX.Navigation.Fragment => 78
	i64 u0xc5325b2fcb37446f, ; 377: lib_System.Private.Xml.dll.so => 138
	i64 u0xc5a0f4b95a699af7, ; 378: lib_System.Private.Uri.dll.so => 136
	i64 u0xc62af3e2d6d38289, ; 379: lib_Xamarin.Firebase.Firestore.dll.so => 94
	i64 u0xc7c01e7d7c93a110, ; 380: System.Text.Encoding.Extensions.dll => 149
	i64 u0xc7ce851898a4548e, ; 381: lib_System.Web.HttpUtility.dll.so => 155
	i64 u0xc858a28d9ee5a6c5, ; 382: lib_System.Collections.Specialized.dll.so => 113
	i64 u0xca3a723e7342c5b6, ; 383: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xcab3493c70141c2d, ; 384: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcacfddc9f7c6de76, ; 385: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcbd4fdd9cef4a294, ; 386: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i64 u0xcc2876b32ef2794c, ; 387: lib_System.Text.RegularExpressions.dll.so => 152
	i64 u0xcc5c3bb714c4561e, ; 388: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 106
	i64 u0xcc76886e09b88260, ; 389: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 107
	i64 u0xccf25c4b634ccd3a, ; 390: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 391: System.Net.Requests => 133
	i64 u0xcd82116fea47859e, ; 392: Plugin.Firebase.CloudMessaging.dll => 53
	i64 u0xcdd0c48b6937b21c, ; 393: Xamarin.AndroidX.SwipeRefreshLayout => 83
	i64 u0xcf23d8093f3ceadf, ; 394: System.Diagnostics.DiagnosticSource.dll => 120
	i64 u0xcf8fc898f98b0d34, ; 395: System.Private.Xml.Linq => 137
	i64 u0xd100f453fb70440c, ; 396: Xamarin.Firebase.Functions => 95
	i64 u0xd1194e1d8a8de83c, ; 397: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 72
	i64 u0xd14743e7ab3d6623, ; 398: lib_Xamarin.Firebase.Config.dll.so => 91
	i64 u0xd3144156a3727ebe, ; 399: Xamarin.Google.Guava.ListenableFuture => 100
	i64 u0xd333d0af9e423810, ; 400: System.Runtime.InteropServices => 142
	i64 u0xd3426d966bb704f5, ; 401: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 63
	i64 u0xd3651b6fc3125825, ; 402: System.Private.Uri.dll => 136
	i64 u0xd373685349b1fe8b, ; 403: Microsoft.Extensions.Logging.dll => 40
	i64 u0xd3e4c8d6a2d5d470, ; 404: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd4645626dffec99d, ; 405: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 39
	i64 u0xd5507e11a2b2839f, ; 406: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 75
	i64 u0xd553306bfc9d438f, ; 407: Plugin.Firebase.Functions => 58
	i64 u0xd6694f8359737e4e, ; 408: Xamarin.AndroidX.SavedState => 82
	i64 u0xd6d21782156bc35b, ; 409: Xamarin.AndroidX.SwipeRefreshLayout.dll => 83
	i64 u0xd72329819cbbbc44, ; 410: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 37
	i64 u0xd74f2028e57f6faf, ; 411: Plugin.Firebase.Storage => 60
	i64 u0xd7b3764ada9d341d, ; 412: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 41
	i64 u0xd7e8ce535a3e02a1, ; 413: lib_Plugin.Firebase.Analytics.dll.so => 51
	i64 u0xd7f0088bc5ad71f2, ; 414: Xamarin.AndroidX.VersionedParcelable => 84
	i64 u0xd7f086420957bfa6, ; 415: lib_Plugin.Firebase.CloudMessaging.dll.so => 53
	i64 u0xd896bbf4bbb77722, ; 416: Plugin.Firebase.Crashlytics => 55
	i64 u0xda1dfa4c534a9251, ; 417: Microsoft.Extensions.DependencyInjection => 38
	i64 u0xdad05a11827959a3, ; 418: System.Collections.NonGeneric.dll => 112
	i64 u0xdb5383ab5865c007, ; 419: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdb58816721c02a59, ; 420: lib_System.Reflection.Emit.ILGeneration.dll.so => 139
	i64 u0xdbeda89f832aa805, ; 421: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf9607a441b4505, ; 422: System.Linq => 129
	i64 u0xdce2c53525640bf3, ; 423: Microsoft.Extensions.Logging => 40
	i64 u0xdd2b722d78ef5f43, ; 424: System.Runtime.dll => 147
	i64 u0xdd67031857c72f96, ; 425: lib_System.Text.Encodings.Web.dll.so => 150
	i64 u0xdde30e6b77aa6f6c, ; 426: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde110ae80fa7c2e2, ; 427: System.Xml.XDocument.dll => 158
	i64 u0xde8769ebda7d8647, ; 428: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xe0142572c095a480, ; 429: Xamarin.AndroidX.AppCompat.dll => 62
	i64 u0xe02f89350ec78051, ; 430: Xamarin.AndroidX.CoordinatorLayout.dll => 66
	i64 u0xe03ac59b394077a7, ; 431: lib_Xamarin.Firebase.Messaging.dll.so => 96
	i64 u0xe192a588d4410686, ; 432: lib_System.IO.Pipelines.dll.so => 127
	i64 u0xe1a08bd3fa539e0d, ; 433: System.Runtime.Loader => 143
	i64 u0xe1b52f9f816c70ef, ; 434: System.Private.Xml.Linq.dll => 137
	i64 u0xe2420585aeceb728, ; 435: System.Net.Requests.dll => 133
	i64 u0xe29b73bc11392966, ; 436: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe2a295b75d36df94, ; 437: Xamarin.Firebase.Auth.dll => 87
	i64 u0xe3811d68d4fe8463, ; 438: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe392dad93475f892, ; 439: Xamarin.Firebase.Config => 91
	i64 u0xe3f96d37a010f8d7, ; 440: lib_Xamarin.Firebase.Dynamic.Links.dll.so => 93
	i64 u0xe494f7ced4ecd10a, ; 441: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 442: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe4f74a0b5bf9703f, ; 443: System.Runtime.Serialization.Primitives => 146
	i64 u0xe5434e8a119ceb69, ; 444: lib_Mono.Android.dll.so => 163
	i64 u0xe89a2a9ef110899b, ; 445: System.Drawing.dll => 123
	i64 u0xe8e7b675503ab70a, ; 446: lib_Xamarin.Firebase.Functions.dll.so => 95
	i64 u0xeb05d8ab87158d10, ; 447: Plugin.Firebase => 50
	i64 u0xeb9973cda26e858f, ; 448: Xamarin.Firebase.Common.dll => 89
	i64 u0xebbcc2bc51cb4a56, ; 449: Plugin.Firebase.Firestore.dll => 57
	i64 u0xed19c616b3fcb7eb, ; 450: Xamarin.AndroidX.VersionedParcelable.dll => 84
	i64 u0xed71cc7167e5bfad, ; 451: lib_Plugin.Firebase.DynamicLinks.dll.so => 56
	i64 u0xedc632067fb20ff3, ; 452: System.Memory.dll => 130
	i64 u0xedc8e4ca71a02a8b, ; 453: Xamarin.AndroidX.Navigation.Runtime.dll => 79
	i64 u0xeeb7ebb80150501b, ; 454: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 65
	i64 u0xeec0ecc44f1bf592, ; 455: lib_Xamarin.Firebase.Storage.dll.so => 97
	i64 u0xef602c523fe2e87a, ; 456: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 100
	i64 u0xef72742e1bcca27a, ; 457: Microsoft.Maui.Essentials.dll => 47
	i64 u0xefec0b7fdc57ec42, ; 458: Xamarin.AndroidX.Activity => 61
	i64 u0xf00c29406ea45e19, ; 459: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf11b621fc87b983f, ; 460: Microsoft.Maui.Controls.Xaml.dll => 45
	i64 u0xf1c4b4005493d871, ; 461: System.Formats.Asn1.dll => 124
	i64 u0xf2039b1a33e63e8e, ; 462: Xamarin.Google.Android.DataTransport.TransportApi.dll => 98
	i64 u0xf238bd79489d3a96, ; 463: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf37221fda4ef8830, ; 464: lib_Xamarin.Google.Android.Material.dll.so => 99
	i64 u0xf3ddfe05336abf29, ; 465: System => 159
	i64 u0xf408654b2a135055, ; 466: System.Reflection.Emit.ILGeneration.dll => 139
	i64 u0xf4c1dd70a5496a17, ; 467: System.IO.Compression => 126
	i64 u0xf6077741019d7428, ; 468: Xamarin.AndroidX.CoordinatorLayout => 66
	i64 u0xf77b20923f07c667, ; 469: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf7e2cac4c45067b3, ; 470: lib_System.Numerics.Vectors.dll.so => 134
	i64 u0xf7e74930e0e3d214, ; 471: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf7fa0bf77fe677cc, ; 472: Newtonsoft.Json.dll => 49
	i64 u0xf84773b5c81e3cef, ; 473: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf895bc445b304688, ; 474: lib_Plugin.Firebase.Storage.dll.so => 60
	i64 u0xf8b77539b362d3ba, ; 475: lib_System.Reflection.Primitives.dll.so => 141
	i64 u0xf8e045dc345b2ea3, ; 476: lib_Xamarin.AndroidX.RecyclerView.dll.so => 81
	i64 u0xf915dc29808193a1, ; 477: System.Web.HttpUtility.dll => 155
	i64 u0xf96c777a2a0686f4, ; 478: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 479: Microsoft.Extensions.Options => 42
	i64 u0xfa5ed7226d978949, ; 480: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 481: System.Threading.Thread => 153
	i64 u0xfb4159a996444a12, ; 482: Xamarin.Firebase.Dynamic.Links.dll => 93
	i64 u0xfbf0a31c9fc34bc4, ; 483: lib_System.Net.Http.dll.so => 131
	i64 u0xfc6b7527cc280b3f, ; 484: lib_System.Runtime.Serialization.Formatters.dll.so => 145
	i64 u0xfc719aec26adf9d9, ; 485: Xamarin.AndroidX.Navigation.Fragment.dll => 78
	i64 u0xfd22f00870e40ae0, ; 486: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 70
	i64 u0xfd3ce7bc9232d417, ; 487: Xamarin.Firebase.Firestore.dll => 94
	i64 u0xfd536c702f64dc47, ; 488: System.Text.Encoding.Extensions => 149
	i64 u0xfd583f7657b6a1cb, ; 489: Xamarin.AndroidX.Fragment => 71
	i64 u0xfeae9952cf03b8cb, ; 490: tr/Microsoft.Maui.Controls.resources => 28
	i64 u0xff4093883e1e70fd ; 491: lib_Plugin.Firebase.Functions.dll.so => 58
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [492 x i32] [
	i32 83, i32 79, i32 162, i32 62, i32 24, i32 2, i32 30, i32 132,
	i32 104, i32 81, i32 114, i32 46, i32 31, i32 156, i32 65, i32 59,
	i32 24, i32 112, i32 141, i32 70, i32 42, i32 112, i32 102, i32 148,
	i32 90, i32 60, i32 25, i32 96, i32 107, i32 85, i32 21, i32 163,
	i32 47, i32 56, i32 69, i32 125, i32 140, i32 81, i32 8, i32 161,
	i32 9, i32 39, i32 12, i32 150, i32 107, i32 18, i32 111, i32 159,
	i32 27, i32 162, i32 93, i32 80, i32 16, i32 95, i32 42, i32 125,
	i32 147, i32 139, i32 27, i32 102, i32 153, i32 54, i32 118, i32 67,
	i32 146, i32 8, i32 54, i32 105, i32 43, i32 94, i32 13, i32 11,
	i32 161, i32 132, i32 29, i32 121, i32 50, i32 7, i32 152, i32 124,
	i32 33, i32 20, i32 140, i32 137, i32 154, i32 26, i32 59, i32 151,
	i32 5, i32 157, i32 71, i32 34, i32 64, i32 122, i32 8, i32 157,
	i32 6, i32 46, i32 2, i32 44, i32 87, i32 86, i32 36, i32 90,
	i32 140, i32 141, i32 69, i32 85, i32 1, i32 49, i32 149, i32 53,
	i32 105, i32 88, i32 100, i32 156, i32 67, i32 77, i32 109, i32 63,
	i32 51, i32 163, i32 20, i32 103, i32 110, i32 146, i32 105, i32 121,
	i32 24, i32 156, i32 22, i32 135, i32 89, i32 84, i32 80, i32 151,
	i32 76, i32 128, i32 138, i32 143, i32 14, i32 76, i32 162, i32 109,
	i32 1, i32 44, i32 74, i32 88, i32 123, i32 132, i32 119, i32 67,
	i32 48, i32 25, i32 56, i32 31, i32 147, i32 72, i32 113, i32 136,
	i32 160, i32 120, i32 15, i32 38, i32 110, i32 58, i32 66, i32 154,
	i32 117, i32 59, i32 3, i32 101, i32 40, i32 109, i32 142, i32 65,
	i32 113, i32 150, i32 115, i32 157, i32 119, i32 98, i32 5, i32 38,
	i32 106, i32 130, i32 45, i32 4, i32 143, i32 160, i32 88, i32 99,
	i32 44, i32 144, i32 118, i32 74, i32 68, i32 3, i32 122, i32 124,
	i32 9, i32 142, i32 103, i32 18, i32 48, i32 43, i32 68, i32 43,
	i32 78, i32 46, i32 2, i32 28, i32 18, i32 108, i32 14, i32 115,
	i32 52, i32 11, i32 35, i32 130, i32 36, i32 82, i32 144, i32 17,
	i32 27, i32 89, i32 71, i32 98, i32 7, i32 57, i32 116, i32 25,
	i32 4, i32 102, i32 17, i32 134, i32 114, i32 135, i32 104, i32 117,
	i32 85, i32 37, i32 73, i32 159, i32 33, i32 62, i32 64, i32 123,
	i32 29, i32 32, i32 33, i32 36, i32 153, i32 125, i32 52, i32 47,
	i32 106, i32 115, i32 76, i32 120, i32 9, i32 68, i32 154, i32 111,
	i32 49, i32 77, i32 10, i32 23, i32 104, i32 22, i32 21, i32 108,
	i32 121, i32 34, i32 126, i32 74, i32 45, i32 87, i32 69, i32 151,
	i32 129, i32 1, i32 90, i32 92, i32 17, i32 126, i32 51, i32 6,
	i32 13, i32 48, i32 101, i32 117, i32 111, i32 35, i32 97, i32 128,
	i32 79, i32 16, i32 54, i32 103, i32 108, i32 61, i32 37, i32 55,
	i32 19, i32 77, i32 73, i32 148, i32 99, i32 80, i32 127, i32 16,
	i32 119, i32 55, i32 145, i32 134, i32 148, i32 82, i32 70, i32 72,
	i32 96, i32 12, i32 101, i32 41, i32 138, i32 131, i32 52, i32 39,
	i32 5, i32 128, i32 144, i32 73, i32 158, i32 23, i32 19, i32 155,
	i32 116, i32 161, i32 135, i32 92, i32 75, i32 26, i32 152, i32 3,
	i32 64, i32 10, i32 0, i32 57, i32 127, i32 41, i32 92, i32 122,
	i32 26, i32 160, i32 110, i32 22, i32 15, i32 158, i32 114, i32 145,
	i32 131, i32 86, i32 91, i32 63, i32 0, i32 118, i32 129, i32 50,
	i32 61, i32 15, i32 86, i32 35, i32 97, i32 75, i32 116, i32 133,
	i32 78, i32 138, i32 136, i32 94, i32 149, i32 155, i32 113, i32 28,
	i32 20, i32 23, i32 34, i32 152, i32 106, i32 107, i32 32, i32 133,
	i32 53, i32 83, i32 120, i32 137, i32 95, i32 72, i32 91, i32 100,
	i32 142, i32 63, i32 136, i32 40, i32 14, i32 39, i32 75, i32 58,
	i32 82, i32 83, i32 37, i32 60, i32 41, i32 51, i32 84, i32 53,
	i32 55, i32 38, i32 112, i32 30, i32 139, i32 30, i32 129, i32 40,
	i32 147, i32 150, i32 32, i32 158, i32 11, i32 62, i32 66, i32 96,
	i32 127, i32 143, i32 137, i32 133, i32 13, i32 87, i32 21, i32 91,
	i32 93, i32 12, i32 7, i32 146, i32 163, i32 123, i32 95, i32 50,
	i32 89, i32 57, i32 84, i32 56, i32 130, i32 79, i32 65, i32 97,
	i32 100, i32 47, i32 61, i32 6, i32 45, i32 124, i32 98, i32 19,
	i32 99, i32 159, i32 139, i32 126, i32 66, i32 4, i32 134, i32 31,
	i32 49, i32 29, i32 60, i32 141, i32 81, i32 155, i32 10, i32 42,
	i32 0, i32 153, i32 93, i32 131, i32 145, i32 78, i32 70, i32 94,
	i32 149, i32 71, i32 28, i32 58
], align 4

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

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 0ccdc57cf7fc59bd3f6cbf900c9cdbebadfe4609"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
