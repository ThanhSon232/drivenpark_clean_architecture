import 'package:clean_architecture_app/data/repository/mappers/base/base_data_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/car_model.dart';
import 'package:clean_architecture_app/domain/entities/car_basic_info.dart';
import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/shared/helper/money_helper.dart';

class CarMapper extends BaseDataMapper<CarModel, CarBasicInfo> {
  @override
  CarBasicInfo mapToEntity(CarModel? data) {
    return CarBasicInfo(
        id: data?.id ?? 0,
        price: MoneyHelper.formatMoney(data?.price ?? 0),
        carName: "${data?.carBrand ?? ""} ${data?.carModel ?? ""}",
        rating: data?.rating?.toStringAsPrecision(2) ?? "0.0",
        supportDelivery: data?.supportDelivery ?? false,
        imageURL: data?.imageURL ?? "",
        address: SearchLocation(address: data?.address ?? ""));
  }
}
