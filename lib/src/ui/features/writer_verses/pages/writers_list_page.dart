import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/writer_card.dart';
import 'writer_details_page.dart';

class WritersListPage extends StatelessWidget {
  const WritersListPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Писатели'),
      ),
      body: const _WritersList(),
    );
  }
}

class _WritersList extends StatelessWidget {
  const _WritersList({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return BlocBuilder<WriterBloc, WriterState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : RefreshIndicator(
                onRefresh: () async {
                  context.read<WriterBloc>().add(GetAllWritersEvent());
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(state.writers.length, (index) {
                      final writer = state.writers[index];
                      return WriterCard(
                          writer: writer,
                          isBookmarked: state.bookmarkedWritersId.contains(writer.id),
                          onPressed: () {
                            _onWriterCardPressed(context, writer);
                          });
                    }),
                  ),
                ),
              );
      },
    );
  }

  Future<void> _onWriterCardPressed(BuildContext context, Writer writer) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WriterDetailsPage(writer: writer);
        },
      ),
    );
  }
}
