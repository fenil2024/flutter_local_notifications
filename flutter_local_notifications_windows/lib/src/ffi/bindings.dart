// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as pkg_ffi;

/// Bindings for `src/ffi_api.h`.
///
/// Regenerate bindings with `dart run ffigen --config ffigen.yaml`.
///
class NotificationsPluginBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NotificationsPluginBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NotificationsPluginBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Allocates a new plugin that must be released with [disposePlugin].
  ffi.Pointer<NativePlugin> createPlugin() {
    return _createPlugin();
  }

  late final _createPluginPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<NativePlugin> Function()>>(
          'createPlugin');
  late final _createPlugin =
      _createPluginPtr.asFunction<ffi.Pointer<NativePlugin> Function()>();

  /// Releases the plugin and any resources it was holding onto.
  void disposePlugin(
    ffi.Pointer<NativePlugin> ptr,
  ) {
    return _disposePlugin(
      ptr,
    );
  }

  late final _disposePluginPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<NativePlugin>)>>(
          'disposePlugin');
  late final _disposePlugin =
      _disposePluginPtr.asFunction<void Function(ffi.Pointer<NativePlugin>)>();

  /// Initializes the plugin and registers the callback to be run when a notification is pressed.
  bool init(
    ffi.Pointer<NativePlugin> plugin,
    ffi.Pointer<pkg_ffi.Utf8> appName,
    ffi.Pointer<pkg_ffi.Utf8> aumId,
    ffi.Pointer<pkg_ffi.Utf8> guid,
    ffi.Pointer<pkg_ffi.Utf8> iconPath,
    NativeNotificationCallback callback,
  ) {
    return _init(
      plugin,
      appName,
      aumId,
      guid,
      iconPath,
      callback,
    );
  }

  late final _initPtr = _lookup<
      ffi.NativeFunction<
          ffi.Bool Function(
              ffi.Pointer<NativePlugin>,
              ffi.Pointer<pkg_ffi.Utf8>,
              ffi.Pointer<pkg_ffi.Utf8>,
              ffi.Pointer<pkg_ffi.Utf8>,
              ffi.Pointer<pkg_ffi.Utf8>,
              NativeNotificationCallback)>>('init');
  late final _init = _initPtr.asFunction<
      bool Function(
          ffi.Pointer<NativePlugin>,
          ffi.Pointer<pkg_ffi.Utf8>,
          ffi.Pointer<pkg_ffi.Utf8>,
          ffi.Pointer<pkg_ffi.Utf8>,
          ffi.Pointer<pkg_ffi.Utf8>,
          NativeNotificationCallback)>();

  /// Shows the XML as a notification with the given ID. See [updateNotification] for details on bindings.
  bool showNotification(
    ffi.Pointer<NativePlugin> plugin,
    int id,
    ffi.Pointer<pkg_ffi.Utf8> xml,
    NativeStringMap bindings,
  ) {
    return _showNotification(
      plugin,
      id,
      xml,
      bindings,
    );
  }

  late final _showNotificationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Bool Function(ffi.Pointer<NativePlugin>, ffi.Int,
              ffi.Pointer<pkg_ffi.Utf8>, NativeStringMap)>>('showNotification');
  late final _showNotification = _showNotificationPtr.asFunction<
      bool Function(ffi.Pointer<NativePlugin>, int, ffi.Pointer<pkg_ffi.Utf8>,
          NativeStringMap)>();

  /// Schedules the notification to be shown at the given time (as a [time_t]).
  bool scheduleNotification(
    ffi.Pointer<NativePlugin> plugin,
    int id,
    ffi.Pointer<pkg_ffi.Utf8> xml,
    int time,
  ) {
    return _scheduleNotification(
      plugin,
      id,
      xml,
      time,
    );
  }

  late final _scheduleNotificationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Bool Function(ffi.Pointer<NativePlugin>, ffi.Int,
              ffi.Pointer<pkg_ffi.Utf8>, ffi.Int)>>('scheduleNotification');
  late final _scheduleNotification = _scheduleNotificationPtr.asFunction<
      bool Function(
          ffi.Pointer<NativePlugin>, int, ffi.Pointer<pkg_ffi.Utf8>, int)>();

  /// Updates a notification with the provided bindings after it's been shown.
  ///
  /// String values in the `<binding>` element of the XML can be placeholders instead of values,
  /// for example, `<text>{name}</text>` and then call this function with a map with a `name` key,
  /// and any string value, and the notification will be updated with that value where `name` was.
  NativeUpdateResult updateNotification(
    ffi.Pointer<NativePlugin> plugin,
    int id,
    NativeStringMap bindings,
  ) {
    return NativeUpdateResult.fromValue(_updateNotification(
      plugin,
      id,
      bindings,
    ));
  }

  late final _updateNotificationPtr = _lookup<
      ffi.NativeFunction<
          ffi.UnsignedInt Function(ffi.Pointer<NativePlugin>, ffi.Int,
              NativeStringMap)>>('updateNotification');
  late final _updateNotification = _updateNotificationPtr.asFunction<
      int Function(ffi.Pointer<NativePlugin>, int, NativeStringMap)>();

  /// Cancels all notifications.
  void cancelAll(
    ffi.Pointer<NativePlugin> plugin,
  ) {
    return _cancelAll(
      plugin,
    );
  }

  late final _cancelAllPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<NativePlugin>)>>(
          'cancelAll');
  late final _cancelAll =
      _cancelAllPtr.asFunction<void Function(ffi.Pointer<NativePlugin>)>();

  /// Cancels a notification with the given ID.
  ///
  /// Only applications with "package identity" (ie, installed with an MSIX installer), can use this.
  void cancelNotification(
    ffi.Pointer<NativePlugin> plugin,
    int id,
  ) {
    return _cancelNotification(
      plugin,
      id,
    );
  }

  late final _cancelNotificationPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<NativePlugin>, ffi.Int)>>('cancelNotification');
  late final _cancelNotification = _cancelNotificationPtr
      .asFunction<void Function(ffi.Pointer<NativePlugin>, int)>();

  /// Gets all notifications that have already been shown but are still in the Action center.
  ///
  /// Only applications with "package identity" (ie, installed with an MSIX installer), can use this.
  /// When your app does not have identity, such as in debug mode, this will return an empty array.
  ffi.Pointer<NativeNotificationDetails> getActiveNotifications(
    ffi.Pointer<NativePlugin> plugin,
    ffi.Pointer<ffi.Int> size,
  ) {
    return _getActiveNotifications(
      plugin,
      size,
    );
  }

  late final _getActiveNotificationsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<NativeNotificationDetails> Function(
              ffi.Pointer<NativePlugin>,
              ffi.Pointer<ffi.Int>)>>('getActiveNotifications');
  late final _getActiveNotifications = _getActiveNotificationsPtr.asFunction<
      ffi.Pointer<NativeNotificationDetails> Function(
          ffi.Pointer<NativePlugin>, ffi.Pointer<ffi.Int>)>();

  /// Gets all notifications that have been scheduled but not yet shown.
  ffi.Pointer<NativeNotificationDetails> getPendingNotifications(
    ffi.Pointer<NativePlugin> plugin,
    ffi.Pointer<ffi.Int> size,
  ) {
    return _getPendingNotifications(
      plugin,
      size,
    );
  }

  late final _getPendingNotificationsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<NativeNotificationDetails> Function(
              ffi.Pointer<NativePlugin>,
              ffi.Pointer<ffi.Int>)>>('getPendingNotifications');
  late final _getPendingNotifications = _getPendingNotificationsPtr.asFunction<
      ffi.Pointer<NativeNotificationDetails> Function(
          ffi.Pointer<NativePlugin>, ffi.Pointer<ffi.Int>)>();

  /// Releases the memory associated with a [NativeNotificationDetails] array.
  void freeDetailsArray(
    ffi.Pointer<NativeNotificationDetails> ptr,
  ) {
    return _freeDetailsArray(
      ptr,
    );
  }

  late final _freeDetailsArrayPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<NativeNotificationDetails>)>>('freeDetailsArray');
  late final _freeDetailsArray = _freeDetailsArrayPtr
      .asFunction<void Function(ffi.Pointer<NativeNotificationDetails>)>();

  /// Releases the memory associated with a [NativeLaunchDetails].
  void freeLaunchDetails(
    NativeLaunchDetails details,
  ) {
    return _freeLaunchDetails(
      details,
    );
  }

  late final _freeLaunchDetailsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(NativeLaunchDetails)>>(
          'freeLaunchDetails');
  late final _freeLaunchDetails =
      _freeLaunchDetailsPtr.asFunction<void Function(NativeLaunchDetails)>();

  /// EXPERIMENTAL: Enables multithreading for this application.
  ///
  /// NOTE: This is only to make tests more stable and is not intended to be used in applications.
  void enableMultithreading() {
    return _enableMultithreading();
  }

  late final _enableMultithreadingPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('enableMultithreading');
  late final _enableMultithreading =
      _enableMultithreadingPtr.asFunction<void Function()>();
}

