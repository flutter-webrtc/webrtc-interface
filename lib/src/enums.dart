enum RecorderAudioChannel { INPUT, OUTPUT }

/// RTCDataChannelMessage type
enum MessageType { text, binary }

enum DataChannelProtocol { sctp , quic }

enum SdpType { offer, answer }

enum TrackType { audio, video }

enum DeviceInfoType { videoInput, audioInput, audioOutput }

enum RTCDataChannelState {
  RTCDataChannelConnecting,
  RTCDataChannelOpen,
  RTCDataChannelClosing,
  RTCDataChannelClosed,
}

enum RTCSignalingState {
  RTCSignalingStateStable,
  RTCSignalingStateHaveLocalOffer,
  RTCSignalingStateHaveRemoteOffer,
  RTCSignalingStateHaveLocalPrAnswer,
  RTCSignalingStateHaveRemotePrAnswer,
  RTCSignalingStateClosed
}

enum RTCIceGatheringState {
  RTCIceGatheringStateNew,
  RTCIceGatheringStateGathering,
  RTCIceGatheringStateComplete
}

enum RTCPeerConnectionState {
  RTCPeerConnectionStateClosed,
  RTCPeerConnectionStateFailed,
  RTCPeerConnectionStateDisconnected,
  RTCPeerConnectionStateNew,
  RTCPeerConnectionStateConnecting,
  RTCPeerConnectionStateConnected
}

enum RTCIceConnectionState {
  RTCIceConnectionStateNew,
  RTCIceConnectionStateChecking,
  RTCIceConnectionStateCompleted,
  RTCIceConnectionStateConnected,
  RTCIceConnectionStateCount,
  RTCIceConnectionStateFailed,
  RTCIceConnectionStateDisconnected,
  RTCIceConnectionStateClosed,
}

enum RTCVideoViewObjectFit {
  RTCVideoViewObjectFitContain,
  RTCVideoViewObjectFitCover,
}

enum RTCRtpMediaType {
  RTCRtpMediaTypeAudio,
  RTCRtpMediaTypeVideo,
  RTCRtpMediaTypeData,
}

final typeRTCRtpMediaTypetoString = <RTCRtpMediaType, String>{
  RTCRtpMediaType.RTCRtpMediaTypeAudio: 'audio',
  RTCRtpMediaType.RTCRtpMediaTypeVideo: 'video',
  RTCRtpMediaType.RTCRtpMediaTypeData: 'data',
};

final typeStringToRTCRtpMediaType = <String, RTCRtpMediaType>{
  'audio': RTCRtpMediaType.RTCRtpMediaTypeAudio,
  'video': RTCRtpMediaType.RTCRtpMediaTypeVideo,
  'data': RTCRtpMediaType.RTCRtpMediaTypeData,
};

enum TransceiverDirection {
  SendRecv,
  SendOnly,
  RecvOnly,
  Inactive,
  Stopped,
}

final typeStringToRtpTransceiverDirection = <String, TransceiverDirection>{
  'sendrecv': TransceiverDirection.SendRecv,
  'sendonly': TransceiverDirection.SendOnly,
  'recvonly': TransceiverDirection.RecvOnly,
  'inactive': TransceiverDirection.Inactive,
  'stopped': TransceiverDirection.Stopped,
};

final typeRtpTransceiverDirectionToString = <TransceiverDirection, String>{
  TransceiverDirection.SendRecv: 'sendrecv',
  TransceiverDirection.SendOnly: 'sendonly',
  TransceiverDirection.RecvOnly: 'recvonly',
  TransceiverDirection.Inactive: 'inactive',
  TransceiverDirection.Stopped: 'stopped,'
};

RTCIceConnectionState iceConnectionStateForString(String? state) {
  switch (state) {
    case 'new':
      return RTCIceConnectionState.RTCIceConnectionStateNew;
    case 'checking':
      return RTCIceConnectionState.RTCIceConnectionStateChecking;
    case 'connected':
      return RTCIceConnectionState.RTCIceConnectionStateConnected;
    case 'completed':
      return RTCIceConnectionState.RTCIceConnectionStateCompleted;
    case 'failed':
      return RTCIceConnectionState.RTCIceConnectionStateFailed;
    case 'disconnected':
      return RTCIceConnectionState.RTCIceConnectionStateDisconnected;
    case 'closed':
      return RTCIceConnectionState.RTCIceConnectionStateClosed;
    case 'count':
      return RTCIceConnectionState.RTCIceConnectionStateCount;
  }
  return RTCIceConnectionState.RTCIceConnectionStateClosed;
}

RTCIceGatheringState iceGatheringStateforString(String? state) {
  switch (state) {
    case 'new':
      return RTCIceGatheringState.RTCIceGatheringStateNew;
    case 'gathering':
      return RTCIceGatheringState.RTCIceGatheringStateGathering;
    case 'complete':
      return RTCIceGatheringState.RTCIceGatheringStateComplete;
  }
  return RTCIceGatheringState.RTCIceGatheringStateNew;
}

