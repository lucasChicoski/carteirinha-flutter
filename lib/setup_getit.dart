import 'package:get_it/get_it.dart';

import 'View/Store/config_page.dart';

final getIt = GetIt.instance;

setUpGetIt() {
  getIt.registerSingleton<ConfigPageStore>(ConfigPageStore());
}
