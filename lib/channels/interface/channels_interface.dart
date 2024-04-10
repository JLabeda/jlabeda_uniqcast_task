import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:jlabeda_uniqcast_task/channels/model/channel/channel.dart';
import 'package:jlabeda_uniqcast_task/channels/model/package_data/package_data.dart';
import 'package:jlabeda_uniqcast_task/core/dio_client.dart';
import 'package:jlabeda_uniqcast_task/core/model/uc_task_exception.dart';

part '../service/channels_service.dart';

abstract class ChannelsInterface {
  Future<Either<UCTaskException, List<PackageData>>> getPackages({
    required String operatorId,
    required String userId,
  });
  Future<Either<UCTaskException, List<Channel>>> getChannels({
    required String operatorId,
    required List<int> packages,
  });
}
