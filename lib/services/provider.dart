import 'package:tictactoe_acl/services/alertService.dart';
import 'package:tictactoe_acl/services/boardService.dart';
import 'package:tictactoe_acl/services/soundService.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerSingleton(AlertService());
  locator.registerSingleton(BoardService());
  locator.registerSingleton(SoundService());
}
