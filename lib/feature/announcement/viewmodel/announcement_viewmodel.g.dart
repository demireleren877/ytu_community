// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnnouncementVM on _AnnouncementVMBase, Store {
  final _$announcementTitlesAtom =
      Atom(name: '_AnnouncementVMBase.announcementTitles');

  @override
  ObservableList<String>? get announcementTitles {
    _$announcementTitlesAtom.reportRead();
    return super.announcementTitles;
  }

  @override
  set announcementTitles(ObservableList<String>? value) {
    _$announcementTitlesAtom.reportWrite(value, super.announcementTitles, () {
      super.announcementTitles = value;
    });
  }

  final _$announcementLinksAtom =
      Atom(name: '_AnnouncementVMBase.announcementLinks');

  @override
  ObservableList<String>? get announcementLinks {
    _$announcementLinksAtom.reportRead();
    return super.announcementLinks;
  }

  @override
  set announcementLinks(ObservableList<String>? value) {
    _$announcementLinksAtom.reportWrite(value, super.announcementLinks, () {
      super.announcementLinks = value;
    });
  }

  final _$getAnnouncementsAsyncAction =
      AsyncAction('_AnnouncementVMBase.getAnnouncements');

  @override
  Future<dynamic> getAnnouncements() {
    return _$getAnnouncementsAsyncAction.run(() => super.getAnnouncements());
  }

  @override
  String toString() {
    return '''
announcementTitles: ${announcementTitles},
announcementLinks: ${announcementLinks}
    ''';
  }
}
