import 'package:clean_architecture_app/data/repository/mappers/base/base_data_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/owner_model.dart';
import 'package:clean_architecture_app/domain/entities/owner_basic_info.dart';

class OwnerMapper extends BaseDataMapper<OwnerModel, OwnerBasicInfo> {
  @override
  OwnerBasicInfo mapToEntity(OwnerModel? data) {
    return OwnerBasicInfo(
        id: data?.id ?? 0,
        fullName: data?.fullName ?? "",
        phoneNumber: data?.phoneNumber ?? "",
        email: data?.email ?? "",
        avatarURL: data?.avatarURL ?? "");
  }
}
