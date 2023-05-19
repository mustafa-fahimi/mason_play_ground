import 'package:mason/mason.dart';
import 'dart:io';

Future<void> run(HookContext context) async {
  var command1 = 'dart run build_runner build --delete-conflicting-outputs';
  context.logger.info(
    'Executing >> $command1',
  );
  await Process.runSync(command1, [], runInShell: true);
  var command2 = 'dart fix --apply';
  context.logger.info('Executing >> $command2');
  await Process.runSync(command2, [], runInShell: true);
  context.logger.info('All Done!');
}
