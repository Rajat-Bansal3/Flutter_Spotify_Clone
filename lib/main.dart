import 'package:fitquest/core/configs/theme/appTheme.dart';
import 'package:fitquest/presentation/chooseMode/bloc/themeCubit.dart';
import 'package:fitquest/presentation/splash/pages/splash.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, mode) => MaterialApp(
          darkTheme: AppTheme.darkTheme,
          theme: AppTheme.lightTheme,
          themeMode: mode,
          debugShowCheckedModeBanner: false,
          home: const Splash(),
        ),
      ),
    );
  }
}
