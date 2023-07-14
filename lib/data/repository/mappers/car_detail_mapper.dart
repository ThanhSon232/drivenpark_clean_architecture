
import 'package:clean_architecture_app/data/repository/mappers/base/base_data_mapper.dart';
import 'package:clean_architecture_app/data/repository/mappers/owner_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/car_detail_model.dart';
import 'package:clean_architecture_app/domain/entities/car_detail_info.dart';
import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/shared/helper/money_helper.dart';
import 'dart:convert';

class CarDetailMapper extends BaseDataMapper<CarDetailModel, CarDetailInfo> {
  @override
  CarDetailInfo mapToEntity(CarDetailModel? data) {
    List<String> imageURL = [];
    if (data != null && data.images != null) {
      data.images?.forEach((element) {
        if (element.imageLink != null) {
          imageURL.add(element.imageLink!);
        }
      });
    }
    List<Map<String,dynamic>> rawPolicies = json.decode(data?.rentalPolicy ?? "").cast<Map<String,dynamic>>().toList();
    var policies = <String>[];
    rawPolicies.forEach((element) {
      policies.add(element["Policy"]);
    });

    return CarDetailInfo(
        id: data?.id ?? 0,
        owner: OwnerMapper().mapToEntity(data?.owner),
        transmission: data?.transmission ?? "",
        type: data?.type ?? "",
        manufacturedYear: (data?.manufacturedYear ?? 0).toString(),
        policies: policies,
        price: MoneyHelper.formatMoney(int.parse((data?.price?.toInt() ?? "0").toString())),
        seat: (data?.id ?? 0).toString(),
        carName:
            "${data?.carModel?.carBrand?.name ?? ""} ${data?.carModel?.name ?? ""}",
        rating: data?.rating?.toStringAsPrecision(2) ?? "0.0",
        supportDelivery: data?.supportDelivery ?? false,
        imageURL: imageURL,
        address: SearchLocation(address: data?.address?.addressName ?? ""),
        features: json.decode(data?.features ?? "").cast<String>().toList(),
        rentalRequirements:
            json.decode(data?.rentalRequirement ?? "").cast<String>().toList());
  }
}
