import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl_standalone.dart' if (dart.library.html) 'package:intl/intl_browser.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:path_provider/path_provider.dart';

import '../di/init_di.dart';
import '../domain/app_builder.dart';
import '../domain/app_runner.dart';

class MainAppRunner implements AppRunner {
  final String env;

  const MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    //init app
    initDi(env);
    initializeDateFormatting();
    WidgetsFlutterBinding.ensureInitialized();
    await findSystemLocale();
    //init config
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    //WidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
    );
    await preloadData();
    runApp(appBuilder.buildApp());
  }

  // @override
  // Future<void> run(AppBuilder appBuilder) async {
  //   final storage = await HydratedStorage.build(
  //       storageDirectory: kIsWeb
  //           ? HydratedStorage.webStorageDirectory
  //           : await getApplicationDocumentsDirectory(),);
  //   HydratedBlocOverrides.runZoned(
  //     () async {
  //       await preloadData();
  //       runApp(appBuilder.buildApp());
  //     },
  //     storage: storage,
  //   );
  // }
}
