// Package imports:
// ignore_for_file: public_member_api_docs, must_be_immutable

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

// Project imports:
import 'package:theta_models/src/models/backup.dart';

enum CommitType {
  change,
  delete,
}

//salva il vecchio valore di un attributo per poterlo ripristinare
//se l'utente vuole ritornare indietro di una o più azioni

class CommitBackup extends Equatable {
  CommitBackup({
    this.prj,
    this.page,
    this.backups,
    this.type,
    this.reverted,
  }) {
    reverted ??= false;
    type ??= CommitType.change;
  }

  final String id = const Uuid().v1();
  final String? prj;
  final String? page;
  List<Backup>? backups;
  CommitType? type;
  bool? reverted = false;

  @override
  List<Object> get props => [];

  @override
  String toString() => 'CommitBackups { id: $id, backups: $backups }';
}
