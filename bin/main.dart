import 'package:angel_framework/angel_framework.dart';
import 'package:angel_hot/angel_hot.dart';
import 'routes.dart';

main() async {
  var hot = HotReloader(createServer, ["."]);
  await hot.startServer('localhost', 3000);
}

Future<Angel> createServer() async {
  var app = Angel();
  createRoutes(app);
  return app;
}