RTCSignalingState signalingStateForString(String? state) {
  switch (state) {
    case 'stable':
      return RTCSignalingState.RTCSignalingStateStable;
    case 'have-local-offer':
      return RTCSignalingState.RTCSignalingStateHaveLocalOffer;
    case 'have-local-pranswer':
      return RTCSignalingState.RTCSignalingStateHaveLocalPrAnswer;
    case 'have-remote-offer':
      return RTCSignalingState.RTCSignalingStateHaveRemoteOffer;
    case 'have-remote-pranswer':
      return RTCSignalingState.RTCSignalingStateHaveRemotePrAnswer;
    case 'closed':
      return RTCSignalingState.RTCSignalingStateClosed;
  }
  return RTCSignalingState.RTCSignalingStateClosed;
}

RTCDataChannelState rtcDataChannelStateForString(String state) {
  switch (state) {
    case 'connecting':
      return RTCDataChannelState.RTCDataChannelConnecting;
    case 'open':
      return RTCDataChannelState.RTCDataChannelOpen;
    case 'closing':
      return RTCDataChannelState.RTCDataChannelClosing;
    case 'closed':
      return RTCDataChannelState.RTCDataChannelClosed;
  }
  return RTCDataChannelState.RTCDataChannelClosed;
}

RTCPeerConnectionState peerConnectionStateForString(String? state) {
  switch (state) {
    case 'new':
      return RTCPeerConnectionState.RTCPeerConnectionStateNew;
    case 'connecting':
      return RTCPeerConnectionState.RTCPeerConnectionStateConnecting;
    case 'connected':
      return RTCPeerConnectionState.RTCPeerConnectionStateConnected;
    case 'closed':
      return RTCPeerConnectionState.RTCPeerConnectionStateClosed;
    case 'disconnected':
      return RTCPeerConnectionState.RTCPeerConnectionStateDisconnected;
    case 'failed':
      return RTCPeerConnectionState.RTCPeerConnectionStateFailed;
  }

  return RTCPeerConnectionState.RTCPeerConnectionStateClosed;
}

enum RTCDegradationPreference {
  DISABLED,
  MAINTAIN_FRAMERATE,
  MAINTAIN_RESOLUTION,
  BALANCED,
}

final typeRTCDegradationPreferenceString = <RTCDegradationPreference, String>{
  RTCDegradationPreference.DISABLED: 'disabled',
  RTCDegradationPreference.MAINTAIN_FRAMERATE: 'maintain-framerate',
  RTCDegradationPreference.MAINTAIN_RESOLUTION: 'maintain-resolution',
  RTCDegradationPreference.BALANCED: 'balanced',
};

RTCDegradationPreference degradationPreferenceforString(String? degradation) {
  switch (degradation) {
    case 'disabled':
      return RTCDegradationPreference.DISABLED;
    case 'maintain-framerate':
      return RTCDegradationPreference.MAINTAIN_FRAMERATE;
    case 'maintain-resolution':
      return RTCDegradationPreference.MAINTAIN_RESOLUTION;
    case 'balanced':
      return RTCDegradationPreference.BALANCED;
  }
  return RTCDegradationPreference.BALANCED;
}

SdpType? sdpTypeForString(String? type) {
  switch (type) {
    case 'offer':
      return SdpType.offer;
    case 'answer':
      return SdpType.answer;
    default:
      return null;
  }
}

final typeSdpTypeToString = <SdpType, String>{
  SdpType.offer: 'offer',
  SdpType.answer: 'answer',
};

TrackType? trackTypeForString(String? type) {
  switch (type) {
    case 'audio':
      return TrackType.audio;
    case 'video':
      return TrackType.video;
    default:
      return null;
  }
}

final typeTrackTypeToString = <TrackType, String>{
  TrackType.audio: 'audio',
  TrackType.video: 'video',
};

DeviceInfoType? deviceInfoTypeForString(String? type) {
  switch (type) {
    case 'audioinput':
      return DeviceInfoType.audioInput;
    case 'audiooutput':
      return DeviceInfoType.audioOutput;
    case 'videoinput':
      return DeviceInfoType.videoInput;
    default:
      return null;
  }
}

final typeDeviceInfoTypeToString = <DeviceInfoType, String>{
  DeviceInfoType.audioInput: 'audioinput',
  DeviceInfoType.audioOutput: 'audiooutput',
  DeviceInfoType.videoInput: 'videoinput',
};

DataChannelProtocol? dataChannelProtocolForString(String? type) {
  switch (type) {
    case 'quic':
      return DataChannelProtocol.quic;
    case 'sctp':
      return DataChannelProtocol.sctp;
    default:
      return null;
  }
}

final typeDataChannelProtocolToString = <DataChannelProtocol, String>{
  DataChannelProtocol.quic: 'quic',
  DataChannelProtocol.sctp: 'sctp',
};