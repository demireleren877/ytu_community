// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnnouncementVM on _AnnouncementVMBase, Store {
  final _$announcementsAtom = Atom(name: '_AnnouncementVMBase.announcements');

  @override
  ObservableList<String> get announcements {
    _$announcementsAtom.reportRead();
    return super.announcements;
  }

  @override
  set announcements(ObservableList<String> value) {
    _$announcementsAtom.reportWrite(value, super.announcements, () {
      super.announcements = value;
    });
  }

  final _$getAnnouncementAsyncAction =
      AsyncAction('_AnnouncementVMBase.getAnnouncement');

  @override
  Future<dynamic> getAnnouncement() {
    return _$getAnnouncementAsyncAction.run(() => super.getAnnouncement());
  }

  @override
  String toString() {
    return '''
announcements: ${announcements}
    ''';
  }
}