final class NativePlugin extends ffi.Opaque {}

/// A key-value pair in a map where both the keys and values are strings.
final class StringMapEntry extends ffi.Struct {
  external ffi.Pointer<pkg_ffi.Utf8> key;

  external ffi.Pointer<pkg_ffi.Utf8> value;
}

/// A map where the keys and values are all strings.
final class NativeStringMap extends ffi.Struct {
  external ffi.Pointer<StringMapEntry> entries;

  @ffi.Int()
  external int size;
}

/// Details about a notification.
final class NativeNotificationDetails extends ffi.Struct {
  @ffi.Int()
  external int id;
}

/// How the app was launched, either by pressing on the notification or an action within it.
enum NativeLaunchType {
  notification(0),
  action(1);

  final int value;
  const NativeLaunchType(this.value);

  static NativeLaunchType fromValue(int value) => switch (value) {
        0 => notification,
        1 => action,
        _ => throw ArgumentError("Unknown value for NativeLaunchType: $value"),
      };
}

/// Details about how the app was launched.
final class NativeLaunchDetails extends ffi.Struct {
  /// Whether the app was launched by a notification
  @ffi.Bool()
  external bool didLaunch;

  /// What part of the notification launched the app.
  @ffi.UnsignedInt()
  external int launchType;

  /// The payload sent to the app by the notification. Usually the action that was pressed.
  external ffi.Pointer<pkg_ffi.Utf8> payload;

  /// The IDs and values of any text inputs in the notification.
  external NativeStringMap data;
}

/// See: https://learn.microsoft.com/en-us/uwp/api/windows.ui.notifications.notificationupdateresult
enum NativeUpdateResult {
  success(0),
  failed(1),
  notFound(2);

  final int value;
  const NativeUpdateResult(this.value);

  static NativeUpdateResult fromValue(int value) => switch (value) {
        0 => success,
        1 => failed,
        2 => notFound,
        _ =>
          throw ArgumentError("Unknown value for NativeUpdateResult: $value"),
      };
}

/// A callback that is run with [NativeLaunchDetails] when a notification is pressed.
///
/// This may be called at app launch or even while the app is running.
typedef NativeNotificationCallback
    = ffi.Pointer<ffi.NativeFunction<NativeNotificationCallbackFunction>>;
typedef NativeNotificationCallbackFunction = ffi.Void Function(
    NativeLaunchDetails details);
typedef DartNativeNotificationCallbackFunction = void Function(
    NativeLaunchDetails details);