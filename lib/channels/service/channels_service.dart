part of '../interface/channels_interface.dart';

class ChannelsService implements ChannelsInterface {
  ChannelsService(this.dioClient);
  final DioClient dioClient;

  @override
  Future<Either<UCTaskException, List<PackageData>>> getPackages({
    required String operatorId,
    required String userId,
  }) async {
    try {
      final response = await dioClient.dio.get<Map<String, dynamic>>(
        'v1/$operatorId/users/$userId/packages',
        queryParameters: {'device_class': 'Mobile'},
      );
      final responseData = response.data?['data'];
      return right(
        List.from(
          (responseData as List<dynamic>)
              .map((e) => PackageData.fromJson(e as Map<String, dynamic>)),
        ),
      );
    } catch (e) {
      debugPrint('ChannelsService getPackages() exception: $e');
      return left(const UCTaskException.channels());
    }
  }

  @override
  Future<Either<UCTaskException, List<Channel>>> getChannels({
    required String operatorId,
    required List<int> packages,
  }) async {
    try {
      final response = await dioClient.dio.get<Map<String, dynamic>>(
        'v2/$operatorId/channels',
        queryParameters: {'packages': packages.join(',')},
      );
      final list = List<Channel>.from(
        (response.data?['data'] as List<dynamic>)
            .map((e) => Channel.fromJson(e as Map<String, dynamic>))
            .toList(),
      )..sort(
          (a, b) => a.position.compareTo(b.position),
        );
      return right(list);
    } catch (e) {
      debugPrint('ChannelsService getChannels() exception: $e');
      return left(const UCTaskException.channels());
    }
  }
}
