library exitlive.api.account;

import 'dart:async';

import 'package:logging/logging.dart';
import 'package:rpc/rpc.dart';

import 'package:test/foo.dart';

var log = new Logger('AccountApi');

@ApiClass(version: 'v1', name: 'account')
class AccountApi {
  @ApiResource()
  ShowResource show = new ShowResource();
}

class ShowResource {
  @ApiMethod(path: 'pages/{pageId}/shows/{showId}/status')
  Future<VoidMessage> getStatus(String pageId, String showId) async {
    foo();
    return null;
  }
}
