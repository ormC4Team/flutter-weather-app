import '../dto/location_dto.dart';
import '../model/location.dart';

extension ToLocation on Results {
  Location toLocation() {
    return Location(
      // 모델클래스필드명:dto필드명 ?? '',
      name: name ?? '',
      latitude: latitude ?? 0,
      longitude: longitude ?? 0,
    );
  }
}
