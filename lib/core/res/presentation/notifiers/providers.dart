
import 'package:flutter_appwrite/features/presentation/notifiers/authstate.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
      create: (context) => AuthState(),
  )
];