import 'dart:async';

import 'package:webrtc_interface/src/rtc_rtp_capabilities.dart';

import 'media_stream_track.dart';
import 'rtc_dtmf_sender.dart';
import 'rtc_rtp_parameters.dart';
import 'rtc_stats_report.dart';

abstract class RTCRtpSender {
  RTCRtpSender();

  Future<bool> setParameters(RTCRtpParameters parameters);

  Future<void> replaceTrack(MediaStreamTrack? track);

  Future<void> setTrack(MediaStreamTrack? track, {bool takeOwnership = true});

  Future<List<StatsReport>> getStats();

  Future<RTCRtpCapabilities> getCapabilities();

  RTCRtpParameters get parameters;

  MediaStreamTrack? get track;

  String get senderId;

  bool get ownsTrack;

  RTCDTMFSender get dtmfSender;

  Future<void> dispose();
}
