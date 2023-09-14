# Changelog

--------------------------------------------
[1.1.2] - 2023-09-14

* Add more frame cryptor api.

[1.1.1] - 2023-08-14

* Add more async methods.

[1.1.0] - 2023-06-29

* Add FrameCryptor interface.

[1.0.13] - 2023-04-14

* Add RTCDegradationPreference to RTCRtpParameters.

[1.0.12] - 2023-04-10

* Add addStreams to RTCRtpSender.

[1.0.11] - 2023-01-30

* Add RTCRtpCapabilities interface.

[1.0.10] - 2022-11-12

* Change MediaStream.clone to async.

[1.0.9] - 2022-11-02

* Update MediaRecorder interface.

[1.0.8] - 2022-09-06

* Added callback onFirstFrameRendered.

[1.0.7] - 2022-08-04

* Add stub for selectAudioOutput.

[1.0.6] - 2022-08-04

* Add selectAudioOutput method to MediaDevices.
* Add ondevicechange property to MediaDevices.

[1.0.5] - 2022-05-31

* Added Function(int currentAmount, int changedAmount)? onBufferedAmountChange callback (bufferedAmount should be set to non nullable after bufferedAmount implementation on all platforms).
* Added Function(int currentAmount)? onBufferedAmountLow callback and bufferedAmountLowThreshold variable.

[1.0.4] - 2022-05-08

* Change to nullable track for replaceTrack/setTrack.

[1.0.3] - 2022-03-31

* Added RTCDataChannel.id

[1.0.2] - 2022-02-07

* chore: Add restartIce.
* fix: Fix case for RTCIceCandidate.sdpMLineIndex.

[1.0.1] - 2021-11-25

* Added comment for VideoRenderer.onResize.
* Remove unnecessary function alias declarations.

[1.0.0] - 2021-11-19

* initial version.
