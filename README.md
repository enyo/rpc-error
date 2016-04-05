# Example of building rpc failing

1. Clone the repo
2. Run `pub get`
3. Run `pub global run rpc:generate discovery -p 8082 -i lib/api.dart`
4. Get error:

```
in ShutdownIsolate: Unhandled exception:
IsolateSpawnException: Unable to spawn isolate: Unhandled exception:
Could not import "package:test/foo.dart" from "file:///Volumes/CaseFS/xxx/lib/api.dart": Failure getting http://localhost:53394/packages/test/foo.dart:
  404 Not Found
#0      _asyncLoadErrorCallback (dart:_builtin:162)
#1      _asyncLoadError (dart:_builtin:573)
#2      _handleLoaderReply (dart:_builtin:390)
#3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:148)
#0      Isolate.spawnUri.<spawnUri_async_body> (dart:isolate-patch/isolate_patch.dart)
#1      _asyncErrorWrapperHelper.<anonymous closure> (dart:async-patch/async_patch.dart:34)
#2      _RootZone.runBinary (dart:async/zone.dart:1142)
#3      _Future._propagateToListeners.handleError (dart:async/future_impl.dart:579)
#4      _Future._propagateToListeners (dart:async/future_impl.dart:641)
#5      _Future._completeError (dart:async/future_impl.dart:432)
#6      _SyncCompleter._completeError (dart:async/future_impl.dart:56)
#7      _Completer.completeError (dart:async/future_impl.dart:27)
#8      Isolate._spawnCommon.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:439)
#9      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:148)
```

The error is caused by the `import 'package:test/foo.dart';` import.
If replaced with `import 'foo.dart';` it works.