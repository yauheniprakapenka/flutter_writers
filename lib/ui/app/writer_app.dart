import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/author_verse/pages/writers_list_page.dart';
import 'themes/writer_theme.dart';

class WriterApp extends StatelessWidget {
  const WriterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: writerTheme(),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<WriterBloc>(
            // ignore: prefer-extracting-callbacks
            create: (_) {
              return WriterBloc()..add(GetAllWritersEvent());
            },
          ),
        ],
        child: const WritersListPage(),
      ),
    );
  }
}