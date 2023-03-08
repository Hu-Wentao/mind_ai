import 'dart:async';

import 'package:flutter_app_update/update_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'service.dart';
import '../domain/domain.dart';
import 'package:provider_sidecar/provider_sidecar.dart';
import 'package:flutter_app_update/azhon_app_update.dart';

import '../inter/inter.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:cuid2/cuid2.dart';

part 'provider.freezed.dart';

part './provider/app_model.dart';

part './provider/chat_model.dart';

part './provider/acct_model.dart';
