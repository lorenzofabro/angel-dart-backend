import 'package:angel_framework/angel_framework.dart';

createRoutes(Angel app) {
  app.get('/', (req, res) => res.write('Hello world 🌎'));

  app.get('/greet/:name', (req, res) {
    var name = req.params['name'];
    res.write('Hello $name 👋');
  });

  app.fallback((req, res) {
    throw new AngelHttpException.notFound(
        message: 'The requested URL does not exist ⛔');
  });
}
