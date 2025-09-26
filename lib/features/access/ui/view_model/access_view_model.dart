import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

import '../../repository/access_repository.dart';
import '../state/access_state.dart';

part 'access_view_model.g.dart';

@Riverpod(keepAlive: true)
class AccessViewModel extends _$AccessViewModel {
  @override
  FutureOr<AccessState> build() async {
    try {
      final access = await ref.read(accessRepositoryProvider).getAccess();
      return AccessState(access: access);
    } catch(error) {
      rethrow;
    }
  }

  String formatDateTime(DateTime dateTime) {
    final jstDateTime = dateTime.toLocal();
    return DateFormat('yyyy年M月d日(E) HH:mm', 'ja_JP').format(jstDateTime);
  }

  Future<void> openRestaurantURL() async {
    final access = state.valueOrNull?.access;
    if (access?.restaurantURL != null) {
      final url = Uri.parse(access!.restaurantURL);
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      }
    }
  }

  Future<void> openVenueURL() async {
    final access = state.valueOrNull?.access;
    if (access?.venueURL != null) {
      final url = Uri.parse(access!.venueURL);
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      }
    }
  }

  Future<void> openGoogleMaps() async {
    final access = state.valueOrNull?.access;
    if (access?.latitude != null && access?.longitude != null) {
      final url = Uri.parse(
        'https://www.google.com/maps/place/${access!.latitude},${access.longitude}/@${access.latitude},${access.longitude},18z/data',
      );
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      }
    }
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
