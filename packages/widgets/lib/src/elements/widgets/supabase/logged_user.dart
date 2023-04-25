import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:supabase/supabase.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_classes/theta_open_classes.dart';

// ignore_for_file: public_member_api_docs

class OpenWSupabaseLoggedUser extends StatefulWidget {
  /// Construct
  const OpenWSupabaseLoggedUser({
    super.key,
    required this.state,
    this.child,
  });

  final WidgetState state;

  /// The optional child of this widget
  final CNode? child;

  @override
  _WSupabaseLoggedUserState createState() => _WSupabaseLoggedUserState();
}

class _WSupabaseLoggedUserState extends State<OpenWSupabaseLoggedUser> {
  DatasetObject _map = const DatasetObject(
    name: 'Supabase User',
    map: [<String, dynamic>{}],
  );
  bool isLoaded = true;
  SupabaseClient? client;
  List<DatasetObject> datasets = [];
  late final Future<void> _future;

  @override
  void initState() {
    super.initState();
    _future = load();
  }

  Future<void> load() async {
    final box = await Hive.openBox<dynamic>('social_login');
    final map =
        await box.get('key') as Map<String, dynamic>? ?? <String, dynamic>{};
    if (map.keys.isNotEmpty) {
      _map = _map.copyWith(
        name: 'Supabase User',
        map: [
          <String, dynamic>{
            'Is Logged': true,
            'Email': map['email'],
          },
        ],
      );
    } else {
      _map = _map.copyWith(
        name: 'Supabase User',
        map: [
          <String, dynamic>{
            'Is Logged': false,
            'Email': 'null',
          },
        ],
      );
    }
    addDataset(context, _map);
  }

  @override
  Widget build(final BuildContext context) {
    client = BlocProvider.of<SupabaseCubit>(context).state;
    if (client == null) {
      return const Center(
        child: THeadline3(
          'Supabase is not initialized yet',
        ),
      );
    }
    return FutureBuilder<void>(
      future: _future,
      builder: (final context, final snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        }

        return ChildBuilder(
          context: context,
          state: widget.state,
          child: widget.child!,
        );
      },
    );
  }
}
