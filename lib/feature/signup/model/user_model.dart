import 'package:hive/hive.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  String? email;
  @HiveField(1)
  String? imageUrl;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? facility;
  @HiveField(4)
  String? schoolNumber;
  UserModel(
      {this.email, this.imageUrl, this.facility, this.name, this.schoolNumber});
}
