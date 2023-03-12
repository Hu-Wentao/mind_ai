import 'dart:async';

import 'package:flutter_app_update/update_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_arch_core/get_arch_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
import 'service.dart';
import 'package:provider_sidecar/provider_sidecar.dart';
import 'package:flutter_app_update/azhon_app_update.dart';

import '../inter/inter.dart';
import '../domain/domain.dart';

part 'provider.freezed.dart';

part './provider/app_model.dart';

part './provider/chat_model.dart';

part './provider/acct_model.dart';
