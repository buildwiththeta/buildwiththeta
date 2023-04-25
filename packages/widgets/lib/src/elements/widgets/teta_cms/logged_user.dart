import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_db_flutter/theta_db_flutter.dart';
import 'package:theta_models/theta_models.dart';

class OpenWCMSLoggedUser extends StatefulWidget {
  /// Construct
  const OpenWCMSLoggedUser({
    super.key,
    required this.state,
    required this.children,
  });

  final WidgetState state;

  /// The optional child of this widget
  final List<CNode> children;

  @override
  _WCMSLoggedUserState createState() => _WCMSLoggedUserState();
}

class _WCMSLoggedUserState extends State<OpenWCMSLoggedUser> {
  DatasetObject _map = const DatasetObject(
    name: 'Teta Auth User',
    map: [<String, dynamic>{}],
  );
  late Future<User> _future;

  Future<User> load() async {
    final user = await ThetaDB.instance.auth.user.get;
    return user;
  }

  @override
  void initState() {
    _future = load();
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (final context, final snapshot) {
        if (!snapshot.hasData) {
          if (widget.children.isNotEmpty) {
            return widget.children.last.toWidget(
              context: context,
              state: widget.state,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }

        final data = snapshot.data as User?;
        final map = <String, dynamic>{
          'isLogged': data?.isLogged,
          'uid': data?.uid,
          'name': data?.name,
          'email': data?.email,
          'provider': data?.provider,
          'created_at': data?.createdAt,
        };
        _map = _map.copyWith(
          name: 'Teta Auth User',
          map: [map],
        );
        addDataset(context, _map);
        if (widget.children.isNotEmpty) {
          return widget.children.first.toWidget(
            context: context,
            state: widget.state.copyWith(
              node: widget.children.first,
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
