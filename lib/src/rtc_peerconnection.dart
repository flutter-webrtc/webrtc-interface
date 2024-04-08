import 'dart:async';

import 'enums.dart';
import 'media_stream.dart';
import 'media_stream_track.dart';
import 'rtc_data_channel.dart';
import 'rtc_dtmf_sender.dart';
import 'rtc_ice_candidate.dart';
import 'rtc_rtp_receiver.dart';
import 'rtc_rtp_sender.dart';
import 'rtc_rtp_transceiver.dart';
import 'rtc_session_description.dart';
import 'rtc_stats_report.dart';
import 'rtc_track_event.dart';

abstract class RTCPeerConnection {
  RTCPeerConnection();

  // public: delegate
  Function(RTCSignalingState state)? onSignalingState;
  Function(RTCPeerConnectionState state)? onConnectionState;
  Function(RTCIceGatheringState state)? onIceGatheringState;
  Function(RTCIceConnectionState state)? onIceConnectionState;
  Function(RTCIceCandidate candidate)? onIceCandidate;

  @Deprecated('Deprecated API')
  Function(MediaStream stream)? onAddStream;
  @Deprecated('Deprecated API')
  Function(MediaStream stream)? onRemoveStream;
  @Deprecated('Deprecated API')
  Function(MediaStream stream, MediaStreamTrack track)? onAddTrack;
  @Deprecated('Deprecated API')
  Function(MediaStream stream, MediaStreamTrack track)? onRemoveTrack;

  Function(RTCDataChannel channel)? onDataChannel;
  Function()? onRenegotiationNeeded;

  /// Unified-Plan
  Function(RTCTrackEvent event)? onTrack;

  RTCSignalingState? get signalingState;

  Future<RTCSignalingState?> getSignalingState() async {
    return signalingState;
  }

  RTCIceGatheringState? get iceGatheringState;

  Future<RTCIceGatheringState?> getIceGatheringState() async {
    return iceGatheringState;
  }

  RTCIceConnectionState? get iceConnectionState;

  Future<RTCIceConnectionState?> getIceConnectionState() async {
    return iceConnectionState;
  }

  RTCPeerConnectionState? get connectionState;

  Future<RTCPeerConnectionState?> getConnectionState() async {
    return connectionState;
  }

  Future<void> dispose();

  Map<String, dynamic> get getConfiguration;

  Future<void> setConfiguration(Map<String, dynamic> configuration);

  Future<RTCSessionDescription> createOffer([Map<String, dynamic> constraints]);

  Future<RTCSessionDescription> createAnswer(
      [Map<String, dynamic> constraints]);

  @Deprecated('Deprecated API')
  Future<void> addStream(MediaStream stream);

  @Deprecated('Deprecated API')
  Future<void> removeStream(MediaStream stream);

  Future<RTCSessionDescription?> getLocalDescription();

  Future<void> setLocalDescription(RTCSessionDescription description);

  Future<RTCSessionDescription?> getRemoteDescription();

  Future<void> setRemoteDescription(RTCSessionDescription description);

  Future<void> addCandidate(RTCIceCandidate candidate);

  Future<List<StatsReport>> getStats([MediaStreamTrack? track]);

  @Deprecated('Deprecated API')
  List<MediaStream?> getLocalStreams();

  @Deprecated('Deprecated API')
  List<MediaStream?> getRemoteStreams();

  Future<RTCDataChannel> createDataChannel(
      String label, RTCDataChannelInit dataChannelDict);

  Future<void> restartIce();

  Future<void> close();

  @Deprecated('Deprecated API, use RTCRtpSender.dtmf instead')
  RTCDTMFSender createDtmfSender(MediaStreamTrack track);

  /// Unified-Plan.
  Future<List<RTCRtpSender>> getSenders();

  Future<List<RTCRtpSender>> get senders => getSenders();

  Future<List<RTCRtpReceiver>> getReceivers();

  Future<List<RTCRtpReceiver>> get receivers => getReceivers();

  Future<List<RTCRtpTransceiver>> getTransceivers();

  Future<List<RTCRtpTransceiver>> get transceivers => getTransceivers();

  Future<RTCRtpSender> addTrack(MediaStreamTrack track, [MediaStream stream]);

  Future<bool> removeTrack(RTCRtpSender sender);

  /// 'audio|video', { 'direction': 'recvonly|sendonly|sendrecv' }
  Future<RTCRtpTransceiver> addTransceiver(
      {MediaStreamTrack track,
      RTCRtpMediaType kind,
      RTCRtpTransceiverInit init});
}
