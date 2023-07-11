import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_logger/light_logger.dart';
import 'package:playground/src/core/constants/projects.dart';
import 'package:theta_models/theta_models.dart';
import 'package:uuid/uuid.dart';

part 'pages_cubit.freezed.dart';
part 'pages_state.dart';

class PagesCubit extends Cubit<PagesState> {
  PagesCubit() : super(const PagesState.loading());

  void load(BranchID branchID) {
    final currentPages = state.maybeWhen(
      loaded: (pages) => pages,
      orElse: () => null,
    );
    if (currentPages != null) {
      emit(PagesState.loaded(currentPages));
      return;
    }
    emit(const PagesState.loaded([
      defaultPage,
    ]));
  }

  _addPageToState(PageEntity page) {
    state.whenOrNull(loaded: (state) {
      emit(PagesState.loaded([...state, page]));
    });
  }

  _updatePageToState(PageEntity page) {
    state.whenOrNull(loaded: (state) {
      final newState = [...state];
      newState[newState.indexWhere((e) => e.id == page.id)] = page;
      emit(PagesState.loaded(newState));
    });
  }

  _removePageFromState(PageID id) {
    state.whenOrNull(loaded: (state) {
      emit(PagesState.loaded([...state]..removeWhere((e) => e.id == id)));
    });
  }

  void onPageAdded({required BranchID branchID, required String pageName}) =>
      _addPageToState(PageEntity(
          id: const Uuid().v1(),
          branchID: branchID,
          name: pageName,
          stabilID: const Uuid().v1()));

  void onPageUpdated(PageEntity page) => _updatePageToState(page);

  void onPageDeleted(PageID pageID) => _removePageFromState(pageID);

  @override
  void onChange(Change<PagesState> change) {
    super.onChange(change);
    change.nextState.maybeWhen(
      error: (errorMessage) => Logger.printError(errorMessage),
      orElse: () => null,
    );
  }
}
