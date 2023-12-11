.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$AudioFocusHandler;,
        Lcom/android/server/FMRadioService$ListenerRecord;,
        Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;,
        Lcom/android/server/FMRadioService$ScanThread;
    }
.end annotation


# static fields
.field private static final ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final ACTION_CAMERA_START:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_START"

.field private static final ACTION_CAMERA_STOP:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_STOP"

.field private static final ACTION_SAVE_FMRECORDING_ONLY:Ljava/lang/String; = "com.samsung.media.save_fmrecording_only"

.field private static final ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.sec.android.fm.volume_lock"

.field private static final ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.sec.android.fm.volume_unlock"

.field private static final APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field private static final AUDIO_FOCUS_NO_FADEOUT_TAG:Ljava/lang/String; = "NO_FADEOUT_FROM_AUDIOFOCUS"

.field private static final AVC_MODE_ON:I = 0x1

.field public static final BAND_76000_108000_kHz:I = 0x2

.field public static final BAND_76000_90000_kHz:I = 0x3

.field public static final BAND_87500_108000_kHz:I = 0x1

.field public static final BAND_EXTERNALCHIPSET_64000_76000_kHz:I = 0x3

.field public static final BAND_EXTERNALCHIPSET_76000_107000_kHz:I = 0x1

.field public static final BAND_EXTERNALCHIPSET_76000_91000_kHz:I = 0x2

.field public static final BAND_EXTERNALCHIPSET_87000_108000_kHz:I = 0x0

.field public static final CHAN_SPACING_100_kHz:I = 0xa

.field public static final CHAN_SPACING_200_kHz:I = 0x14

.field public static final CHAN_SPACING_50_kHz:I = 0x5

.field public static final CHAN_SPACING_EXTERNALCHIPSET_100_kHz:I = 0x1

.field public static final CHAN_SPACING_EXTERNALCHIPSET_200_kHz:I = 0x0

.field public static final CHAN_SPACING_EXTERNALCHIPSET_50_kHz:I = 0x2

.field private static final CODE_SCAN_PROGRESS:I = 0x1

.field public static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field public static final DE_TIME_CONSTANT_50:I = 0x1

.field public static final DE_TIME_CONSTANT_75:I = 0x0

.field private static final DISABLE_SLIMBUS_DATA_PORT:I = 0x0

.field private static final ENABLE_SLIMBUS_DATA_PORT:I = 0x1

.field static final EVENT_AF_RECEIVED:I = 0xe

.field static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field static final EVENT_RDS_EVENT:I = 0xa

.field static final EVENT_REC_FINISH:I = 0x11

.field static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field public static final EVENT_VOLUME_LOCK:I = 0xf

.field private static final FACTORY_APP_NAME:Ljava/lang/String; = "com.sec.factory.app.fm"

.field private static final FMRADIO_CTS_APP_NAME:Ljava/lang/String; = "com.samsung.cts.SamsungMediaFmradio"

.field private static final FMTEST_APP_NAME:Ljava/lang/String; = "com.sec.android.fmtestapp"

.field private static final FM_RADIO_AUDIO_FOCUS_TAG:Ljava/lang/String; = "FM_RADIO"

.field private static final JAPANRADIO_APP_NAME:Ljava/lang/String; = "jp.radiko.plusfm.player"

.field private static final JAPANRADIO_TUNER_NAME:Ljava/lang/String; = "jp.radiko.radio.player"

.field private static final KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.sec.android.fm.return_back_volume"

.field private static final KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final MDM_SPEAKER_ENABLED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_DEVICE_SPEAKER_ENABLED"

.field private static final NEXTRADIO_NAME:Ljava/lang/String; = "com.nextradioapp.nextradio"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_MOTION_LISTENER:I = 0x15

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field public static final OFF_TV_OUT:I = 0xa

.field private static final PARAMETER_AFRMSSI_SAMPLES:Ljava/lang/String; = "AFRMSSISamples"

.field private static final PARAMETER_AFRMSSI_TH:Ljava/lang/String; = "AFRMSSIThreshold"

.field private static final PARAMETER_ATJ_CONFIG:Ljava/lang/String; = "ATJCofig"

.field private static final PARAMETER_BLEND_PAMD_TH:Ljava/lang/String; = "BlendPAMD_th"

.field private static final PARAMETER_BLEND_RMSSI:Ljava/lang/String; = "BlendRmssi"

.field private static final PARAMETER_BLEND_RSSI_TH:Ljava/lang/String; = "BlendRSSI_th"

.field private static final PARAMETER_BLEND_SINR:Ljava/lang/String; = "BlendSinr"

.field private static final PARAMETER_CFO_TH:Ljava/lang/String; = "CFOTh12"

.field private static final PARAMETER_CURRENT_RSSI:Ljava/lang/String; = "CurrentRSSI"

.field private static final PARAMETER_CURRENT_SNR:Ljava/lang/String; = "CurrentSNR"

.field private static final PARAMETER_DESENSE_LIST:Ljava/lang/String; = "DeSenseList"

.field private static final PARAMETER_DE_CONSTANT:Ljava/lang/String; = "DEConstant"

.field private static final PARAMETER_FAKE_CHANNEL:Ljava/lang/String; = "FakeChannel"

.field private static final PARAMETER_FIRST_CNT_TH:Ljava/lang/String; = "Cnt_th"

.field private static final PARAMETER_FIRST_RSSI_TH:Ljava/lang/String; = "RSSI_th"

.field private static final PARAMETER_FIRST_SNR_TH:Ljava/lang/String; = "SNR_th"

.field public static final PARAMETER_FREQUENCY_OFFSET_TH:Ljava/lang/String; = "FrequencyOffset_th"

.field private static final PARAMETER_GOOD_CH_RMSSI_TH:Ljava/lang/String; = "GoodChannelRMSSIThreshold"

.field private static final PARAMETER_HYBRID_SEARCH:Ljava/lang/String; = "HybridSearch"

.field public static final PARAMETER_IF_COUNT_1:Ljava/lang/String; = "IFCount1"

.field public static final PARAMETER_IF_COUNT_2:Ljava/lang/String; = "IFCount2"

.field public static final PARAMETER_NOISE_POWER_TH:Ljava/lang/String; = "NoisePower_th"

.field private static final PARAMETER_OFF_CHANNEL_TH:Ljava/lang/String; = "OffChannelThreshold"

.field private static final PARAMETER_ON_CHANNEL_TH:Ljava/lang/String; = "OnChannelThreshold"

.field public static final PARAMETER_PILOT_POWER_TH:Ljava/lang/String; = "PilotPower_th"

.field private static final PARAMETER_RMSSI_FIRST_STAGE:Ljava/lang/String; = "RMSSIFirstStage"

.field private static final PARAMETER_SEARCH_ALGO_TYPE:Ljava/lang/String; = "SearchAlgoType"

.field private static final PARAMETER_SECOND_CNT_TH:Ljava/lang/String; = "Cnt_th_2"

.field private static final PARAMETER_SECOND_RSSI_TH:Ljava/lang/String; = "RSSI_th_2"

.field private static final PARAMETER_SECOND_SNR_TH:Ljava/lang/String; = "SNR_th_2"

.field private static final PARAMETER_SEEK_DC:Ljava/lang/String; = "SeekDC"

.field private static final PARAMETER_SEEK_DESENSE_RSSI:Ljava/lang/String; = "SeekDesenseRSSI"

.field private static final PARAMETER_SEEK_QA:Ljava/lang/String; = "SeekQA"

.field private static final PARAMETER_SEEK_RSSI:Ljava/lang/String; = "SeekRSSI"

.field private static final PARAMETER_SEEK_SMG:Ljava/lang/String; = "SeekSMG"

.field private static final PARAMETER_SEEK_SNR:Ljava/lang/String; = "SeekSNR"

.field private static final PARAMETER_SINR_FIRST_STAGE:Ljava/lang/String; = "SINRFirstStage"

.field private static final PARAMETER_SINR_SAMPLES:Ljava/lang/String; = "SINRSamples"

.field private static final PARAMETER_SINR_TH:Ljava/lang/String; = "SINRThreshold"

.field private static final PARAMETER_SKIP_TUNNING_VALUE:Ljava/lang/String; = "SkipTuningValue"

.field public static final PARAMETER_SOFTMUTE_COEFF:Ljava/lang/String; = "SoftMuteCoeff"

.field private static final PARAMETER_SOFTMUTE_TH:Ljava/lang/String; = "Softmute_th"

.field public static final PARAMETER_SOFT_STEREO_BLEND_COEFF:Ljava/lang/String; = "SoftStereoBlendCoeff"

.field public static final PARAMETER_SOFT_STEREO_BLEND_REF:Ljava/lang/String; = "SoftStereoBlendRef"

.field public static final PAUSED:I = 0xb

.field private static final RECORDING_END:I = 0x0

.field private static final RECORDING_START:I = 0x1

.field private static final RESET_SETTING:Ljava/lang/String; = "android.intent.action.SETTINGS_SOFT_RESET"

.field private static final SA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final SA_FEATURE:Ljava/lang/String; = "SBKS"

.field private static final SA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final SA_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.sdk.fmradio"

.field private static final SA_SM_SDK_ID:Ljava/lang/String; = "Galaxy FM Radio SDK"

.field private static final SA_TRACKING_ID:Ljava/lang/String; = "4M3-399-1025498"

.field static final VOLUME_FADEIN:I = 0xc8

.field static final VOLUME_FADEIN_DELAYTIME:I = 0x64

.field static final VOLUME_FADEIN_FIRST_DELAYTIME:I = 0x320

.field private static final VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final audioMute:Ljava/lang/String; = "g_fmradio_mute=true"

.field private static final audioUnMute:Ljava/lang/String; = "g_fmradio_mute=false"

.field private static curFreq:J

.field private static final isFactoryBinary:Z

.field private static final mFMRadioServiceLock:Ljava/lang/Object;

.field private static mIsTransientPaused:Z

.field private static mNeedToResumeFM:Z


# instance fields
.field private final FEATURE_INDIRECT_MODE:Z

.field private final SURVEY_MODE_ENABLE:Z

.field private SetPropertyPermission:Ljava/lang/String;

.field private VolumePropertyname:Ljava/lang/String;

.field private alarmTTSPlay:Z

.field private bmObserver:Landroid/database/ContentObserver;

.field private isRecording:Z

.field private mAFEnable:Z

.field private mAfRmssisampleCnt_th:I

.field private mAfRmssith_th:I

.field private mAirPlaneEnabled:Z

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlgo_type:I

.field private final mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAvrcpMode:Z

.field private mAvrcpObserver:Landroid/database/ContentObserver;

.field public mBand:I

.field private mBikeMode:Z

.field private mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mCf0_th12:I

.field public mChannelSpacing:I

.field private mCnt_th:I

.field private mCnt_th_2:I

.field private mContext:Landroid/content/Context;

.field private mCurrentFoundFreq:J

.field private mCurrentResumeVol:J

.field public mDEConstant:I

.field private final mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mFMHandlerThread:Landroid/os/HandlerThread;

.field private mFreqOffset_th:I

.field final mHandler:Landroid/os/Handler;

.field private mHandlerSA:Landroid/os/Handler;

.field private mIsBatteryLow:Z

.field private mIsEarphoneConnected:Z

.field private mIsExternalChipset:Z

.field private mIsFMAudioPathOn:Z

.field private mIsForcestop:Z

.field private mIsHeadsetPlugged:Z

.field public mIsMDMSpeakerEnabled:Z

.field private mIsMicrophoneConnected:Z

.field private mIsMute:Z

.field private mIsOn:Z

.field private mIsPhoneStateListenerRegistered:Z

.field private mIsSeeking:Z

.field private mIsSetWakeKey:Z

.field private mIsSkipTunigVal:Z

.field private mIsSupportSoftmute:Z

.field private mIsTestMode:Z

.field private mIsTransientDuck:Z

.field private mIsTvOutPlugged:Z

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

.field private mMtkChipVolume:J

.field private mMtkSupportSetChipVolume:Z

.field private mMtk_ATJ_config:I

.field private mMtk_blendpamd_th:I

.field private mMtk_blendrssi_th:I

.field private mMtk_seekdesenserssi:I

.field private mMtk_seeksmg:I

.field private mNeedResumeToFreq:J

.field private mNoisePwr_th:I

.field private mOffProgress:Z

.field private mOnProgress:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPilotPwr_th:I

.field private mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

.field private mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousFoundFreq:J

.field private mQualcomm_af_rmssisamplecnt:I

.field private mQualcomm_af_rmssith:I

.field private mQualcomm_cfoth12:I

.field private mQualcomm_offchannel:I

.field private mQualcomm_onchannel:I

.field private mQualcomm_rmssi_firststate:I

.field private mQualcomm_sinr_samplecnt:I

.field private mRDSEnable:Z

.field mRecFinishNotified:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetSettingReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeVol:J

.field private mRichwave_seekDC:I

.field private mRichwave_seekQA:I

.field private mRssi_th:I

.field private mRssi_th_2:I

.field private mSamsungAnalyticsRunnable:Ljava/lang/Runnable;

.field private mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFreq:J

.field private mScanProgress:Z

.field private mScanThread:Ljava/lang/Thread;

.field private final mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private mSlsi_blendcoeff:J

.field private mSlsi_ifcount1:I

.field private mSlsi_ifcount2:I

.field private mSlsi_softmutecoeff:J

.field private mSlsi_softstereoblendref:J

.field private mSnr_th:I

.field private mSnr_th_2:I

.field private mSoftmutePath:Ljava/lang/String;

.field private mSoftmute_th:I

.field private final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitPidDuringScanning:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mgoodChrmssi_th:I

.field private volumeLock:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetFEATURE_INDIRECT_MODE(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->FEATURE_INDIRECT_MODE:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetVolumePropertyname(Lcom/android/server/FMRadioService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecording(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAirPlaneEnabled(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioFocusHandler(Lcom/android/server/FMRadioService;)Lcom/android/server/FMRadioService$AudioFocusHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioFocusListener(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvrcpMode(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBikeMode(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCnt_th(Lcom/android/server/FMRadioService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentResumeVol(Lcom/android/server/FMRadioService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEarphoneConnected(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsEarphoneConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsForcestop(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMicrophoneConnected(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsMicrophoneConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMute(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSeeking(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSkipTunigVal(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTestMode(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTvOutPlugged(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousFoundFreq(Lcom/android/server/FMRadioService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRssi_th(Lcom/android/server/FMRadioService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanFreq(Lcom/android/server/FMRadioService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnr_th(Lcom/android/server/FMRadioService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputalarmTTSPlay(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAirPlaneEnabled(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAvrcpMode(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBikeMode(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFoundFreq(Lcom/android/server/FMRadioService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentResumeVol(Lcom/android/server/FMRadioService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsBatteryLow(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEarphoneConnected(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsEarphoneConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsForcestop(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsHeadsetPlugged(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsMicrophoneConnected(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsMicrophoneConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTvOutPlugged(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedResumeToFreq(Lcom/android/server/FMRadioService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousFoundFreq(Lcom/android/server/FMRadioService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResumeVol(Lcom/android/server/FMRadioService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScanChannelList(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScanFreq(Lcom/android/server/FMRadioService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvolumeLock(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUsbExternalChipset(Lcom/android/server/FMRadioService;Landroid/hardware/usb/UsbDevice;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->checkUsbExternalChipset(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearMessageQueue(Lcom/android/server/FMRadioService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAvrcpMode(Lcom/android/server/FMRadioService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleAvrcpMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBikeMode(Lcom/android/server/FMRadioService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleBikeMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minDirectModeBroadcast(Lcom/android/server/FMRadioService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->inDirectModeBroadcast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mon(Lcom/android/server/FMRadioService;Z)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mqueueUpdate(Lcom/android/server/FMRadioService;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseAudioSystemMute(Lcom/android/server/FMRadioService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseAudioSystemMute()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresponedFocusEvent(Lcom/android/server/FMRadioService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendInfoSamsungAnalytics(Lcom/android/server/FMRadioService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/FMRadioService;->sendInfoSamsungAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDelay(Lcom/android/server/FMRadioService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/FMRadioService;->setDelay(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFMAudioPath(Lcom/android/server/FMRadioService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSignalSetting(Lcom/android/server/FMRadioService;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUGGABLE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsTransientPaused()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmNeedToResumeFM()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsTransientPaused(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmNeedToResumeFM(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 71
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    sput-boolean v2, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    .line 72
    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "factory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/FMRadioService;->isFactoryBinary:Z

    .line 164
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/android/server/FMRadioService;->curFreq:J

    .line 171
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 172
    sput-boolean v1, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 1728
    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMicrophoneConnected:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsEarphoneConnected:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    .line 161
    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 173
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    .line 183
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    .line 184
    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    .line 185
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    .line 186
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    .line 187
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    .line 255
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    .line 259
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    .line 264
    const-string v3, "com.sec.android.app.fm.permission.setproperty"

    iput-object v3, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    .line 265
    const-string/jumbo v3, "service.brcm.fm.volumetable"

    iput-object v3, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    .line 267
    iput v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 268
    iput v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 269
    iput v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 270
    iput v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 271
    iput v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 272
    iput v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 273
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 274
    iput v0, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 275
    iput v0, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 276
    iput v0, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 277
    iput v0, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    .line 278
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    .line 279
    const-string v4, "Speaker"

    iput-object v4, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 282
    iput v0, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 283
    iput v0, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 284
    iput v0, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    .line 290
    iput v0, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 295
    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 296
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 297
    iput v3, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    .line 302
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    .line 309
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    .line 315
    const/16 v5, -0x71

    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    .line 316
    const/16 v5, 0x6d

    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    .line 317
    const/16 v5, 0x73

    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    .line 318
    iput v4, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    .line 319
    const/16 v5, 0x3a98

    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    .line 320
    const/16 v5, 0x35

    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    .line 321
    const/16 v5, 0x50

    iput v5, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    .line 324
    const/16 v6, 0x40

    iput v6, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 325
    iput v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    .line 327
    const/16 v5, 0x1388

    iput v5, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 328
    const/16 v5, 0x12c0

    iput v5, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 329
    const-wide/16 v5, 0xc64

    iput-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 330
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    .line 331
    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    .line 333
    const/16 v1, -0x60

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 334
    const/16 v1, 0x32c8

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 335
    const-wide/16 v1, 0x1f

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    .line 336
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    .line 338
    const/16 v1, -0x41

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 339
    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 340
    iput v3, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    .line 355
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->SURVEY_MODE_ENABLE:Z

    .line 356
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_INDIRECT_MODE"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->FEATURE_INDIRECT_MODE:Z

    .line 357
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandlerSA:Landroid/os/Handler;

    .line 359
    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    .line 360
    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFMHandlerThread:Landroid/os/HandlerThread;

    .line 362
    new-instance v5, Lcom/android/server/FMRadioService$1;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, p0, v6}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mAvrcpObserver:Landroid/database/ContentObserver;

    .line 390
    new-instance v5, Lcom/android/server/FMRadioService$2;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    new-instance v5, Lcom/android/server/FMRadioService$3;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    new-instance v5, Lcom/android/server/FMRadioService$4;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 674
    new-instance v5, Lcom/android/server/FMRadioService$5;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mResetSettingReceiver:Landroid/content/BroadcastReceiver;

    .line 698
    new-instance v5, Lcom/android/server/FMRadioService$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v2, v6}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;Ljava/lang/Integer;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 765
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMDMSpeakerEnabled:Z

    .line 766
    new-instance v5, Lcom/android/server/FMRadioService$7;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

    .line 969
    new-instance v5, Lcom/android/server/FMRadioService$8;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1024
    new-instance v5, Lcom/android/server/FMRadioService$9;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 1047
    new-instance v5, Lcom/android/server/FMRadioService$10;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    .line 1087
    new-instance v5, Lcom/android/server/FMRadioService$11;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 1124
    new-instance v5, Lcom/android/server/FMRadioService$12;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    new-instance v5, Lcom/android/server/FMRadioService$13;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    .line 1192
    new-instance v5, Lcom/android/server/FMRadioService$14;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1223
    new-instance v5, Lcom/android/server/FMRadioService$15;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 1256
    new-instance v5, Lcom/android/server/FMRadioService$16;

    invoke-direct {v5, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 2821
    iput-object v2, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 4327
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    .line 4350
    new-instance v2, Lcom/android/server/FMRadioService$17;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v5}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    .line 1729
    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    .line 1731
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FMRADIO_SUPPORT_EXTERNAL_RADIO_CHIPSET:Z

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIsExternalChipset"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1733
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v2, :cond_1a0

    .line 1734
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_1a7

    .line 1735
    const-string/jumbo v2, "mIsExternalChipset CHIP_RICHWAVE"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1736
    new-instance v2, Lcom/android/server/PlayerExternalChipsetBesRichwave;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;-><init>(Landroid/content/Context;Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    goto :goto_1a7

    .line 1739
    :cond_1a0
    new-instance v2, Lcom/android/server/FMPlayerNative;

    invoke-direct {v2, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    .line 1743
    :cond_1a7
    :goto_1a7
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    .line 1744
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1746
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1748
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "FMRadio Service"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1750
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "FMRadioService"

    invoke-direct {v2, v5, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mFMHandlerThread:Landroid/os/HandlerThread;

    .line 1751
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1752
    new-instance v2, Lcom/android/server/FMRadioService$AudioFocusHandler;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mFMHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/server/FMRadioService$AudioFocusHandler;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    .line 1754
    if-eqz v1, :cond_1f7

    .line 1755
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mHandlerSA:Landroid/os/Handler;

    .line 1759
    :cond_1f7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1760
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1761
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1762
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1763
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1764
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1765
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1768
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1769
    .local v2, "intentFilterVol":Landroid/content/IntentFilter;
    const/16 v4, 0x3e7

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1770
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1773
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.fm.volume_lock"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1774
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1776
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.fm.volume_unlock"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1777
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1780
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_254

    move v0, v3

    :cond_254
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAirPlaneEnabled flag :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1783
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1784
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1786
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1787
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1789
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1790
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mResetSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1792
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1793
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1794
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1795
    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1796
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1798
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    .line 1799
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    .line 1800
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMDMCommandRec()V

    .line 1803
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    .line 1804
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    .line 1806
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v1, :cond_2ca

    .line 1807
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->checkUSBDeviceConnected(Landroid/content/Context;)V

    .line 1809
    :cond_2ca
    return-void
.end method

.method private SkipTuning_Value()V
    .registers 3

    .line 3319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 3320
    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    return-void
.end method

.method private acquireWakeLock()V
    .registers 4

    .line 2627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2629
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2630
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2631
    const-string v2, "Lock is held"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 2634
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2635
    nop

    .line 2636
    return-void

    .line 2634
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2635
    throw v2
.end method

.method private checkForWakeLockRelease()V
    .registers 2

    .line 2974
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_10

    .line 2975
    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2976
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2978
    :cond_10
    return-void
.end method

.method private checkUSBDeviceConnected(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 449
    const-string v0, "checkUSBDeviceConnected"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 451
    :try_start_5
    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 452
    .local v0, "mUsbManager":Landroid/hardware/usb/UsbManager;
    if-nez v0, :cond_17

    .line 453
    const-string/jumbo v1, "mUsbManager null"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 454
    return-void

    .line 456
    :cond_17
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    .line 457
    .local v1, "devices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    if-nez v1, :cond_23

    .line 458
    const-string v2, "USB Device null"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 459
    return-void

    .line 461
    :cond_23
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 462
    .local v3, "usbDevice":Landroid/hardware/usb/UsbDevice;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset getProductId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset getVendorId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 464
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v4, :cond_7d

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->checkUsbExternalChipset(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 465
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    .line 466
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v4, v3}, Lcom/android/server/PlayerExternalChipsetBase;->init(Landroid/hardware/usb/UsbDevice;)V
    :try_end_7d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_7d} :catch_80

    .line 468
    .end local v3    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    :cond_7d
    goto :goto_2b

    .line 472
    .end local v0    # "mUsbManager":Landroid/hardware/usb/UsbManager;
    .end local v1    # "devices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :cond_7e
    nop

    .line 473
    return-void

    .line 469
    :catch_80
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException in checkUSBDeviceConnected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private checkUsbExternalChipset(Landroid/hardware/usb/UsbDevice;)Z
    .registers 4
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .line 439
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x4e8

    if-ne v0, v1, :cond_2e

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0xa054

    if-eq v0, v1, :cond_2c

    .line 440
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0xa059

    if-eq v0, v1, :cond_2c

    .line 441
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0xa05b

    if-eq v0, v1, :cond_2c

    .line 442
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0xa05e

    if-ne v0, v1, :cond_2e

    .line 443
    :cond_2c
    const/4 v0, 0x1

    return v0

    .line 445
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private clearMessageQueue()V
    .registers 3

    .line 808
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    .line 809
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    .line 810
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    .line 811
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    .line 812
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 813
    return-void
.end method

.method private convertToPrimitives([Ljava/lang/Long;)[J
    .registers 6
    .param p1, "longObArray"    # [Ljava/lang/Long;

    .line 3261
    if-eqz p1, :cond_15

    .line 3262
    array-length v0, p1

    new-array v0, v0, [J

    .line 3263
    .local v0, "longArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 3264
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3263
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3266
    .end local v1    # "i":I
    :cond_14
    return-object v0

    .line 3269
    .end local v0    # "longArray":[J
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAFRMSSISamples()I
    .registers 2

    .line 3467
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method private getAFRMSSIThreshold()I
    .registers 2

    .line 3459
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getAFValid_th()I
    .registers 2

    .line 3367
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_b

    .line 3368
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFValid_th()I

    move-result v0

    return v0

    .line 3369
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method private getAF_th()I
    .registers 2

    .line 3356
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_b

    .line 3357
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAF_th()I

    move-result v0

    return v0

    .line 3358
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method private getATJ()I
    .registers 2

    .line 3673
    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    return v0
.end method

.method private getBlendPAMD_th()I
    .registers 2

    .line 3648
    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    return v0
.end method

.method private getBlendRSSI_th()I
    .registers 2

    .line 3639
    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    return v0
.end method

.method private getBlendRmssi()I
    .registers 2

    .line 3491
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendRmssi()I

    move-result v0

    return v0
.end method

.method private getBlendSinr()I
    .registers 2

    .line 3499
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendSinr()I

    move-result v0

    return v0
.end method

.method private getCFOTh12()I
    .registers 2

    .line 3435
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method private getCnt_th()I
    .registers 2

    .line 3335
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method private getCnt_th_2()I
    .registers 2

    .line 3347
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method private getDeSenseList()Ljava/lang/String;
    .registers 2

    .line 3664
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getDeSenseList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFakeChannel()Ljava/lang/String;
    .registers 2

    .line 3656
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getFakeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFrequencyOffsetThreshold()I
    .registers 2

    .line 3509
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0
.end method

.method private getGoodChannelRMSSIThreshold()I
    .registers 2

    .line 3475
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private getHybridSearch()Ljava/lang/String;
    .registers 2

    .line 3483
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIFCount1()I
    .registers 2

    .line 3572
    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    return v0
.end method

.method private getIFCount2()I
    .registers 2

    .line 3576
    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    return v0
.end method

.method private getNoisePowerThreshold()I
    .registers 2

    .line 3525
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getNoisePowerThreshold()I

    move-result v0

    return v0
.end method

.method private getOffChannelThreshold()I
    .registers 2

    .line 3419
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getOnChannelThreshold()I
    .registers 2

    .line 3411
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method private getPilotPowerThreshold()I
    .registers 2

    .line 3517
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getPilotPowerThreshold()I

    move-result v0

    return v0
.end method

.method private getPropertyProductName()Ljava/lang/String;
    .registers 2

    .line 4337
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRMSSIFirstStage()I
    .registers 2

    .line 3443
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method private getRSSI_th()I
    .registers 2

    .line 3324
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_b

    .line 3325
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getRssiThreshold()I

    move-result v0

    return v0

    .line 3327
    :cond_b
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method private getRSSI_th_2()I
    .registers 2

    .line 3339
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method private getSINRFirstStage()I
    .registers 2

    .line 3451
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method private getSINRSamples()I
    .registers 2

    .line 3403
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method private getSINRThreshold()I
    .registers 2

    .line 3427
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method private getSNR_th()I
    .registers 2

    .line 3331
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method private getSNR_th_2()I
    .registers 2

    .line 3343
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method private getSearchAlgoType()I
    .registers 2

    .line 3395
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method private getSeekDC()I
    .registers 2

    .line 3538
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_b

    .line 3539
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getSeekDC()I

    move-result v0

    return v0

    .line 3541
    :cond_b
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekDC()I

    move-result v0

    return v0
.end method

.method private getSeekDesenseRSSI()I
    .registers 2

    .line 3612
    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    return v0
.end method

.method private getSeekQA()I
    .registers 2

    .line 3553
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_b

    .line 3554
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getSeekQA()I

    move-result v0

    return v0

    .line 3556
    :cond_b
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekQA()I

    move-result v0

    return v0
.end method

.method private getSeekSMG()I
    .registers 2

    .line 3621
    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    return v0
.end method

.method private getSoftMuteCoeff()J
    .registers 3

    .line 3594
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    return-wide v0
.end method

.method private getSoftStereoBlendCoeff()J
    .registers 3

    .line 3585
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    return-wide v0
.end method

.method private getSoftStereoBlendRef()J
    .registers 3

    .line 3602
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    return-wide v0
.end method

.method private getSoftmute_th()I
    .registers 2

    .line 3630
    iget v0, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    return v0
.end method

.method private handleAvrcpMode()V
    .registers 5

    .line 371
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    .line 372
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_avc_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    .line 373
    const/16 v2, 0x8

    if-ne v0, v2, :cond_62

    .line 374
    if-eqz v1, :cond_35

    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v1, :cond_35

    .line 375
    const-string v1, "Avrcp mode enabled!!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 376
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-nez v1, :cond_62

    .line 377
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    goto :goto_62

    .line 379
    :cond_35
    const-string v1, "Avrcp mode disabled"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 380
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-nez v1, :cond_62

    .line 382
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 383
    .local v1, "current_stream_volume":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_stream_volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 384
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 388
    .end local v1    # "current_stream_volume":I
    :cond_62
    :goto_62
    return-void
.end method

.method private handleBikeMode()V
    .registers 4

    .line 4341
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 4342
    if-eqz v2, :cond_20

    .line 4343
    const-string v0, "bike mode enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4344
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto :goto_25

    .line 4346
    :cond_20
    const-string v0, "bike mode disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4348
    :goto_25
    return-void
.end method

.method private inDirectModeBroadcast()V
    .registers 4

    .line 962
    const-string v0, "Broadcast audio focus loss intent"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 963
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 964
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "inDirect.mode.audioFocusLoss"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const-string v1, "com.sec.android.app.fm"

    const-string v2, "com.sec.android.app.fm.receiver.AudioFocusLossReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 967
    return-void
.end method

.method private isCTSTestApp()Z
    .registers 8

    .line 2118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2119
    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2121
    .local v1, "pkgName":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_24

    aget-object v5, v1, v4

    .line 2122
    .local v5, "mPackageName":Ljava/lang/String;
    const-string v6, "com.samsung.cts.SamsungMediaFmradio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2123
    const/4 v2, 0x1

    return v2

    .line 2121
    .end local v5    # "mPackageName":Ljava/lang/String;
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2126
    :cond_24
    return v3
.end method

.method private isCherokeeChip()Z
    .registers 3

    .line 4393
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isFmTestApp()Z
    .registers 5

    .line 2130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2131
    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2132
    .local v1, "pkgName":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 2134
    .local v2, "mPackageName":Ljava/lang/String;
    const-string v3, "com.sec.android.fmtestapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private isValidPackage()Z
    .registers 2

    .line 2114
    const/4 v0, 0x1

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 1721
    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    return-void
.end method

.method private declared-synchronized offInternal(IZ)Z
    .registers 12
    .param p1, "reasonCode"    # I
    .param p2, "needToRemoveFocusListener"    # Z

    monitor-enter p0

    .line 2650
    :try_start_1
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v1, 0xa

    const/4 v3, 0x6

    if-ne v0, v3, :cond_28

    .line 2651
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelSeek()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_19a

    .line 2654
    :try_start_b
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f
    .catchall {:try_start_b .. :try_end_e} :catchall_19a

    .line 2657
    goto :goto_28

    .line 2655
    .end local p0    # "this":Lcom/android/server/FMRadioService;
    :catch_f
    move-exception v0

    .line 2656
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_10
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterruptedException in wait() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_28
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offInternal :: reasonCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    .line 2663
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v5, 0x1

    if-nez v4, :cond_58

    .line 2665
    if-eqz p2, :cond_56

    .line 2666
    const-string/jumbo v0, "offInternal :: remove audiofocus "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2667
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_19a

    .line 2669
    :cond_56
    monitor-exit p0

    return v5

    .line 2672
    .restart local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_58
    :try_start_58
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    .line 2673
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->FEATURE_INDIRECT_MODE:Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_175
    .catchall {:try_start_58 .. :try_end_5c} :catchall_173

    const/4 v6, 0x7

    if-nez v4, :cond_6e

    :try_start_5f
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v4, :cond_6e

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_65} :catch_6b
    .catchall {:try_start_5f .. :try_end_65} :catchall_68

    if-ne v4, v6, :cond_74

    goto :goto_6e

    .line 2764
    :catchall_68
    move-exception v0

    goto/16 :goto_196

    .line 2759
    :catch_6b
    move-exception v1

    goto/16 :goto_176

    .line 2675
    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 2678
    invoke-direct {p0, v1, v2}, Lcom/android/server/FMRadioService;->setDelay(J)V

    .line 2680
    :cond_74
    if-nez p2, :cond_78

    move v1, v5

    goto :goto_79

    :cond_78
    move v1, v0

    :goto_79
    sput-boolean v1, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    .line 2681
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7d} :catch_175
    .catchall {:try_start_6e .. :try_end_7d} :catchall_173

    if-eqz v1, :cond_8a

    :try_start_7f
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    if-nez v1, :cond_8a

    .line 2682
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_89} :catch_6b
    .catchall {:try_start_7f .. :try_end_89} :catchall_68

    goto :goto_90

    .line 2683
    :cond_8a
    :try_start_8a
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8c} :catch_175
    .catchall {:try_start_8a .. :try_end_8c} :catchall_173

    if-eqz v1, :cond_90

    .line 2684
    :try_start_8e
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_90} :catch_6b
    .catchall {:try_start_8e .. :try_end_90} :catchall_68

    .line 2686
    :cond_90
    :goto_90
    :try_start_90
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_92} :catch_175
    .catchall {:try_start_90 .. :try_end_92} :catchall_173

    if-eq v1, v6, :cond_97

    .line 2687
    :try_start_94
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_6b
    .catchall {:try_start_94 .. :try_end_97} :catchall_68

    .line 2690
    :cond_97
    :try_start_97
    const-string/jumbo v1, "offInternal Turning off FM radio"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2692
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_175
    .catchall {:try_start_97 .. :try_end_9f} :catchall_173

    if-eqz v1, :cond_db

    .line 2693
    :try_start_a1
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v1, :cond_aa

    .line 2694
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    .line 2696
    :cond_aa
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->stopNotifyThread(Z)V

    .line 2697
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-eqz v1, :cond_db

    .line 2698
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1}, Lcom/android/server/PlayerExternalChipsetBase;->off()Z

    move-result v1

    .line 2699
    .local v1, "offState":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "off external chip set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2700
    const/16 v2, 0xb

    if-ne p1, v2, :cond_d6

    .line 2701
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2703
    :cond_d6
    const-wide/16 v7, 0xc8

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_db} :catch_6b
    .catchall {:try_start_a1 .. :try_end_db} :catchall_68

    .line 2707
    .end local v1    # "offState":Z
    :cond_db
    :try_start_db
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_dd} :catch_175
    .catchall {:try_start_db .. :try_end_dd} :catchall_173

    if-nez v1, :cond_e4

    .line 2708
    :try_start_df
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->off()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e4} :catch_6b
    .catchall {:try_start_df .. :try_end_e4} :catchall_68

    .line 2709
    :cond_e4
    :try_start_e4
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e6} :catch_175
    .catchall {:try_start_e4 .. :try_end_e6} :catchall_173

    if-ne v1, v6, :cond_eb

    .line 2710
    :try_start_e8
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_6b
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_68

    .line 2712
    :cond_eb
    :try_start_eb
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    .line 2713
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2714
    const-string/jumbo v1, "off returned from native"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2715
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2716
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2717
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 2718
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    .line 2719
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterBikeModeObserver()V

    .line 2720
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAvrcpModeObserver()V

    .line 2721
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_105} :catch_175
    .catchall {:try_start_eb .. :try_end_105} :catchall_173

    if-nez v1, :cond_117

    .line 2722
    :try_start_107
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    .line 2725
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v1, :cond_111

    .line 2726
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    .line 2728
    :cond_111
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    .line 2729
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterDNDStatusChangedListener()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_117} :catch_6b
    .catchall {:try_start_107 .. :try_end_117} :catchall_68

    .line 2731
    :cond_117
    :try_start_117
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_119} :catch_175
    .catchall {:try_start_117 .. :try_end_119} :catchall_173

    .line 2733
    if-eqz p2, :cond_125

    .line 2734
    :try_start_11b
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2735
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterTelephonyListener()V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_125} :catch_6b
    .catchall {:try_start_11b .. :try_end_125} :catchall_68

    .line 2738
    :cond_125
    :try_start_125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2741
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_12e} :catch_175
    .catchall {:try_start_125 .. :try_end_12e} :catchall_173

    if-nez v1, :cond_133

    .line 2742
    :try_start_130
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_133} :catch_6b
    .catchall {:try_start_130 .. :try_end_133} :catchall_68

    .line 2746
    :cond_133
    :try_start_133
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input"

    .line 2747
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 2748
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_142} :catch_175
    .catchall {:try_start_133 .. :try_end_142} :catchall_173

    if-eq v2, v3, :cond_16d

    if-eqz v1, :cond_16d

    .line 2750
    :try_start_146
    const-string v3, "com.sec.android.app.fm"

    const-string v4, "114,115"

    invoke-virtual {v1, v3, v2, v4}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_14d
    .catch Ljava/lang/SecurityException; {:try_start_146 .. :try_end_14d} :catch_14e
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_14d} :catch_6b
    .catchall {:try_start_146 .. :try_end_14d} :catchall_68

    .line 2753
    goto :goto_169

    .line 2751
    :catch_14e
    move-exception v2

    .line 2752
    .local v2, "se":Ljava/lang/SecurityException;
    :try_start_14f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2754
    .end local v2    # "se":Ljava/lang/SecurityException;
    :goto_169
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_16d} :catch_6b
    .catchall {:try_start_14f .. :try_end_16d} :catchall_68

    .line 2757
    :cond_16d
    nop

    .line 2764
    :try_start_16e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_19a

    .line 2757
    monitor-exit p0

    return v5

    .line 2764
    .end local v1    # "inputManager":Landroid/hardware/input/InputManager;
    .end local p0    # "this":Lcom/android/server/FMRadioService;
    :catchall_173
    move-exception v0

    goto :goto_196

    .line 2759
    :catch_175
    move-exception v1

    .line 2760
    .local v1, "e":Ljava/lang/Exception;
    :goto_176
    :try_start_176
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in offInternal() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z
    :try_end_190
    .catchall {:try_start_176 .. :try_end_190} :catchall_173

    .line 2764
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_190
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_19a

    .line 2765
    nop

    .line 2766
    monitor-exit p0

    return v0

    .line 2764
    :goto_196
    :try_start_196
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2765
    throw v0
    :try_end_19a
    .catchall {:try_start_196 .. :try_end_19a} :catchall_19a

    .line 2649
    .end local p1    # "reasonCode":I
    .end local p2    # "needToRemoveFocusListener":Z
    :catchall_19a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized on(Z)Z
    .registers 15
    .param p1, "isAudioFocusNeeded"    # Z

    monitor-enter p0

    .line 2138
    :try_start_1
    const-string/jumbo v0, "on"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2139
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->SURVEY_MODE_ENABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    .line 2140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2141
    .local v0, "caller":I
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2142
    .local v2, "pkgName":[Ljava/lang/String;
    aget-object v3, v2, v1

    .line 2143
    .local v3, "mPackageName":Ljava/lang/String;
    const-string v4, ""

    .line 2144
    .local v4, "mPackageVersion":Ljava/lang/String;
    const-string v5, "com.sec.android.app.fm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_4b2

    if-nez v5, :cond_5b

    .line 2146
    :try_start_28
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_34} :catch_36
    .catchall {:try_start_28 .. :try_end_34} :catchall_4b2

    move-object v4, v5

    .line 2149
    goto :goto_4f

    .line 2147
    .end local p0    # "this":Lcom/android/server/FMRadioService;
    :catch_36
    move-exception v5

    .line 2148
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_37
    const-string v6, "FMRadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NameNotFoundException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4f
    new-instance v5, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;-><init>(Lcom/android/server/FMRadioService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mSamsungAnalyticsRunnable:Ljava/lang/Runnable;

    .line 2151
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mHandlerSA:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2153
    .end local v0    # "caller":I
    .end local v2    # "pkgName":[Ljava/lang/String;
    .end local v3    # "mPackageName":Ljava/lang/String;
    .end local v4    # "mPackageVersion":Ljava/lang/String;
    :cond_5b
    goto :goto_61

    .line 2154
    :cond_5c
    const-string v0, "SamsungAnalytics survey mode is not enable"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2156
    :goto_61
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-eqz v0, :cond_4b0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v0, :cond_6b

    goto/16 :goto_4b0

    .line 2159
    :cond_6b
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z
    :try_end_6d
    .catchall {:try_start_37 .. :try_end_6d} :catchall_4b2

    if-eqz v0, :cond_71

    .line 2160
    monitor-exit p0

    return v1

    .line 2162
    .restart local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_71
    :try_start_71
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_4b2

    if-eqz v0, :cond_77

    .line 2163
    monitor-exit p0

    return v1

    .line 2165
    :cond_77
    :try_start_77
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    .line 2167
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_4b2

    if-eqz v0, :cond_80

    .line 2168
    monitor-exit p0

    return v1

    .line 2172
    :cond_80
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_82
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3

    if-ne v3, v2, :cond_90

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v3

    if-eqz v3, :cond_98

    .end local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_90
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2173
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3

    if-ne v3, v0, :cond_a0

    .line 2174
    :cond_98
    sget-boolean v3, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v3, :cond_9e

    .line 2175
    sput-boolean v2, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9e} :catch_a1
    .catchall {:try_start_82 .. :try_end_9e} :catchall_4b2

    .line 2177
    :cond_9e
    monitor-exit p0

    return v1

    .line 2181
    :cond_a0
    goto :goto_ba

    .line 2179
    :catch_a1
    move-exception v3

    .line 2180
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a2
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getCallStateForSubscription() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_ba
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    :try_end_bc
    .catchall {:try_start_a2 .. :try_end_bc} :catchall_4b2

    if-eqz v3, :cond_c0

    .line 2183
    monitor-exit p0

    return v1

    .line 2186
    .restart local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_c0
    :try_start_c0
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_c2
    .catchall {:try_start_c0 .. :try_end_c2} :catchall_4b2

    if-eqz v3, :cond_c6

    .line 2187
    monitor-exit p0

    return v2

    .line 2190
    :cond_c6
    const/16 v3, 0x9

    if-nez p1, :cond_ce

    :try_start_ca
    sget-boolean v4, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-nez v4, :cond_117

    .end local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_ce
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isFmTestApp()Z

    move-result v4

    if-nez v4, :cond_117

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCTSTestApp()Z

    move-result v4

    if-nez v4, :cond_117

    .line 2191
    const-string v4, "AudioFocusListener registered"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2192
    nop

    .line 2193
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2194
    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const-string v5, "FM_RADIO"

    .line 2195
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const-string v5, "NO_FADEOUT_FROM_AUDIOFOCUS"

    .line 2196
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 2197
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 2198
    .local v4, "attributes":Landroid/media/AudioAttributes;
    new-instance v5, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v5, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 2199
    invoke-virtual {v5, v4}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v5

    .line 2200
    .local v5, "audioFocusRequest":Landroid/media/AudioFocusRequest;
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 2201
    nop

    .end local v4    # "attributes":Landroid/media/AudioAttributes;
    .end local v5    # "audioFocusRequest":Landroid/media/AudioFocusRequest;
    goto :goto_11c

    .line 2206
    :cond_117
    const-string v4, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2209
    :goto_11c
    const/4 v4, 0x0

    .line 2210
    .local v4, "dmbEnabled":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11e
    const/16 v6, 0x32

    const-wide/16 v7, 0x32

    if-ge v5, v6, :cond_139

    .line 2211
    const-string/jumbo v6, "service.media.dmb"

    invoke-static {v6, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    .line 2212
    if-lez v4, :cond_139

    .line 2213
    const-string v6, "DMB enabled - waiting for DMB is closed"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 2210
    add-int/lit8 v5, v5, 0x1

    goto :goto_11e

    .line 2220
    .end local v5    # "i":I
    :cond_139
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2221
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    const/4 v6, 0x0

    const/4 v9, 0x5

    if-eqz v5, :cond_228

    .line 2222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "on() mIsExternalChipset "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2223
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v5

    if-ne v5, v0, :cond_170

    .line 2224
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    .line 2225
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->isOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    goto :goto_178

    .line 2227
    :cond_170
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->on()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2229
    :goto_178
    const-wide/16 v10, 0x14

    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on state mPlayerExternalChipset "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2231
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_1a1

    .line 2232
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2233
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_19f} :catch_475
    .catchall {:try_start_ca .. :try_end_19f} :catchall_4b2

    .line 2234
    monitor-exit p0

    return v1

    .line 2236
    :cond_1a1
    :try_start_1a1
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v9, :cond_1bf

    .line 2237
    const-string v0, "ext chip scan parameters setting"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setRssiThreshold(I)V

    .line 2239
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekDC(I)Z

    .line 2240
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekQA(I)Z

    .line 2242
    :cond_1bf
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setBand(I)Z

    .line 2243
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setChannelSpacing(I)Z

    .line 2244
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 2245
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2246
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2247
    invoke-virtual {p0, v9, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2249
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBikeModeObserver()V

    .line 2250
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAvrcpModeObserver()V

    .line 2251
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    .line 2252
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    .line 2253
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerDNDStatusChangedListener()V

    .line 2254
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    .line 2258
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input"

    .line 2259
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 2260
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1f9} :catch_475
    .catchall {:try_start_1a1 .. :try_end_1f9} :catchall_4b2

    if-eq v5, v6, :cond_224

    if-eqz v0, :cond_224

    .line 2262
    :try_start_1fd
    const-string v6, "com.sec.android.app.fm"

    const-string v7, "114,115"

    invoke-virtual {v0, v6, v5, v7}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_204
    .catch Ljava/lang/SecurityException; {:try_start_1fd .. :try_end_204} :catch_205
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_204} :catch_475
    .catchall {:try_start_1fd .. :try_end_204} :catchall_4b2

    .line 2265
    goto :goto_220

    .line 2263
    :catch_205
    move-exception v5

    .line 2264
    .local v5, "se":Ljava/lang/SecurityException;
    :try_start_206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2266
    .end local v5    # "se":Ljava/lang/SecurityException;
    :goto_220
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    .line 2269
    :cond_224
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_226} :catch_475
    .catchall {:try_start_206 .. :try_end_226} :catchall_4b2

    .line 2271
    monitor-exit p0

    return v2

    .line 2273
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_228
    :try_start_228
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v7, 0x0

    if-ne v5, v3, :cond_293

    .line 2274
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v10

    cmp-long v5, v10, v7

    if-lez v5, :cond_28a

    .line 2275
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2276
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v5

    .line 2277
    .local v5, "outputPath":I
    sget-boolean v10, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v10, :cond_269

    .line 2278
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "setOutputPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_27f

    .line 2281
    :cond_269
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnAudioFocusChangeListener switch setOutputPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2282
    :goto_27f
    iget-object v10, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10, v5}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    .line 2283
    const-wide/16 v10, 0xc8

    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 2284
    .end local v5    # "outputPath":I
    goto :goto_293

    .line 2285
    :cond_28a
    const-string v0, "FM preInitialize() failed"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2286
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_291} :catch_475
    .catchall {:try_start_228 .. :try_end_291} :catchall_4b2

    .line 2287
    monitor-exit p0

    return v1

    .line 2290
    :cond_293
    :goto_293
    :try_start_293
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v10

    cmp-long v5, v10, v7

    if-lez v5, :cond_456

    .line 2291
    const-string/jumbo v5, "on returned from native"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2292
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2293
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2294
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 2295
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v5, :cond_2b3

    .line 2296
    invoke-direct {p0, v0, v2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2b1} :catch_475
    .catchall {:try_start_293 .. :try_end_2b1} :catchall_4b2

    .line 2297
    monitor-exit p0

    return v1

    .line 2304
    :cond_2b3
    :try_start_2b3
    invoke-virtual {p0, v9, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2306
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2bf

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_2e2

    .line 2308
    :cond_2bf
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    if-eqz v0, :cond_2d9

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->isPathSupportSoftmute(I)Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 2309
    const-string/jumbo v0, "set softmute : true"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    goto :goto_2e2

    .line 2312
    :cond_2d9
    const-string/jumbo v0, "set softmute : false"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 2317
    :cond_2e2
    :goto_2e2
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v5, :cond_3bf

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_2ec

    goto/16 :goto_3bf

    .line 2330
    :cond_2ec
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v9, :cond_3a9

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0xa

    if-ne v0, v5, :cond_2f8

    goto/16 :goto_3a9

    .line 2335
    :cond_2f8
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x6

    if-ne v0, v5, :cond_31b

    .line 2336
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 2337
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    .line 2338
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    .line 2339
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    goto/16 :goto_3f6

    .line 2340
    :cond_31b
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x7

    if-ne v0, v5, :cond_35b

    .line 2341
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 2342
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    .line 2343
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    .line 2344
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    .line 2345
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    .line 2346
    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    const-wide/16 v9, -0x1

    cmp-long v0, v5, v9

    if-eqz v0, :cond_34e

    .line 2347
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    .line 2348
    :cond_34e
    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3f6

    .line 2349
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendRef(J)V

    goto/16 :goto_3f6

    .line 2350
    :cond_35b
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_39f

    .line 2351
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSeekRSSI(J)V

    .line 2352
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekDesenseRSSI(I)V

    .line 2353
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekSMG(I)V

    .line 2354
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute_th(I)V

    .line 2355
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setBlendRSSI_th(I)V

    .line 2356
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setBlendPAMD_th(I)V

    .line 2357
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setATJ(I)V

    .line 2358
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    if-eqz v0, :cond_3f6

    .line 2359
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    goto :goto_3f6

    .line 2362
    :cond_39f
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v5, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v6, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    goto :goto_3f6

    .line 2332
    :cond_3a9
    :goto_3a9
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 2333
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    .line 2334
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V

    goto :goto_3f6

    .line 2319
    :cond_3bf
    :goto_3bf
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    .line 2320
    iget v0, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    .line 2321
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    .line 2322
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    .line 2323
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    .line 2324
    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setOffChannelThreshold(I)V

    .line 2325
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    .line 2326
    iget v0, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    .line 2327
    iget v0, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    .line 2328
    iget v0, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    .line 2329
    iget v0, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    .line 2366
    :cond_3f6
    :goto_3f6
    iget v0, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->setBand(I)V

    .line 2367
    iget v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    .line 2368
    iget v0, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    .line 2370
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBikeModeObserver()V

    .line 2371
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAvrcpModeObserver()V

    .line 2372
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    .line 2373
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    .line 2374
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerDNDStatusChangedListener()V

    .line 2375
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    .line 2379
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input"

    .line 2380
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 2381
    .restart local v0    # "inputManager":Landroid/hardware/input/InputManager;
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_427
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_427} :catch_475
    .catchall {:try_start_2b3 .. :try_end_427} :catchall_4b2

    if-eq v5, v6, :cond_452

    if-eqz v0, :cond_452

    .line 2383
    :try_start_42b
    const-string v6, "com.sec.android.app.fm"

    const-string v7, "114,115"

    invoke-virtual {v0, v6, v5, v7}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_432
    .catch Ljava/lang/SecurityException; {:try_start_42b .. :try_end_432} :catch_433
    .catch Ljava/lang/Exception; {:try_start_42b .. :try_end_432} :catch_475
    .catchall {:try_start_42b .. :try_end_432} :catchall_4b2

    .line 2386
    goto :goto_44e

    .line 2384
    :catch_433
    move-exception v5

    .line 2385
    .local v5, "se":Ljava/lang/SecurityException;
    :try_start_434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2387
    .end local v5    # "se":Ljava/lang/SecurityException;
    :goto_44e
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    .line 2390
    :cond_452
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_454
    .catch Ljava/lang/Exception; {:try_start_434 .. :try_end_454} :catch_475
    .catchall {:try_start_434 .. :try_end_454} :catchall_4b2

    .line 2392
    monitor-exit p0

    return v2

    .line 2394
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    :cond_456
    :try_start_456
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_45d

    .line 2395
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2397
    :cond_45d
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2398
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    .line 2399
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2400
    const-string/jumbo v0, "on is failed :: remove audiofocus "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2403
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_473
    .catch Ljava/lang/Exception; {:try_start_456 .. :try_end_473} :catch_475
    .catchall {:try_start_456 .. :try_end_473} :catchall_4b2

    .line 2404
    monitor-exit p0

    return v1

    .line 2407
    .end local v4    # "dmbEnabled":I
    :catch_475
    move-exception v0

    .line 2408
    .local v0, "e":Ljava/lang/Exception;
    :try_start_476
    const-string v2, "FMRadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in on() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v3, :cond_495

    .line 2410
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2412
    :cond_495
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2413
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    .line 2414
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    .line 2415
    const-string/jumbo v2, "on is failed by exception :: remove audiofocus "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2416
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2417
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    .line 2418
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_4ae
    .catchall {:try_start_476 .. :try_end_4ae} :catchall_4b2

    .line 2420
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit p0

    return v1

    .line 2157
    :cond_4b0
    :goto_4b0
    monitor-exit p0

    return v1

    .line 2137
    .end local p1    # "isAudioFocusNeeded":Z
    :catchall_4b2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private queueUpdate(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delay"    # J

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1702
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_36

    .line 1703
    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1706
    :cond_36
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1707
    return-void
.end method

.method private readParametersForCurrentRegion()V
    .registers 7

    .line 1628
    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "87500_108000"

    sget-object v4, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 1629
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_19

    .line 1630
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_16

    .line 1631
    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_4b

    .line 1633
    :cond_16
    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_4b

    .line 1634
    :cond_19
    const-string v3, "76000_108000"

    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 1635
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1636
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_2a

    .line 1637
    iput v4, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_4b

    .line 1639
    :cond_2a
    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_4b

    .line 1640
    :cond_2d
    const-string v3, "76000_90000"

    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 1641
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1642
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_3f

    .line 1643
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_4b

    .line 1645
    :cond_3f
    iput v4, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_4b

    .line 1647
    :cond_42
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_49

    .line 1648
    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_4b

    .line 1650
    :cond_49
    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1653
    :goto_4b
    sget v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v3, :sswitch_data_9a

    .line 1667
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    goto :goto_68

    .line 1661
    :sswitch_53
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_5a

    .line 1662
    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_6f

    .line 1664
    :cond_5a
    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1665
    goto :goto_6f

    .line 1655
    :sswitch_5d
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_65

    .line 1656
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_6f

    .line 1658
    :cond_65
    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1659
    goto :goto_6f

    .line 1667
    :goto_68
    if-nez v3, :cond_6d

    .line 1668
    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_6f

    .line 1670
    :cond_6d
    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6f} :catch_70

    .line 1697
    :goto_6f
    goto :goto_98

    .line 1687
    :catch_70
    move-exception v3

    .line 1688
    .local v3, "e":Ljava/lang/Exception;
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v4, :cond_7c

    .line 1689
    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1690
    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1691
    iput v2, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_80

    .line 1693
    :cond_7c
    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 1694
    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    .line 1696
    :goto_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in readParametersForCurrentRegion() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMRadioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_98
    return-void

    nop

    :sswitch_data_9a
    .sparse-switch
        0x32 -> :sswitch_5d
        0x64 -> :sswitch_53
    .end sparse-switch
.end method

.method private readTuningParameters()V
    .registers 19

    .line 1308
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKDESENSERSSI"

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    const/16 v6, 0xa

    const-string v8, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDPAMD_TH"

    const-string v9, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDRSSI_TH"

    const-string v10, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    const-string v11, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    const-string v12, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SOFTMUTE_PATH"

    const/4 v13, 0x5

    const-string v14, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_CHIPVOLUME"

    const/16 v7, 0x9

    const/4 v15, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_1d9

    .line 1309
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v1, v15, :cond_188

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v7, :cond_2d

    goto/16 :goto_188

    .line 1326
    :cond_2d
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-string v7, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    if-eq v1, v13, :cond_155

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v6, :cond_39

    goto/16 :goto_155

    .line 1334
    :cond_39
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x6

    if-ne v1, v6, :cond_82

    .line 1335
    nop

    .line 1336
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1337
    nop

    .line 1338
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1339
    nop

    .line 1340
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1341
    nop

    .line 1342
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_78b

    .line 1343
    :cond_82
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x7

    if-ne v1, v6, :cond_da

    .line 1344
    nop

    .line 1345
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1346
    nop

    .line 1347
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1348
    nop

    .line 1349
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1350
    nop

    .line 1351
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 1352
    nop

    .line 1353
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    goto/16 :goto_78b

    .line 1354
    :cond_da
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_78b

    .line 1355
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    .local v1, "tempMtkChipVolume":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f7

    .line 1357
    iput-boolean v5, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    .line 1358
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    .line 1360
    :cond_f7
    nop

    .line 1361
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1362
    nop

    .line 1363
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKSMG"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 1364
    nop

    .line 1365
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 1366
    nop

    .line 1367
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1368
    nop

    .line 1369
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 1370
    nop

    .line 1371
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 1372
    .end local v1    # "tempMtkChipVolume":Ljava/lang/String;
    goto/16 :goto_78b

    .line 1328
    :cond_155
    :goto_155
    nop

    .line 1329
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1330
    nop

    .line 1331
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 1332
    nop

    .line 1333
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_78b

    .line 1311
    :cond_188
    :goto_188
    nop

    .line 1312
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1313
    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v1, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    .line 1314
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 1315
    iput v5, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1316
    const/4 v1, -0x2

    iput v1, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1317
    iget v1, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v1, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1318
    iget v1, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v1, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1319
    iget v1, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v1, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1320
    iget v1, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v1, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1321
    iget v1, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v1, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1322
    iget v1, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v1, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1323
    iget v1, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v1, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1324
    nop

    .line 1325
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_78b

    .line 1374
    :cond_1d9
    sget-object v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1375
    .local v1, "Local_Tunning_vals":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tuning value size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1377
    array-length v6, v1

    const/4 v7, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x0

    packed-switch v6, :pswitch_data_78c

    .line 1619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tuning value size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_78b

    .line 1596
    :pswitch_21a
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_268

    .line 1597
    aget-object v3, v1, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1598
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 1599
    aget-object v3, v1, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 1600
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1601
    aget-object v3, v1, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 1602
    aget-object v3, v1, v13

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 1603
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1604
    .local v3, "tempMtkChipVolume":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a2

    .line 1605
    iput-boolean v5, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    .line 1606
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    goto :goto_2a2

    .line 1608
    .end local v3    # "tempMtkChipVolume":Ljava/lang/String;
    :cond_268
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2a2

    .line 1609
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1610
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1611
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1612
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 1613
    aget-object v2, v1, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    .line 1614
    aget-object v2, v1, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    goto/16 :goto_78b

    .line 1608
    :cond_2a2
    :goto_2a2
    goto/16 :goto_78b

    .line 1570
    :pswitch_2a4
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v15, :cond_2e0

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2af

    goto :goto_2e0

    .line 1585
    :cond_2af
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_78b

    .line 1586
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1587
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1588
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1589
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 1590
    aget-object v2, v1, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    goto/16 :goto_78b

    .line 1572
    :cond_2e0
    :goto_2e0
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1573
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1574
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1575
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1576
    aget-object v2, v1, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    .line 1577
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    .line 1578
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 1579
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1580
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1581
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1582
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1583
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1584
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    goto/16 :goto_78b

    .line 1525
    :pswitch_330
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v15, :cond_3e8

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_33c

    goto/16 :goto_3e8

    .line 1541
    :cond_33c
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_363

    .line 1542
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1543
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1544
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1545
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_78b

    .line 1546
    :cond_363
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_38b

    .line 1547
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1548
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1549
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1550
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_78b

    .line 1551
    :cond_38b
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_78b

    .line 1552
    aget-object v3, v1, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1553
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 1554
    aget-object v3, v1, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 1555
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1556
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1557
    .restart local v3    # "tempMtkChipVolume":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c8

    .line 1558
    iput-boolean v5, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    .line 1559
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    .line 1561
    :cond_3c8
    nop

    .line 1562
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 1563
    nop

    .line 1564
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 1565
    .end local v3    # "tempMtkChipVolume":Ljava/lang/String;
    goto/16 :goto_78b

    .line 1527
    :cond_3e8
    :goto_3e8
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1528
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1529
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1530
    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1531
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    .line 1532
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 1533
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1534
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1535
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1536
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1537
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1538
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1539
    nop

    .line 1540
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_78b

    .line 1478
    :pswitch_43f
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v13, :cond_530

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0xa

    if-ne v3, v6, :cond_44b

    goto/16 :goto_530

    .line 1483
    :cond_44b
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_47a

    .line 1484
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1485
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1486
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1487
    nop

    .line 1488
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_78b

    .line 1489
    :cond_47a
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4dd

    .line 1490
    aget-object v3, v1, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1491
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 1492
    aget-object v3, v1, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 1493
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1494
    .restart local v3    # "tempMtkChipVolume":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4af

    .line 1495
    iput-boolean v5, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    .line 1496
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    .line 1498
    :cond_4af
    nop

    .line 1499
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1500
    nop

    .line 1501
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 1502
    nop

    .line 1503
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .end local v3    # "tempMtkChipVolume":Ljava/lang/String;
    goto :goto_4e8

    .line 1504
    :cond_4dd
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v15, :cond_4ea

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4e8

    goto :goto_4ea

    :cond_4e8
    :goto_4e8
    goto/16 :goto_78b

    .line 1506
    :cond_4ea
    :goto_4ea
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1507
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    .line 1508
    aget-object v2, v1, v16

    iput-object v2, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 1509
    iput v5, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1510
    const/4 v2, -0x2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1511
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1512
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1513
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1514
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1515
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1516
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1517
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1518
    nop

    .line 1519
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_78b

    .line 1480
    :cond_530
    :goto_530
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1481
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 1482
    aget-object v2, v1, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_78b

    .line 1441
    :pswitch_54a
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v4, v15, :cond_5c0

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_555

    goto :goto_5c0

    .line 1457
    :cond_555
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_78b

    .line 1458
    aget-object v4, v1, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1459
    aget-object v4, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 1460
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1461
    .local v4, "tempMtkChipVolume":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_582

    .line 1462
    iput-boolean v5, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    .line 1463
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    .line 1465
    :cond_582
    nop

    .line 1466
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 1467
    nop

    .line 1468
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1469
    nop

    .line 1470
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 1471
    nop

    .line 1472
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 1473
    .end local v4    # "tempMtkChipVolume":Ljava/lang/String;
    goto/16 :goto_78b

    .line 1443
    :cond_5c0
    :goto_5c0
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1444
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1445
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    .line 1446
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 1447
    iput v5, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1448
    const/4 v2, -0x2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1449
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1450
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1451
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1452
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1453
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1454
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1455
    nop

    .line 1456
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_78b

    .line 1380
    :pswitch_60c
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v6, v15, :cond_745

    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_618

    goto/16 :goto_745

    .line 1396
    :cond_618
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v6, v13, :cond_71a

    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_624

    goto/16 :goto_71a

    .line 1403
    :cond_624
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_666

    .line 1404
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1405
    nop

    .line 1406
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    .line 1407
    nop

    .line 1408
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    .line 1409
    nop

    .line 1410
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_78b

    .line 1411
    :cond_666
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6a7

    .line 1412
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1413
    nop

    .line 1414
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 1415
    nop

    .line 1416
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 1417
    nop

    .line 1418
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_78b

    .line 1419
    :cond_6a7
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_78b

    .line 1420
    aget-object v4, v1, v17

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1421
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1422
    .restart local v4    # "tempMtkChipVolume":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6cc

    .line 1423
    iput-boolean v5, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    .line 1424
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    .line 1426
    :cond_6cc
    nop

    .line 1427
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKSMG"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 1428
    nop

    .line 1429
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 1430
    nop

    .line 1431
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 1432
    nop

    .line 1433
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 1434
    nop

    .line 1435
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 1436
    .end local v4    # "tempMtkChipVolume":Ljava/lang/String;
    goto :goto_78b

    .line 1398
    :cond_71a
    :goto_71a
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1399
    nop

    .line 1400
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    .line 1401
    nop

    .line 1402
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto :goto_78b

    .line 1382
    :cond_745
    :goto_745
    aget-object v2, v1, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 1383
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v2, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    .line 1384
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 1385
    iput v5, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    .line 1386
    const/4 v2, -0x2

    iput v2, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 1387
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 1388
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 1389
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 1390
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 1391
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    .line 1392
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    .line 1393
    iget v2, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v2, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    .line 1394
    nop

    .line 1395
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    .line 1624
    .end local v1    # "Local_Tunning_vals":[Ljava/lang/String;
    :cond_78b
    :goto_78b
    return-void

    :pswitch_data_78c
    .packed-switch 0x1
        :pswitch_60c
        :pswitch_54a
        :pswitch_43f
        :pswitch_330
        :pswitch_2a4
        :pswitch_21a
    .end packed-switch
.end method

.method private registerAlarmListener()V
    .registers 4

    .line 1274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1275
    .local v0, "intentAlarmFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1277
    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method private registerAllSoundOffListener()V
    .registers 4

    .line 1245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1246
    .local v0, "intentAllSoundOffFilter":Landroid/content/IntentFilter;
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1248
    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method private registerAvrcpModeObserver()V
    .registers 6

    .line 1296
    const-string/jumbo v0, "register avrcp mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_avc_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAvrcpObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_26

    move v4, v2

    :cond_26
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    .line 1299
    return-void
.end method

.method private registerBatteryListener()V
    .registers 4

    .line 1812
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1813
    .local v0, "intentFilterBattery":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1814
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1815
    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1816
    return-void
.end method

.method private registerBikeModeObserver()V
    .registers 6

    .line 1285
    const-string/jumbo v0, "register bike mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1287
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    move v4, v1

    :cond_27
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    .line 1288
    return-void
.end method

.method private registerDNDStatusChangedListener()V
    .registers 4

    .line 1211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1212
    .local v0, "intentDNDFilter":Landroid/content/IntentFilter;
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1213
    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1215
    const-string/jumbo v1, "registering DND Status change Listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method private registerMDMCommandRec()V
    .registers 4

    .line 2454
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.knox.intent.action.SET_DEVICE_SPEAKER_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2456
    const-string v1, "MDM command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2457
    return-void
.end method

.method private registerSetPropertyListener()V
    .registers 6

    .line 1841
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1842
    .local v0, "intentFilterSetProperty":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1843
    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1844
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1845
    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1846
    return-void
.end method

.method private registerSystemListener()V
    .registers 4

    .line 1824
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1825
    .local v0, "intentSystemFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1826
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1828
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 1829
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1830
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1831
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1832
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1833
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1834
    return-void
.end method

.method private registerTelephonyListener()V
    .registers 6

    .line 2424
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    if-eqz v0, :cond_b

    .line 2425
    const-string/jumbo v0, "listner already registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2426
    return-void

    .line 2428
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2430
    .local v0, "id":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_26

    .line 2432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    nop

    .line 2434
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    .line 2435
    const-string/jumbo v2, "registering telephony listener.."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2436
    return-void

    .line 2432
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    throw v2
.end method

.method private releaseAudioSystemMute()V
    .registers 7

    .line 1112
    const-string/jumbo v0, "releaseAudioSystemMute "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_30

    .line 1114
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1115
    .local v0, "ringermode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    .line 1116
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1117
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1122
    .end local v0    # "ringermode":I
    :cond_30
    return-void
.end method

.method private releaseWakeLock()V
    .registers 4

    .line 2614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2616
    .local v0, "id":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2617
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2618
    const-string v2, "Lock is released"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 2621
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2622
    nop

    .line 2623
    return-void

    .line 2621
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2622
    throw v2
.end method

.method private remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .line 2806
    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2807
    :try_start_3
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4c

    .line 2810
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 2811
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2812
    .local v2, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_47

    .line 2813
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    .line 2814
    .local v3, "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2815
    monitor-exit v0

    return-void

    .line 2810
    .end local v2    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    .end local v3    # "delRecord":Lcom/android/server/FMRadioService$ListenerRecord;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2818
    .end local v1    # "i":I
    :cond_4a
    monitor-exit v0

    .line 2819
    return-void

    .line 2808
    :cond_4c
    :goto_4c
    monitor-exit v0

    return-void

    .line 2818
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private responedFocusEvent(I)V
    .registers 12
    .param p1, "focusEvent"    # I

    .line 817
    const-string/jumbo v0, "still FM on in progress"

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_1f2

    :pswitch_9
    goto/16 :goto_1f0

    .line 890
    :pswitch_b
    const-string v0, "AUDIOFOCUS_GAIN "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 891
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_19

    .line 893
    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMRadioService;->setDelay(J)V

    .line 895
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    if-eqz v0, :cond_26

    .line 896
    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 898
    :cond_26
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    .line 899
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-nez v0, :cond_104

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, -0x2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_104

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v0, :cond_104

    .line 900
    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 902
    sget-boolean v0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_a3

    .line 903
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slowly increase the volume till :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 905
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    cmp-long v8, v0, v6

    if-eqz v8, :cond_94

    .line 906
    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    .line 907
    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v0, :cond_8e

    .line 908
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_a0

    .line 909
    invoke-virtual {p0, v6, v7}, Lcom/android/server/FMRadioService;->setVolume(J)V

    .line 910
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x320

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a0

    .line 914
    :cond_8e
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_a0

    .line 917
    :cond_94
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v8, v8

    invoke-virtual {v0, v1, v8, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 920
    :cond_a0
    :goto_a0
    sput-boolean v3, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    goto :goto_b6

    .line 922
    :cond_a3
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 923
    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 922
    invoke-virtual {v0, v1, v8, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 929
    :goto_b6
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_c1

    .line 930
    const-wide/32 v0, 0x155cc

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 932
    :cond_c1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_dd

    .line 933
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0xa

    .line 934
    .local v0, "freqExt":I
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 937
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isUnMuteRadio()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 938
    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_dc

    .line 940
    :cond_d9
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 942
    .end local v0    # "freqExt":I
    :goto_dc
    goto :goto_e4

    .line 943
    :cond_dd
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    .line 945
    :goto_e4
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 946
    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto/16 :goto_1f0

    .line 947
    :cond_f2
    sget-boolean v0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    if-nez v0, :cond_1f0

    .line 948
    const-string v0, "Not able to resume FM player"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto/16 :goto_1f0

    .line 951
    :cond_104
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    if-eqz v0, :cond_1f0

    .line 952
    const-string/jumbo v0, "still FM off in progress"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    .line 954
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1f0

    .line 819
    :pswitch_11a
    const-string v4, "AUDIOFOCUS_LOSS "

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v4

    if-eqz v4, :cond_158

    .line 821
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_139

    .line 822
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_131

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_134

    .line 823
    :cond_131
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelScan()Z

    .line 825
    :cond_134
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_153

    .line 826
    :cond_139
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_14d

    .line 827
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_145

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_148

    .line 828
    :cond_145
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 830
    :cond_148
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_153

    .line 832
    :cond_14d
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 834
    :goto_153
    invoke-direct {p0, v3, v2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto/16 :goto_1f0

    .line 835
    :cond_158
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_1f0

    .line 836
    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    .line 838
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1f0

    .line 844
    :pswitch_16b
    const-string v2, "AUDIOFOCUS_LOSS_TRANSIENT "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1aa

    .line 846
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_18a

    .line 847
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_182

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_185

    .line 848
    :cond_182
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelScan()Z

    .line 850
    :cond_185
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1a4

    .line 851
    :cond_18a
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_19e

    .line 852
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_196

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_199

    .line 853
    :cond_196
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 855
    :cond_199
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1a4

    .line 857
    :cond_19e
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 859
    :goto_1a4
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto :goto_1bb

    .line 861
    :cond_1aa
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_1bb

    .line 862
    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    .line 864
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->sendEmptyMessage(I)Z

    .line 866
    :cond_1bb
    :goto_1bb
    sput-boolean v3, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    .line 867
    goto :goto_1f0

    .line 870
    :pswitch_1be
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 871
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v0, :cond_1ce

    .line 872
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1f0

    .line 874
    :cond_1ce
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 875
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_1dc

    .line 876
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1eb

    .line 877
    :cond_1dc
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_1e5

    .line 878
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_1eb

    .line 880
    :cond_1e5
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    .line 882
    :goto_1eb
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    .line 883
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 959
    :cond_1f0
    :goto_1f0
    return-void

    nop

    :pswitch_data_1f2
    .packed-switch -0x3
        :pswitch_1be
        :pswitch_16b
        :pswitch_11a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private sendFMOFFBroadcast()V
    .registers 4

    .line 2772
    const-string v0, "Sending broadcast FM is in OFF state"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2774
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.fm"

    const-string v2, "com.sec.android.app.fm.widget.FMRadioProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2775
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2776
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2777
    return-void
.end method

.method private sendFMONBroadcast(Ljava/lang/Object;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;

    .line 2780
    const-string v0, "Sending broadcast FM is in ON state"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2781
    if-eqz p1, :cond_43

    .line 2782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2783
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2784
    const-string v1, "com.sec.android.app.fm"

    const-string v2, "com.sec.android.app.fm.receiver.AutoResumeReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "freq"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2786
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2787
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_49

    .line 2788
    :cond_43
    const-string/jumbo v0, "sendFMONBroadcast : data is null"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2790
    :goto_49
    return-void
.end method

.method private sendInfoSamsungAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 4459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInfoSamsungAnalytics ,packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4460
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4461
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tracking_id"

    const-string v2, "4M3-399-1025498"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4462
    const-string v1, "feature"

    const-string v2, "SBKS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4464
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4466
    .local v1, "jobj":Lorg/json/JSONObject;
    :try_start_3a
    const-string/jumbo v2, "sm_sdk_id"

    const-string v3, "Galaxy FM Radio SDK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4467
    const-string/jumbo v2, "sm_sdk_client_pkg_name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4468
    const-string/jumbo v2, "sm_sdk_client_pkg_version"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_4e} :catch_4f

    .line 4471
    goto :goto_68

    .line 4469
    :catch_4f
    move-exception v2

    .line 4470
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FMRadioService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SALog jsonstring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4474
    const-string v2, "extra"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4475
    const-string/jumbo v2, "pkg_name"

    const-string v3, "com.samsung.android.sdk.fmradio"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4477
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4478
    .local v2, "broadcastIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4479
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4480
    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4481
    const-string v3, "SALog sendbroadcast"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4482
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4483
    return-void
.end method

.method private setAFRMSSISamples(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3463
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSISamples(I)V

    .line 3464
    return-void
.end method

.method private setAFRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3455
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSIThreshold(I)V

    .line 3456
    return-void
.end method

.method private setAFValid_th(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3362
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_9

    .line 3363
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFValid_th(I)V

    .line 3364
    :cond_9
    return-void
.end method

.method private setAF_th(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3351
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_9

    .line 3352
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAF_th(I)V

    .line 3353
    :cond_9
    return-void
.end method

.method private setATJ(I)V
    .registers 3
    .param p1, "bATJOn"    # I

    .line 3668
    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    .line 3669
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setATJ(I)V

    .line 3670
    return-void
.end method

.method private setBlendPAMD_th(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3643
    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    .line 3644
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendPAMD_th(I)V

    .line 3645
    return-void
.end method

.method private setBlendRSSI_th(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3634
    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    .line 3635
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendRSSI_th(I)V

    .line 3636
    return-void
.end method

.method private setBlendRmssi(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3487
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendRmssi(I)V

    .line 3488
    return-void
.end method

.method private setBlendSinr(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3495
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendSinr(I)V

    .line 3496
    return-void
.end method

.method private setCFOTh12(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3431
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setCFOTh12(I)V

    .line 3432
    return-void
.end method

.method private setCnt_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 3303
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    .line 3304
    return-void
.end method

.method private setCnt_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .line 3315
    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    .line 3316
    return-void
.end method

.method private setDEConstant(J)V
    .registers 4
    .param p1, "value"    # J

    .line 3273
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_9

    .line 3274
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setDEConstant(J)V

    .line 3275
    :cond_9
    return-void
.end method

.method private setDeSenseList(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3660
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setDeSenseList(Ljava/lang/String;)V

    .line 3661
    return-void
.end method

.method private setDelay(J)V
    .registers 6
    .param p1, "ms"    # J

    .line 4415
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 4418
    goto :goto_1d

    .line 4416
    :catch_4
    move-exception v0

    .line 4417
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException in sleep() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1d
    return-void
.end method

.method private setFMAudioPath(Z)V
    .registers 4
    .param p1, "isOn"    # Z

    .line 4374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFMAudioPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsFMAudioPathOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4377
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    if-ne p1, v0, :cond_28

    .line 4378
    return-void

    .line 4381
    :cond_28
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    .line 4383
    if-eqz p1, :cond_2f

    .line 4384
    const-string v0, "g_fmradio_enable=true"

    .local v0, "keyValuePairs":Ljava/lang/String;
    goto :goto_31

    .line 4386
    .end local v0    # "keyValuePairs":Ljava/lang/String;
    :cond_2f
    const-string v0, "g_fmradio_enable=false"

    .line 4389
    .restart local v0    # "keyValuePairs":Ljava/lang/String;
    :goto_31
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4390
    return-void
.end method

.method private setFakeChannel(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3652
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFakeChannel(Ljava/lang/String;)V

    .line 3653
    return-void
.end method

.method private setFrequencyOffsetThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3505
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    .line 3506
    return-void
.end method

.method private setGoodChannelRMSSIThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3471
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setGoodChannelRMSSIThreshold(I)V

    .line 3472
    return-void
.end method

.method private setHybridSearch(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3479
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setHybridSearch(Ljava/lang/String;)V

    .line 3480
    return-void
.end method

.method private setIFCount1(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3562
    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    .line 3563
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    .line 3564
    return-void
.end method

.method private setIFCount2(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3567
    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    .line 3568
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    .line 3569
    return-void
.end method

.method private setNoisePowerThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3521
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    .line 3522
    return-void
.end method

.method private setOffChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3415
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    .line 3416
    return-void
.end method

.method private setOnChannelThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3407
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOnChannelThreshold(I)V

    .line 3408
    return-void
.end method

.method private setPilotPowerThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3513
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    .line 3514
    return-void
.end method

.method private setRMSSIFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3439
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRMSSIFirstStage(I)V

    .line 3440
    return-void
.end method

.method private setRSSI_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 3295
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    .line 3296
    return-void
.end method

.method private setRSSI_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .line 3307
    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    .line 3308
    return-void
.end method

.method private setSINRFirstStage(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3447
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRFirstStage(I)V

    .line 3448
    return-void
.end method

.method private setSINRSamples(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3399
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRSamples(I)V

    .line 3400
    return-void
.end method

.method private setSINRThreshold(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3423
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRThreshold(I)V

    .line 3424
    return-void
.end method

.method private setSNR_th(I)V
    .registers 2
    .param p1, "value"    # I

    .line 3299
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    .line 3300
    return-void
.end method

.method private setSNR_th_2(I)V
    .registers 2
    .param p1, "value"    # I

    .line 3311
    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    .line 3312
    return-void
.end method

.method private setSearchAlgoType(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3390
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_9

    .line 3391
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSearchAlgoType(I)V

    .line 3392
    :cond_9
    return-void
.end method

.method private setSeekDC(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3530
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_a

    .line 3531
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekDC(I)Z

    .line 3532
    return-void

    .line 3534
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    .line 3535
    return-void
.end method

.method private setSeekDesenseRSSI(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3607
    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    .line 3608
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekDesenseRSSI(I)V

    .line 3609
    return-void
.end method

.method private setSeekQA(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3545
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_a

    .line 3546
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekQA(I)Z

    .line 3547
    return-void

    .line 3549
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V

    .line 3550
    return-void
.end method

.method private setSeekRSSI(J)V
    .registers 5
    .param p1, "value"    # J

    .line 3282
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_b

    .line 3283
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setRssiThreshold(I)V

    .line 3284
    return-void

    .line 3286
    :cond_b
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekRSSI(J)V

    .line 3287
    return-void
.end method

.method private setSeekSMG(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3616
    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    .line 3617
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekSMG(I)V

    .line 3618
    return-void
.end method

.method private setSeekSNR(J)V
    .registers 4
    .param p1, "value"    # J

    .line 3290
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_9

    .line 3291
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekSNR(J)V

    .line 3292
    :cond_9
    return-void
.end method

.method private setSignalSetting(III)V
    .registers 5
    .param p1, "rssi"    # I
    .param p2, "snr"    # I
    .param p3, "cnt"    # I

    .line 4113
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_5

    .line 4114
    return-void

    .line 4116
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_18

    .line 4117
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    .line 4118
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNativeBase;->setSNR_th(I)V

    .line 4119
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNativeBase;->setCnt_th(I)V

    .line 4121
    :cond_18
    return-void
.end method

.method private setSlimbusEnable(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 4397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSlimbusEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCherokeeChip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCherokeeChip()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " volumeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4399
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCherokeeChip()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-nez v0, :cond_4e

    .line 4400
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSlimbusEnable(I)V

    goto :goto_54

    .line 4402
    :cond_4e
    const-string/jumbo v0, "setSlimbusEnable : Not applicable"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4404
    :goto_54
    return-void
.end method

.method private setSoftMuteCoeff(J)V
    .registers 4
    .param p1, "value"    # J

    .line 3589
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    .line 3590
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    .line 3591
    return-void
.end method

.method private setSoftStereoBlendCoeff(J)V
    .registers 4
    .param p1, "value"    # J

    .line 3580
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    .line 3581
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    .line 3582
    return-void
.end method

.method private setSoftStereoBlendRef(J)V
    .registers 4
    .param p1, "value"    # J

    .line 3598
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    .line 3599
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendRef(J)V

    .line 3600
    return-void
.end method

.method private setSoftmute_th(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3625
    iput p1, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    .line 3626
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute_th(I)V

    .line 3627
    return-void
.end method

.method private unRegisterBatteryListener()V
    .registers 3

    .line 1819
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1820
    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1821
    return-void
.end method

.method private unRegisterMDMCommandRec()V
    .registers 3

    .line 2800
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2801
    const-string v0, "MDM reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2802
    return-void
.end method

.method private unRegisterSetPropertyListener()V
    .registers 3

    .line 1849
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1850
    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method private unRegisterTelephonyListener()V
    .registers 6

    .line 2439
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    if-nez v0, :cond_b

    .line 2440
    const-string/jumbo v0, "listner is not registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2441
    return-void

    .line 2443
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2445
    .local v0, "id":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_24

    .line 2447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    nop

    .line 2449
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    .line 2450
    const-string/jumbo v2, "unRegisterTelephonyListener .."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2451
    return-void

    .line 2447
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2448
    throw v2
.end method

.method private unregisterAlarmListener()V
    .registers 3

    .line 1281
    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1283
    return-void
.end method

.method private unregisterAllSoundOffListener()V
    .registers 3

    .line 1252
    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1254
    return-void
.end method

.method private unregisterAvrcpModeObserver()V
    .registers 3

    .line 1302
    const-string/jumbo v0, "unregister avrcp mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAvrcpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1304
    return-void
.end method

.method private unregisterBikeModeObserver()V
    .registers 3

    .line 1291
    const-string/jumbo v0, "unregister bike mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1293
    return-void
.end method

.method private unregisterDNDStatusChangedListener()V
    .registers 3

    .line 1219
    const-string v0, "Unregistering DND Status change listner"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1221
    return-void
.end method

.method private unregisterSystemListener()V
    .registers 3

    .line 1837
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1838
    return-void
.end method


# virtual methods
.method public cancelAFSwitching()V
    .registers 2

    .line 3004
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3005
    return-void

    .line 3006
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_10

    .line 3007
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelAFSwitching()V

    .line 3008
    :cond_10
    return-void
.end method

.method public cancelScan()Z
    .registers 5

    .line 2860
    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_26

    .line 2861
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2863
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v1, :cond_11

    .line 2864
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1}, Lcom/android/server/PlayerExternalChipsetBase;->stopSeek()Z

    goto :goto_16

    .line 2866
    :cond_11
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    .line 2868
    :goto_16
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    .line 2869
    new-array v2, v0, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_27

    .line 2871
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 2876
    :cond_26
    goto :goto_40

    .line 2874
    :catch_27
    move-exception v1

    .line 2875
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in cancelScan() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FMRadioService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_40
    return v0
.end method

.method public cancelSeek()V
    .registers 4

    .line 1962
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_22

    .line 1963
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->stopSeek()Z

    move-result v0

    .line 1964
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1965
    return-void

    .line 1967
    .end local v0    # "result":Z
    :cond_22
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    .line 1968
    return-void
.end method

.method public disableAF()V
    .registers 2

    .line 2964
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2965
    return-void

    .line 2967
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2968
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_13

    .line 2969
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableAF()V

    .line 2970
    :cond_13
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2971
    return-void
.end method

.method public disableRDS()V
    .registers 3

    .line 2931
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2932
    return-void

    .line 2934
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_11

    .line 2935
    const-string v0, "RDS is already disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2936
    return-void

    .line 2939
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2940
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v1, :cond_1e

    .line 2941
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    goto :goto_23

    .line 2943
    :cond_1e
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableRDS()V

    .line 2945
    :goto_23
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2946
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    .line 2947
    return-void
.end method

.method public enableAF()V
    .registers 2

    .line 2950
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2951
    return-void

    .line 2953
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_11

    .line 2954
    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2955
    return-void

    .line 2957
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_1a

    .line 2958
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableAF()V

    .line 2959
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    .line 2960
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    .line 2961
    return-void
.end method

.method public enableRDS()V
    .registers 3

    .line 2911
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2912
    return-void

    .line 2914
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_11

    .line 2915
    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2916
    return-void

    .line 2919
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 2920
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    goto :goto_21

    .line 2922
    :cond_1c
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableRDS()V

    .line 2925
    :goto_21
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    .line 2926
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2927
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    .line 2928
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4081
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4083
    :try_start_3
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4084
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4086
    :cond_12
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    .line 4087
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    .line 4088
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMDMCommandRec()V

    .line 4090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z
    :try_end_1e
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 4109
    goto :goto_38

    .line 4105
    :catch_1f
    move-exception v0

    .line 4107
    .local v0, "e":Ljava/lang/Error;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in finalize() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    .end local v0    # "e":Ljava/lang/Error;
    :goto_38
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1725
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentChannel()J
    .registers 5

    .line 1995
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_f

    .line 1996
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getTunedFrequency()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    .line 1997
    .local v0, "freqExt":J
    return-wide v0

    .line 1999
    .end local v0    # "freqExt":J
    :cond_f
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRSSI()J
    .registers 3

    .line 2846
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_b

    .line 2847
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0

    .line 2849
    :cond_b
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSNR()J
    .registers 3

    .line 2853
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_b

    .line 2854
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0

    .line 2855
    :cond_b
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIntegerTunningParameter(Ljava/lang/String;I)I
    .registers 19
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 3826
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIntegerTunningParameter: parameterName- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3827
    if-nez v0, :cond_22

    .line 3828
    const-string/jumbo v1, "getIntegerTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3829
    return p2

    .line 3832
    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_34e

    :cond_2d
    goto :goto_4c

    :sswitch_2e
    const-string v1, "Cnt_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v2

    goto :goto_4d

    :sswitch_38
    const-string v1, "SNR_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v3

    goto :goto_4d

    :sswitch_42
    const-string v1, "RSSI_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v4

    goto :goto_4d

    :goto_4c
    move v1, v5

    :goto_4d
    packed-switch v1, :pswitch_data_35c

    .line 3840
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x5

    const-string/jumbo v7, "getIntegerTunningParameter() : invalid parameterName - "

    const-string v8, " for chip vendor - "

    if-eq v1, v6, :cond_305

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v9, 0xa

    if-ne v1, v9, :cond_71

    goto/16 :goto_305

    .line 3838
    :pswitch_62
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getCnt_th()I

    move-result v1

    return v1

    .line 3836
    :pswitch_67
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSNR_th()I

    move-result v1

    return v1

    .line 3834
    :pswitch_6c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getRSSI_th()I

    move-result v1

    return v1

    .line 3851
    :cond_71
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v10, 0x8

    const/4 v11, 0x3

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/16 v14, 0x9

    const/4 v15, 0x4

    if-eq v1, v15, :cond_1dd

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v14, :cond_83

    goto/16 :goto_1dd

    .line 3890
    :cond_83
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v13, :cond_df

    .line 3891
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_366

    :cond_8e
    goto :goto_ac

    :sswitch_8f
    const-string v1, "FrequencyOffset_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    move v2, v4

    goto :goto_ad

    :sswitch_99
    const-string v1, "PilotPower_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    goto :goto_ad

    :sswitch_a2
    const-string v1, "NoisePower_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    move v2, v3

    goto :goto_ad

    :goto_ac
    move v2, v5

    :goto_ad
    packed-switch v2, :pswitch_data_374

    .line 3899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3900
    goto/16 :goto_34d

    .line 3897
    :pswitch_d0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getPilotPowerThreshold()I

    move-result v1

    return v1

    .line 3895
    :pswitch_d5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getNoisePowerThreshold()I

    move-result v1

    return v1

    .line 3893
    :pswitch_da
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getFrequencyOffsetThreshold()I

    move-result v1

    return v1

    .line 3901
    :cond_df
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v12, :cond_12c

    .line 3902
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_37e

    :cond_ea
    goto :goto_fe

    :pswitch_eb
    const-string v1, "IFCount2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    goto :goto_ff

    :pswitch_f4
    const-string v1, "IFCount1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    move v3, v4

    goto :goto_ff

    :goto_fe
    move v3, v5

    :goto_ff
    packed-switch v3, :pswitch_data_386

    .line 3908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3910
    goto/16 :goto_34d

    .line 3906
    :pswitch_122
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getIFCount2()I

    move-result v1

    return v1

    .line 3904
    :pswitch_127
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getIFCount1()I

    move-result v1

    return v1

    .line 3911
    :cond_12c
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v10, :cond_1b8

    .line 3912
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_38e

    :cond_137
    goto :goto_173

    :sswitch_138
    const-string v1, "BlendPAMD_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    move v2, v15

    goto :goto_174

    :sswitch_142
    const-string v1, "ATJCofig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    move v2, v6

    goto :goto_174

    :sswitch_14c
    const-string v1, "BlendRSSI_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    move v2, v11

    goto :goto_174

    :sswitch_156
    const-string v1, "SeekSMG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    move v2, v3

    goto :goto_174

    :sswitch_160
    const-string v1, "Softmute_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    goto :goto_174

    :sswitch_169
    const-string v1, "SeekDesenseRSSI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    move v2, v4

    goto :goto_174

    :goto_173
    move v2, v5

    :goto_174
    packed-switch v2, :pswitch_data_3a8

    .line 3926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3928
    goto/16 :goto_34d

    .line 3924
    :pswitch_19a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getATJ()I

    move-result v1

    return v1

    .line 3922
    :pswitch_19f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendPAMD_th()I

    move-result v1

    return v1

    .line 3920
    :pswitch_1a4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendRSSI_th()I

    move-result v1

    return v1

    .line 3918
    :pswitch_1a9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSoftmute_th()I

    move-result v1

    return v1

    .line 3916
    :pswitch_1ae
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekSMG()I

    move-result v1

    return v1

    .line 3914
    :pswitch_1b3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekDesenseRSSI()I

    move-result v1

    return v1

    .line 3930
    :cond_1b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chipvendor - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_34d

    .line 3853
    :cond_1dd
    :goto_1dd
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3b8

    :cond_1e4
    goto/16 :goto_291

    :sswitch_1e6
    const-string v1, "AFRMSSIThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v10

    goto/16 :goto_292

    :sswitch_1f1
    const-string v1, "RMSSIFirstStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v13

    goto/16 :goto_292

    :sswitch_1fc
    const-string v1, "SNR_th_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    const/16 v2, 0xc

    goto/16 :goto_292

    :sswitch_208
    const-string v1, "CFOTh12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v6

    goto/16 :goto_292

    :sswitch_213
    const-string v1, "SINRThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v15

    goto/16 :goto_292

    :sswitch_21e
    const-string v1, "SINRSamples"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v3

    goto/16 :goto_292

    :sswitch_229
    const-string v1, "OnChannelThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    goto/16 :goto_292

    :sswitch_233
    const-string v1, "BlendRmssi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    const/16 v2, 0xe

    goto :goto_292

    :sswitch_23e
    const-string v1, "RSSI_th_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    const/16 v2, 0xb

    goto :goto_292

    :sswitch_249
    const-string v1, "OffChannelThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v11

    goto :goto_292

    :sswitch_253
    const-string v1, "Cnt_th_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    const/16 v2, 0xd

    goto :goto_292

    :sswitch_25e
    const-string v1, "SINRFirstStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v12

    goto :goto_292

    :sswitch_268
    const-string v1, "BlendSinr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    const/16 v2, 0xf

    goto :goto_292

    :sswitch_273
    const-string v1, "SearchAlgoType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v4

    goto :goto_292

    :sswitch_27d
    const-string v1, "GoodChannelRMSSIThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v9

    goto :goto_292

    :sswitch_287
    const-string v1, "AFRMSSISamples"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    move v2, v14

    goto :goto_292

    :goto_291
    move v2, v5

    :goto_292
    packed-switch v2, :pswitch_data_3fa

    .line 3887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3889
    goto/16 :goto_34d

    .line 3885
    :pswitch_2b5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendSinr()I

    move-result v1

    return v1

    .line 3883
    :pswitch_2ba
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendRmssi()I

    move-result v1

    return v1

    .line 3881
    :pswitch_2bf
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getCnt_th_2()I

    move-result v1

    return v1

    .line 3879
    :pswitch_2c4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSNR_th_2()I

    move-result v1

    return v1

    .line 3877
    :pswitch_2c9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getRSSI_th_2()I

    move-result v1

    return v1

    .line 3875
    :pswitch_2ce
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getGoodChannelRMSSIThreshold()I

    move-result v1

    return v1

    .line 3873
    :pswitch_2d3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getAFRMSSISamples()I

    move-result v1

    return v1

    .line 3871
    :pswitch_2d8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getAFRMSSIThreshold()I

    move-result v1

    return v1

    .line 3869
    :pswitch_2dd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSINRFirstStage()I

    move-result v1

    return v1

    .line 3867
    :pswitch_2e2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getRMSSIFirstStage()I

    move-result v1

    return v1

    .line 3865
    :pswitch_2e7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getCFOTh12()I

    move-result v1

    return v1

    .line 3863
    :pswitch_2ec
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSINRThreshold()I

    move-result v1

    return v1

    .line 3861
    :pswitch_2f1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getOffChannelThreshold()I

    move-result v1

    return v1

    .line 3859
    :pswitch_2f6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getOnChannelThreshold()I

    move-result v1

    return v1

    .line 3857
    :pswitch_2fb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSINRSamples()I

    move-result v1

    return v1

    .line 3855
    :pswitch_300
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSearchAlgoType()I

    move-result v1

    return v1

    .line 3842
    :cond_305
    :goto_305
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_41e

    :cond_30c
    goto :goto_320

    :sswitch_30d
    const-string v1, "SeekQA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30c

    goto :goto_321

    :sswitch_316
    const-string v1, "SeekDC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30c

    move v3, v4

    goto :goto_321

    :goto_320
    move v3, v5

    :goto_321
    packed-switch v3, :pswitch_data_428

    .line 3848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3850
    goto :goto_34d

    .line 3846
    :pswitch_343
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekQA()I

    move-result v1

    return v1

    .line 3844
    :pswitch_348
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekDC()I

    move-result v1

    return v1

    .line 3932
    :goto_34d
    return p2

    :sswitch_data_34e
    .sparse-switch
        -0x7bea88a4 -> :sswitch_42
        -0x6debe1a4 -> :sswitch_38
        0x7898f92a -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_35c
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch

    :sswitch_data_366
    .sparse-switch
        -0x793b6ef8 -> :sswitch_a2
        -0x2cd46d5a -> :sswitch_99
        0x40effc4 -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_da
        :pswitch_d5
        :pswitch_d0
    .end packed-switch

    :pswitch_data_37e
    .packed-switch -0x712e4381
        :pswitch_f4
        :pswitch_eb
    .end packed-switch

    :pswitch_data_386
    .packed-switch 0x0
        :pswitch_127
        :pswitch_122
    .end packed-switch

    :sswitch_data_38e
    .sparse-switch
        -0x673c1014 -> :sswitch_169
        -0x54753130 -> :sswitch_160
        -0x2740286b -> :sswitch_156
        -0x54ba1f5 -> :sswitch_14c
        0x3de29be1 -> :sswitch_142
        0x71d9d97a -> :sswitch_138
    .end sparse-switch

    :pswitch_data_3a8
    .packed-switch 0x0
        :pswitch_1b3
        :pswitch_1ae
        :pswitch_1a9
        :pswitch_1a4
        :pswitch_19f
        :pswitch_19a
    .end packed-switch

    :sswitch_data_3b8
    .sparse-switch
        -0x7795fd00 -> :sswitch_287
        -0x6097aadd -> :sswitch_27d
        -0x57b635eb -> :sswitch_273
        -0x53297d95 -> :sswitch_268
        -0x4bc61798 -> :sswitch_25e
        -0x49c09da3 -> :sswitch_253
        -0x401789e9 -> :sswitch_249
        -0x2b6ae3f1 -> :sswitch_23e
        -0x121267c3 -> :sswitch_233
        0x2487eac7 -> :sswitch_229
        0x3471400f -> :sswitch_21e
        0x3eabfaf1 -> :sswitch_213
        0x5435ba01 -> :sswitch_208
        0x5d86030f -> :sswitch_1fc
        0x6cdb6a9c -> :sswitch_1f1
        0x777fc5a2 -> :sswitch_1e6
    .end sparse-switch

    :pswitch_data_3fa
    .packed-switch 0x0
        :pswitch_300
        :pswitch_2fb
        :pswitch_2f6
        :pswitch_2f1
        :pswitch_2ec
        :pswitch_2e7
        :pswitch_2e2
        :pswitch_2dd
        :pswitch_2d8
        :pswitch_2d3
        :pswitch_2ce
        :pswitch_2c9
        :pswitch_2c4
        :pswitch_2bf
        :pswitch_2ba
        :pswitch_2b5
    .end packed-switch

    :sswitch_data_41e
    .sparse-switch
        -0x6c9efae9 -> :sswitch_316
        -0x6c9ef958 -> :sswitch_30d
    .end sparse-switch

    :pswitch_data_428
    .packed-switch 0x0
        :pswitch_348
        :pswitch_343
    .end packed-switch
.end method

.method public getLastScanResult()[J
    .registers 3

    .line 1907
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 1909
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1910
    .local v0, "arryL":[Ljava/lang/Long;
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    return-object v1

    .line 1912
    .end local v0    # "arryL":[Ljava/lang/Long;
    :cond_12
    const-string/jumbo v0, "getLastScanResult - mScanChannelList null"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1913
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongTunningParameter(Ljava/lang/String;J)J
    .registers 11
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 3978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long getLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3979
    if-nez p1, :cond_20

    .line 3980
    const-string/jumbo v0, "getLongTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3981
    return-wide p2

    .line 3984
    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_ce

    :cond_2a
    goto :goto_3f

    :sswitch_2b
    const-string v0, "CurrentSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_40

    :sswitch_35
    const-string v0, "CurrentRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    goto :goto_40

    :goto_3f
    move v0, v3

    :goto_40
    packed-switch v0, :pswitch_data_d8

    .line 3990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " for chip vendor - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3993
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x7

    if-ne v0, v6, :cond_cc

    .line 3994
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e0

    :cond_72
    goto :goto_9a

    .line 3988
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0

    .line 3986
    :pswitch_78
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0

    .line 3994
    :sswitch_7d
    const-string v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    move v1, v2

    goto :goto_9b

    :sswitch_87
    const-string v0, "SoftStereoBlendRef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v1, 0x2

    goto :goto_9b

    :sswitch_91
    const-string v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_9b

    :goto_9a
    move v1, v3

    :goto_9b
    packed-switch v1, :pswitch_data_ee

    .line 4002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_cc

    .line 4000
    :pswitch_bd
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendRef()J

    move-result-wide v0

    return-wide v0

    .line 3998
    :pswitch_c2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftMuteCoeff()J

    move-result-wide v0

    return-wide v0

    .line 3996
    :pswitch_c7
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendCoeff()J

    move-result-wide v0

    return-wide v0

    .line 4006
    :cond_cc
    :goto_cc
    return-wide p2

    nop

    :sswitch_data_ce
    .sparse-switch
        -0x78c176d0 -> :sswitch_35
        0x35e9415e -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_78
        :pswitch_73
    .end packed-switch

    :sswitch_data_e0
    .sparse-switch
        -0x28a33b56 -> :sswitch_91
        0x681de184 -> :sswitch_87
        0x69f7a436 -> :sswitch_7d
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
    .end packed-switch
.end method

.method public getMaxVolume()J
    .registers 3

    .line 2608
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_7

    .line 2609
    const-wide/16 v0, 0xf

    return-wide v0

    .line 2610
    :cond_7
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayedFreq()J
    .registers 3

    .line 3278
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    return-wide v0
.end method

.method public getSoftMuteMode()Z
    .registers 2

    .line 3383
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_b

    .line 3384
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSoftMuteMode()Z

    move-result v0

    return v0

    .line 3385
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 4047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4048
    if-nez p1, :cond_20

    .line 4049
    const-string/jumbo v0, "getStringTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4050
    return-object p2

    .line 4053
    :cond_20
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, " for chipvendor - "

    const-string/jumbo v4, "getStringTunningParameter() : invalid parameterName - "

    const/4 v5, -0x1

    if-eq v0, v1, :cond_a6

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_34

    goto/16 :goto_a6

    .line 4062
    :cond_34
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_82

    .line 4063
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e0

    :cond_41
    goto :goto_55

    :sswitch_42
    const-string v0, "FakeChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_56

    :sswitch_4b
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v2, 0x1

    goto :goto_56

    :goto_55
    move v2, v5

    :goto_56
    packed-switch v2, :pswitch_data_ea

    .line 4069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4071
    goto :goto_df

    .line 4067
    :pswitch_78
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getDeSenseList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4065
    :pswitch_7d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFakeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4073
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_df

    .line 4055
    :cond_a6
    :goto_a6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_f2

    :cond_ad
    goto :goto_b7

    :pswitch_ae
    const-string v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    goto :goto_b8

    :goto_b7
    move v2, v5

    :goto_b8
    packed-switch v2, :pswitch_data_f8

    .line 4059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4061
    goto :goto_df

    .line 4057
    :pswitch_da
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4075
    :goto_df
    return-object p2

    :sswitch_data_e0
    .sparse-switch
        -0x7f620235 -> :sswitch_4b
        -0x35ee1432 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_78
    .end packed-switch

    :pswitch_data_f2
    .packed-switch -0x12b0651c
        :pswitch_ae
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_da
    .end packed-switch
.end method

.method public getVolume()J
    .registers 3

    .line 2511
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_c

    .line 2512
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getVolume()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2514
    :cond_c
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAFEnable()Z
    .registers 2

    .line 3000
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public isAirPlaneMode()Z
    .registers 2

    .line 1991
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public isAllSoundOff()Z
    .registers 4

    .line 4370
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    return v2
.end method

.method public isBatteryLow()Z
    .registers 2

    .line 1987
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public isBusy()I
    .registers 2

    .line 1972
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_6

    .line 1973
    const/4 v0, 0x1

    return v0

    .line 1975
    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method public isDNDEnable()Z
    .registers 7

    .line 4360
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 4361
    .local v0, "dndOn":Z
    :goto_14
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 4362
    .local v3, "mNm":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    .line 4363
    .local v4, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_2b

    move v5, v1

    goto :goto_2c

    :cond_2b
    move v5, v2

    .line 4366
    .local v5, "muteMedia":Z
    :goto_2c
    if-eqz v0, :cond_31

    if-eqz v5, :cond_31

    move v2, v1

    :cond_31
    return v2
.end method

.method public isDeviceSpeakerEnabled()Z
    .registers 2

    .line 4410
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMDMSpeakerEnabled:Z

    return v0
.end method

.method public isHeadsetPlugged()Z
    .registers 2

    .line 1979
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOn()Z
    .registers 2

    .line 2639
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public isPathSupportSoftmute(I)Z
    .registers 4
    .param p1, "path"    # I

    .line 4431
    const-string v0, "Both"

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 4432
    const-string v1, "Speaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    :cond_17
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    .line 4433
    const-string v1, "Headset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    if-ne p1, v0, :cond_25

    goto :goto_27

    .line 4436
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 4434
    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method public isRDSEnable()Z
    .registers 2

    .line 2996
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public isScanning()Z
    .registers 2

    .line 2838
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public isSeeking()Z
    .registers 2

    .line 2842
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public isTvOutPlugged()Z
    .registers 2

    .line 1983
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public isUnMuteRadio()Z
    .registers 4

    .line 4422
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_1a

    .line 4423
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4424
    return v1

    .line 4426
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public mute(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1883
    if-eqz p1, :cond_33

    .line 1884
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_23

    .line 1885
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->muteOn()V

    goto :goto_28

    .line 1887
    :cond_23
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOn()V

    .line 1889
    :goto_28
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "g_fmradio_mute=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_59

    .line 1892
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_5a

    .line 1896
    :cond_40
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_4a

    .line 1897
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->muteOff()V

    goto :goto_4f

    .line 1899
    :cond_4a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    .line 1901
    :goto_4f
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "g_fmradio_mute=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    .line 1904
    :goto_59
    return-void

    .line 1893
    :cond_5a
    :goto_5a
    const-string v0, "AllSoundOff or DND is enabled. So FMRadio is muted."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1894
    return-void
.end method

.method public notifyEvent(ILjava/lang/Object;)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 3029
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eqz v0, :cond_2f

    if-ne p1, v2, :cond_2f

    .line 3030
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    if-nez v0, :cond_2a

    .line 3031
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_20

    .line 3032
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isUnMuteRadio()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3033
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "g_fmradio_mute=false"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_23

    .line 3036
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 3038
    :cond_23
    :goto_23
    const-string/jumbo v0, "notifyEvent Turning on FM radio"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2f

    .line 3040
    :cond_2a
    const-string v0, "Fail to notify turning on FM radio "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3043
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x3

    if-ne p1, v0, :cond_45

    .line 3044
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setVolume(I)Z

    .line 3047
    :cond_45
    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3048
    :try_start_48
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_623

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_54

    goto/16 :goto_623

    .line 3055
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3056
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 3057
    .local v1, "size":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_78
    if-ltz v3, :cond_621

    .line 3058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying listener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_48 .. :try_end_90} :catchall_62e

    .line 3060
    packed-switch p1, :pswitch_data_632

    goto/16 :goto_61c

    .line 3188
    :pswitch_95
    if-eqz p2, :cond_c0

    .line 3189
    :try_start_97
    move-object v4, p2

    check-cast v4, Lcom/android/server/FMPlayerNativeBase$PIECCData;

    .line 3190
    .local v4, "pieccData":Lcom/android/server/FMPlayerNativeBase$PIECCData;
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget v6, v4, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mPI:I

    iget v7, v4, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mECC:I

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    .line 3191
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    if-eqz v5, :cond_be

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    if-eqz v5, :cond_be

    .line 3193
    monitor-enter v5
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b4} :catch_551
    .catchall {:try_start_97 .. :try_end_b4} :catchall_62e

    .line 3194
    :try_start_b4
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 3195
    monitor-exit v5

    goto :goto_be

    :catchall_bb
    move-exception v6

    monitor-exit v5
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_bb

    .end local v1    # "size":I
    .end local v3    # "i":I
    .end local p0    # "this":Lcom/android/server/FMRadioService;
    .end local p1    # "type":I
    .end local p2    # "data":Ljava/lang/Object;
    :try_start_bd
    throw v6

    .line 3197
    .end local v4    # "pieccData":Lcom/android/server/FMPlayerNativeBase$PIECCData;
    .restart local v1    # "size":I
    .restart local v3    # "i":I
    .restart local p0    # "this":Lcom/android/server/FMRadioService;
    .restart local p1    # "type":I
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_be
    :goto_be
    goto/16 :goto_61c

    .line 3198
    :cond_c0
    const-string/jumbo v4, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3200
    goto/16 :goto_61c

    .line 3238
    :pswitch_c8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3239
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3238
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3240
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRecordingFinished()V

    .line 3241
    goto/16 :goto_61c

    .line 3174
    :pswitch_106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3175
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3174
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3176
    if-eqz p2, :cond_155

    .line 3177
    move-object v4, p2

    check-cast v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;

    .line 3178
    .local v4, "rtplusData":Lcom/android/server/FMPlayerNativeBase$RTPlusData;
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget v7, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType1:I

    iget v8, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos1:I

    iget v9, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen1:I

    iget v10, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType2:I

    iget v11, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos2:I

    iget v12, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioTextPlusReceived(IIIIII)V

    .line 3182
    .end local v4    # "rtplusData":Lcom/android/server/FMPlayerNativeBase$RTPlusData;
    goto/16 :goto_61c

    .line 3183
    :cond_155
    const-string/jumbo v4, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3185
    goto/16 :goto_61c

    .line 3232
    :pswitch_15d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3233
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3232
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3234
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onVolumeLocked()V

    .line 3235
    goto/16 :goto_61c

    .line 3221
    :pswitch_19b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3222
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3221
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3223
    if-eqz p2, :cond_1e2

    .line 3224
    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3225
    .local v4, "freq":J
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_61c

    .line 3227
    .end local v4    # "freq":J
    :cond_1e2
    const-string/jumbo v4, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3229
    goto/16 :goto_61c

    .line 3215
    :pswitch_1ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3216
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3215
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3217
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyStarted()V

    .line 3218
    goto/16 :goto_61c

    .line 3209
    :pswitch_228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3210
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3209
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3211
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemDisabled()V

    .line 3212
    goto/16 :goto_61c

    .line 3203
    :pswitch_266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3204
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3203
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3205
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemEnabled()V

    .line 3206
    goto/16 :goto_61c

    .line 3162
    :pswitch_2a4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3163
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3162
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3164
    if-eqz p2, :cond_2ed

    .line 3165
    move-object v4, p2

    check-cast v4, Lcom/android/server/FMPlayerNativeBase$RDSData;

    .line 3166
    .local v4, "rdsData":Lcom/android/server/FMPlayerNativeBase$RDSData;
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget-wide v6, v4, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    iget-object v8, v4, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    .line 3168
    .end local v4    # "rdsData":Lcom/android/server/FMPlayerNativeBase$RDSData;
    goto/16 :goto_61c

    .line 3169
    :cond_2ed
    const-string/jumbo v4, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3171
    goto/16 :goto_61c

    .line 3156
    :pswitch_2f5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3157
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3156
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3158
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetDisconnected()V

    .line 3159
    goto/16 :goto_61c

    .line 3150
    :pswitch_333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3151
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3150
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3152
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetConnected()V

    .line 3153
    goto/16 :goto_61c

    .line 3136
    :pswitch_371
    if-eqz p2, :cond_3c8

    .line 3137
    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3138
    .local v4, "freq":J
    sput-wide v4, Lcom/android/server/FMRadioService;->curFreq:J

    .line 3139
    sget-boolean v6, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v6, :cond_3b9

    .line 3140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : with data array:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3142
    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3140
    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3143
    :cond_3b9
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onTuned(J)V

    goto/16 :goto_61c

    .line 3145
    .end local v4    # "freq":J
    :cond_3c8
    const-string/jumbo v4, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3147
    goto/16 :goto_61c

    .line 3069
    :pswitch_3d0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3070
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3069
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3071
    const/4 v4, -0x1

    .line 3072
    .local v4, "reasonCode":I
    if-eqz p2, :cond_40a

    .line 3073
    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    .line 3074
    :cond_40a
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDisabled(I)V

    .line 3076
    goto/16 :goto_61c

    .line 3063
    .end local v4    # "reasonCode":I
    :pswitch_419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3064
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3063
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3065
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioEnabled()V

    .line 3066
    goto/16 :goto_61c

    .line 3100
    :pswitch_457
    if-eqz p2, :cond_4ad

    .line 3101
    move-object v4, p2

    check-cast v4, [Ljava/lang/Long;

    .line 3102
    .local v4, "Ifreq":[Ljava/lang/Long;
    invoke-direct {p0, v4}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v5

    .line 3103
    .local v5, "freqArry":[J
    const/4 v6, 0x0

    .line 3104
    .local v6, "count":I
    if-eqz v5, :cond_465

    .line 3105
    array-length v7, v5

    move v6, v7

    .line 3108
    :cond_465
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : with data array:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3110
    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v8, v8, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3108
    invoke-static {v7}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3111
    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    .line 3112
    .end local v6    # "count":I
    goto/16 :goto_61c

    .line 3113
    .end local v4    # "Ifreq":[Ljava/lang/Long;
    .end local v5    # "freqArry":[J
    :cond_4ad
    const-string/jumbo v4, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3115
    goto/16 :goto_61c

    .line 3118
    :pswitch_4b5
    if-eqz p2, :cond_50b

    .line 3119
    move-object v4, p2

    check-cast v4, [Ljava/lang/Long;

    .line 3120
    .restart local v4    # "Ifreq":[Ljava/lang/Long;
    invoke-direct {p0, v4}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v5

    .line 3121
    .restart local v5    # "freqArry":[J
    const/4 v6, 0x0

    .line 3122
    .restart local v6    # "count":I
    if-eqz v5, :cond_4c3

    .line 3123
    array-length v7, v5

    move v6, v7

    .line 3126
    :cond_4c3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : with data array:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3128
    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v8, v8, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3126
    invoke-static {v7}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3129
    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    .line 3130
    .end local v6    # "count":I
    goto/16 :goto_61c

    .line 3131
    .end local v4    # "Ifreq":[Ljava/lang/Long;
    .end local v5    # "freqArry":[J
    :cond_50b
    const-string/jumbo v4, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3133
    goto/16 :goto_61c

    .line 3091
    :pswitch_513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3092
    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3091
    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3093
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    .line 3094
    goto/16 :goto_61c

    .line 3246
    :catch_551
    move-exception v4

    goto :goto_5aa

    .line 3079
    :pswitch_553
    const-wide/16 v4, 0x0

    .line 3080
    .local v4, "freq":J
    if-eqz p2, :cond_55f

    .line 3081
    move-object v6, p2

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v4, v6

    .line 3083
    :cond_55f
    sget-boolean v6, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v6, :cond_59c

    .line 3084
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : with freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3086
    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3084
    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3087
    :cond_59c
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V
    :try_end_5a9
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_5a9} :catch_551
    .catchall {:try_start_bd .. :try_end_5a9} :catchall_62e

    .line 3088
    goto :goto_61c

    .line 3247
    .local v4, "e":Ljava/lang/Exception;
    :goto_5aa
    :try_start_5aa
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in notifyEvent() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "we loose "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " listener--ignore it :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 3250
    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3248
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 3252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove done go for next i\'s value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3253
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v5, :cond_61d

    if-ne p1, v2, :cond_61d

    .line 3254
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->sendFMONBroadcast(Ljava/lang/Object;)V

    goto :goto_61d

    .line 3255
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_61c
    nop

    .line 3057
    :cond_61d
    :goto_61d
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_78

    .line 3257
    .end local v1    # "size":I
    .end local v3    # "i":I
    :cond_621
    monitor-exit v0

    .line 3258
    return-void

    .line 3051
    :cond_623
    :goto_623
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v1, :cond_62c

    if-ne p1, v2, :cond_62c

    .line 3052
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->sendFMONBroadcast(Ljava/lang/Object;)V

    .line 3053
    :cond_62c
    monitor-exit v0

    return-void

    .line 3257
    :catchall_62e
    move-exception v1

    monitor-exit v0
    :try_end_630
    .catchall {:try_start_5aa .. :try_end_630} :catchall_62e

    throw v1

    nop

    :pswitch_data_632
    .packed-switch 0x1
        :pswitch_553
        :pswitch_513
        :pswitch_4b5
        :pswitch_457
        :pswitch_419
        :pswitch_3d0
        :pswitch_371
        :pswitch_333
        :pswitch_2f5
        :pswitch_2a4
        :pswitch_266
        :pswitch_228
        :pswitch_1ea
        :pswitch_19b
        :pswitch_15d
        :pswitch_106
        :pswitch_c8
        :pswitch_95
    .end packed-switch
.end method

.method public notifyRecFinish()V
    .registers 4

    .line 4330
    const-string/jumbo v0, "notifyRecFinish EVENT_REC_FINISH"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4331
    const-string v0, "fmradio_recoding=off"

    .line 4332
    .local v0, "keyValuePairs":Ljava/lang/String;
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4333
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4334
    return-void
.end method

.method public off()Z
    .registers 3

    .line 2793
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2794
    return v1

    .line 2796
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    move-result v0

    return v0
.end method

.method public on()Z
    .registers 2

    .line 2097
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2098
    const/4 v0, 0x0

    return v0

    .line 2099
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized on_in_testmode()Z
    .registers 9

    monitor-enter p0

    .line 2028
    :try_start_1
    sget-boolean v0, Lcom/android/server/FMRadioService;->isFactoryBinary:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2029
    const-string/jumbo v0, "on_in_testmode is called with normal binary. This function is only for Factory binary. So just return"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e7

    .line 2030
    monitor-exit p0

    return v1

    .line 2035
    .end local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_e
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_10
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3

    if-eq v3, v2, :cond_22

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2036
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_24
    .catchall {:try_start_10 .. :try_end_1e} :catchall_e7

    if-ne v3, v0, :cond_21

    goto :goto_22

    .line 2040
    :cond_21
    goto :goto_3d

    .line 2037
    :cond_22
    :goto_22
    monitor-exit p0

    return v1

    .line 2038
    :catch_24
    move-exception v3

    .line 2039
    .local v3, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getCallStateForSubscription() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3d
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_e7

    if-eqz v3, :cond_43

    .line 2044
    monitor-exit p0

    return v2

    .line 2046
    .restart local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_43
    const/16 v3, 0x9

    :try_start_45
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v4, :cond_68

    .line 2047
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v4

    if-ne v4, v0, :cond_5f

    .line 2048
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    .line 2049
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->isOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    goto :goto_92

    .line 2051
    .end local p0    # "this":Lcom/android/server/FMRadioService;
    :cond_5f
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->on()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    goto :goto_92

    .line 2054
    :cond_68
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v4, 0x0

    if-ne v0, v3, :cond_83

    .line 2055
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_7c

    .line 2056
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    goto :goto_83

    .line 2058
    :cond_7c
    const-string v0, "FM preInitialize() failed"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_81} :catch_be
    .catchall {:try_start_45 .. :try_end_81} :catchall_e7

    .line 2059
    monitor-exit p0

    return v1

    .line 2062
    :cond_83
    :goto_83
    :try_start_83
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_8f

    move v0, v2

    goto :goto_90

    :cond_8f
    move v0, v1

    :goto_90
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2064
    :goto_92
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_ae

    .line 2065
    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 2066
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    .line 2067
    const/4 v0, 0x5

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2068
    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 2070
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2072
    const-string/jumbo v0, "on_in_testmode Turning on FM radio"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_ac} :catch_be
    .catchall {:try_start_83 .. :try_end_ac} :catchall_e7

    .line 2073
    monitor-exit p0

    return v2

    .line 2076
    :cond_ae
    :try_start_ae
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_b5

    .line 2077
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2079
    :cond_b5
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    .line 2080
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2081
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bc} :catch_be
    .catchall {:try_start_ae .. :try_end_bc} :catchall_e7

    .line 2082
    monitor-exit p0

    return v1

    .line 2084
    :catch_be
    move-exception v0

    .line 2085
    .local v0, "e":Ljava/lang/Exception;
    :try_start_bf
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v3, :cond_c6

    .line 2086
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    .line 2088
    :cond_c6
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    .line 2089
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    .line 2090
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in on_in_testmode() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_e5
    .catchall {:try_start_bf .. :try_end_e5} :catchall_e7

    .line 2093
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit p0

    return v1

    .line 2027
    :catchall_e7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2019
    if-nez p1, :cond_19

    .line 2020
    return-void

    .line 2021
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    .line 2022
    return-void
.end method

.method public scan()V
    .registers 5

    .line 2824
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_5

    .line 2825
    return-void

    .line 2826
    :cond_5
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    .line 2827
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    .line 2828
    return-void

    .line 2832
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    .line 2833
    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    .line 2834
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2835
    return-void
.end method

.method public searchAll()J
    .registers 5

    .line 2892
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_19

    .line 2893
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_f

    .line 2894
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchAll()J

    move-result-wide v0

    return-wide v0

    .line 2896
    :cond_f
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->searchAll()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0

    .line 2899
    :cond_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchDown()J
    .registers 3

    .line 2904
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_b

    goto :goto_12

    .line 2907
    :cond_b
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchDown()J

    move-result-wide v0

    return-wide v0

    .line 2905
    :cond_12
    :goto_12
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public searchUp()J
    .registers 4

    .line 2881
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_9

    .line 2882
    return-wide v1

    .line 2884
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_18

    .line 2885
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchUp()J

    move-result-wide v0

    return-wide v0

    .line 2886
    :cond_18
    return-wide v1
.end method

.method public seekDown()J
    .registers 5

    .line 1939
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1940
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1942
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1944
    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1947
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_1d

    .line 1948
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->seekDown()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    .local v0, "freq":J
    goto :goto_23

    .line 1950
    .end local v0    # "freq":J
    :cond_1d
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->seekDown()J

    move-result-wide v0

    .line 1953
    .restart local v0    # "freq":J
    :goto_23
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1955
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1956
    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1957
    return-wide v0
.end method

.method public seekUp()J
    .registers 5

    .line 1918
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1919
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1920
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1922
    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1925
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_1d

    .line 1926
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->seekUp()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    .local v0, "freq":J
    goto :goto_23

    .line 1928
    .end local v0    # "freq":J
    :cond_1d
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->seekUp()J

    move-result-wide v0

    .line 1931
    .restart local v0    # "freq":J
    :goto_23
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1933
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    .line 1934
    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1935
    return-wide v0
.end method

.method public setBand(I)V
    .registers 3
    .param p1, "band"    # I

    .line 2981
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_a

    .line 2982
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBand(I)V

    goto :goto_f

    .line 2984
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setBand(I)Z

    .line 2985
    :goto_f
    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    .line 2986
    return-void
.end method

.method public setChannelSpacing(I)V
    .registers 3
    .param p1, "spacing"    # I

    .line 2989
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_a

    .line 2990
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setChannelSpacing(I)V

    goto :goto_f

    .line 2992
    :cond_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setChannelSpacing(I)Z

    .line 2993
    :goto_f
    return-void
.end method

.method public setFMIntenna(Z)V
    .registers 3
    .param p1, "setFMIntenna"    # Z

    .line 3373
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_9

    .line 3374
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFMIntenna(Z)V

    .line 3375
    :cond_9
    return-void
.end method

.method public setIntegerTunningParameter(Ljava/lang/String;I)V
    .registers 19
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 3678
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v3

    if-nez v3, :cond_d

    .line 3679
    return-void

    .line 3681
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIntegerTunningParameter:  parameterName- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  value:- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3682
    if-nez v1, :cond_37

    .line 3683
    const-string/jumbo v3, "setIntegerTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3684
    return-void

    .line 3687
    :cond_37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_358

    :cond_41
    goto :goto_6a

    :sswitch_42
    const-string v3, "Cnt_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x2

    goto :goto_6b

    :sswitch_4c
    const-string v3, "SkipTuningValue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x3

    goto :goto_6b

    :sswitch_56
    const-string v3, "SNR_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    move v3, v6

    goto :goto_6b

    :sswitch_60
    const-string v3, "RSSI_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    move v3, v7

    goto :goto_6b

    :goto_6a
    move v3, v8

    :goto_6b
    packed-switch v3, :pswitch_data_36a

    .line 3701
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v9, 0x5

    const-string v10, " for chip vendor - "

    const-string/jumbo v11, "setIntegerTunningParameter() : invalid parameterName - "

    if-eq v3, v9, :cond_310

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v12, 0xa

    if-ne v3, v12, :cond_90

    goto/16 :goto_310

    .line 3698
    :pswitch_80
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->SkipTuning_Value()V

    .line 3699
    return-void

    .line 3695
    :pswitch_84
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setCnt_th(I)V

    .line 3696
    return-void

    .line 3692
    :pswitch_88
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSNR_th(I)V

    .line 3693
    return-void

    .line 3689
    :pswitch_8c
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setRSSI_th(I)V

    .line 3690
    return-void

    .line 3714
    :cond_90
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v4, 0x9

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1f2

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v4, :cond_a1

    goto/16 :goto_1f2

    .line 3770
    :cond_a1
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v15, :cond_fc

    .line 3771
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_376

    :cond_ac
    goto :goto_cb

    :sswitch_ad
    const-string v3, "FrequencyOffset_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    move v5, v7

    goto :goto_cc

    :sswitch_b7
    const-string v3, "PilotPower_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    const/4 v5, 0x2

    goto :goto_cc

    :sswitch_c1
    const-string v3, "NoisePower_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    move v5, v6

    goto :goto_cc

    :goto_cb
    move v5, v8

    :goto_cc
    packed-switch v5, :pswitch_data_384

    .line 3782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_fa

    .line 3779
    :pswitch_ee
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setPilotPowerThreshold(I)V

    .line 3780
    goto :goto_fa

    .line 3776
    :pswitch_f2
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setNoisePowerThreshold(I)V

    .line 3777
    goto :goto_fa

    .line 3773
    :pswitch_f6
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setFrequencyOffsetThreshold(I)V

    .line 3774
    nop

    .line 3783
    :goto_fa
    goto/16 :goto_357

    .line 3784
    :cond_fc
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v14, :cond_148

    .line 3785
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_38e

    :cond_107
    goto :goto_11b

    :pswitch_108
    const-string v3, "IFCount2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    goto :goto_11c

    :pswitch_111
    const-string v3, "IFCount1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    move v6, v7

    goto :goto_11c

    :goto_11b
    move v6, v8

    :goto_11c
    packed-switch v6, :pswitch_data_396

    .line 3793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_146

    .line 3790
    :pswitch_13e
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setIFCount2(I)V

    .line 3791
    goto :goto_146

    .line 3787
    :pswitch_142
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setIFCount1(I)V

    .line 3788
    nop

    .line 3795
    :goto_146
    goto/16 :goto_357

    .line 3796
    :cond_148
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v13, :cond_1cd

    .line 3797
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_39e

    :cond_153
    goto :goto_190

    :sswitch_154
    const-string v3, "BlendPAMD_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    move v4, v5

    goto :goto_191

    :sswitch_15e
    const-string v3, "ATJCofig"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    move v4, v9

    goto :goto_191

    :sswitch_168
    const-string v3, "BlendRSSI_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    const/4 v4, 0x3

    goto :goto_191

    :sswitch_172
    const-string v3, "SeekSMG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    move v4, v6

    goto :goto_191

    :sswitch_17c
    const-string v3, "Softmute_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    const/4 v4, 0x2

    goto :goto_191

    :sswitch_186
    const-string v3, "SeekDesenseRSSI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    move v4, v7

    goto :goto_191

    :goto_190
    move v4, v8

    :goto_191
    packed-switch v4, :pswitch_data_3b8

    .line 3817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1cb

    .line 3814
    :pswitch_1b3
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setATJ(I)V

    .line 3815
    goto :goto_1cb

    .line 3811
    :pswitch_1b7
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendPAMD_th(I)V

    .line 3812
    goto :goto_1cb

    .line 3808
    :pswitch_1bb
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendRSSI_th(I)V

    .line 3809
    goto :goto_1cb

    .line 3805
    :pswitch_1bf
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSoftmute_th(I)V

    .line 3806
    goto :goto_1cb

    .line 3802
    :pswitch_1c3
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekSMG(I)V

    .line 3803
    goto :goto_1cb

    .line 3799
    :pswitch_1c7
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekDesenseRSSI(I)V

    .line 3800
    nop

    .line 3819
    :goto_1cb
    goto/16 :goto_357

    .line 3821
    :cond_1cd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chipvendor - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_357

    .line 3716
    :cond_1f2
    :goto_1f2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3c8

    :cond_1f9
    goto/16 :goto_2a6

    :sswitch_1fb
    const-string v3, "AFRMSSIThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v13

    goto/16 :goto_2a7

    :sswitch_206
    const-string v3, "RMSSIFirstStage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v15

    goto/16 :goto_2a7

    :sswitch_211
    const-string v3, "SNR_th_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const/16 v4, 0xc

    goto/16 :goto_2a7

    :sswitch_21d
    const-string v3, "CFOTh12"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v9

    goto/16 :goto_2a7

    :sswitch_228
    const-string v3, "SINRThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v5

    goto/16 :goto_2a7

    :sswitch_233
    const-string v3, "SINRSamples"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v6

    goto/16 :goto_2a7

    :sswitch_23e
    const-string v3, "OnChannelThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const/4 v4, 0x2

    goto/16 :goto_2a7

    :sswitch_249
    const-string v3, "BlendRmssi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const/16 v4, 0xe

    goto :goto_2a7

    :sswitch_254
    const-string v3, "RSSI_th_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const/16 v4, 0xb

    goto :goto_2a7

    :sswitch_25f
    const-string v3, "OffChannelThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const/4 v4, 0x3

    goto :goto_2a7

    :sswitch_269
    const-string v3, "Cnt_th_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const/16 v4, 0xd

    goto :goto_2a7

    :sswitch_274
    const-string v3, "SINRFirstStage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v14

    goto :goto_2a7

    :sswitch_27e
    const-string v3, "BlendSinr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    const/16 v4, 0xf

    goto :goto_2a7

    :sswitch_289
    const-string v3, "SearchAlgoType"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v7

    goto :goto_2a7

    :sswitch_293
    const-string v3, "GoodChannelRMSSIThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move v4, v12

    goto :goto_2a7

    :sswitch_29d
    const-string v3, "AFRMSSISamples"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    goto :goto_2a7

    :goto_2a6
    move v4, v8

    :goto_2a7
    packed-switch v4, :pswitch_data_40a

    .line 3767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_30f

    .line 3764
    :pswitch_2c9
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendSinr(I)V

    .line 3765
    goto :goto_30f

    .line 3761
    :pswitch_2cd
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendRmssi(I)V

    .line 3762
    goto :goto_30f

    .line 3758
    :pswitch_2d1
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setCnt_th_2(I)V

    .line 3759
    goto :goto_30f

    .line 3755
    :pswitch_2d5
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSNR_th_2(I)V

    .line 3756
    goto :goto_30f

    .line 3752
    :pswitch_2d9
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setRSSI_th_2(I)V

    .line 3753
    goto :goto_30f

    .line 3749
    :pswitch_2dd
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    .line 3750
    goto :goto_30f

    .line 3746
    :pswitch_2e1
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    .line 3747
    goto :goto_30f

    .line 3743
    :pswitch_2e5
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    .line 3744
    goto :goto_30f

    .line 3740
    :pswitch_2e9
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    .line 3741
    goto :goto_30f

    .line 3737
    :pswitch_2ed
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    .line 3738
    goto :goto_30f

    .line 3734
    :pswitch_2f1
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    .line 3735
    goto :goto_30f

    .line 3731
    :pswitch_2f5
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    .line 3732
    goto :goto_30f

    .line 3727
    :pswitch_2f9
    iget-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_30f

    .line 3728
    iget-object v3, v0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3, v2}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    goto :goto_30f

    .line 3724
    :pswitch_303
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    .line 3725
    goto :goto_30f

    .line 3721
    :pswitch_307
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    .line 3722
    goto :goto_30f

    .line 3718
    :pswitch_30b
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    .line 3719
    nop

    .line 3769
    :cond_30f
    :goto_30f
    goto :goto_357

    .line 3703
    :cond_310
    :goto_310
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_42e

    :cond_317
    goto :goto_32b

    :sswitch_318
    const-string v3, "SeekQA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_317

    goto :goto_32c

    :sswitch_321
    const-string v3, "SeekDC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_317

    move v6, v7

    goto :goto_32c

    :goto_32b
    move v6, v8

    :goto_32c
    packed-switch v6, :pswitch_data_438

    .line 3711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_356

    .line 3708
    :pswitch_34e
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekQA(I)V

    .line 3709
    goto :goto_356

    .line 3705
    :pswitch_352
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekDC(I)V

    .line 3706
    nop

    .line 3713
    :goto_356
    nop

    .line 3823
    :goto_357
    return-void

    :sswitch_data_358
    .sparse-switch
        -0x7bea88a4 -> :sswitch_60
        -0x6debe1a4 -> :sswitch_56
        -0x3ba8f63 -> :sswitch_4c
        0x7898f92a -> :sswitch_42
    .end sparse-switch

    :pswitch_data_36a
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_80
    .end packed-switch

    :sswitch_data_376
    .sparse-switch
        -0x793b6ef8 -> :sswitch_c1
        -0x2cd46d5a -> :sswitch_b7
        0x40effc4 -> :sswitch_ad
    .end sparse-switch

    :pswitch_data_384
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
    .end packed-switch

    :pswitch_data_38e
    .packed-switch -0x712e4381
        :pswitch_111
        :pswitch_108
    .end packed-switch

    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_142
        :pswitch_13e
    .end packed-switch

    :sswitch_data_39e
    .sparse-switch
        -0x673c1014 -> :sswitch_186
        -0x54753130 -> :sswitch_17c
        -0x2740286b -> :sswitch_172
        -0x54ba1f5 -> :sswitch_168
        0x3de29be1 -> :sswitch_15e
        0x71d9d97a -> :sswitch_154
    .end sparse-switch

    :pswitch_data_3b8
    .packed-switch 0x0
        :pswitch_1c7
        :pswitch_1c3
        :pswitch_1bf
        :pswitch_1bb
        :pswitch_1b7
        :pswitch_1b3
    .end packed-switch

    :sswitch_data_3c8
    .sparse-switch
        -0x7795fd00 -> :sswitch_29d
        -0x6097aadd -> :sswitch_293
        -0x57b635eb -> :sswitch_289
        -0x53297d95 -> :sswitch_27e
        -0x4bc61798 -> :sswitch_274
        -0x49c09da3 -> :sswitch_269
        -0x401789e9 -> :sswitch_25f
        -0x2b6ae3f1 -> :sswitch_254
        -0x121267c3 -> :sswitch_249
        0x2487eac7 -> :sswitch_23e
        0x3471400f -> :sswitch_233
        0x3eabfaf1 -> :sswitch_228
        0x5435ba01 -> :sswitch_21d
        0x5d86030f -> :sswitch_211
        0x6cdb6a9c -> :sswitch_206
        0x777fc5a2 -> :sswitch_1fb
    .end sparse-switch

    :pswitch_data_40a
    .packed-switch 0x0
        :pswitch_30b
        :pswitch_307
        :pswitch_303
        :pswitch_2f9
        :pswitch_2f5
        :pswitch_2f1
        :pswitch_2ed
        :pswitch_2e9
        :pswitch_2e5
        :pswitch_2e1
        :pswitch_2dd
        :pswitch_2d9
        :pswitch_2d5
        :pswitch_2d1
        :pswitch_2cd
        :pswitch_2c9
    .end packed-switch

    :sswitch_data_42e
    .sparse-switch
        -0x6c9efae9 -> :sswitch_321
        -0x6c9ef958 -> :sswitch_318
    .end sparse-switch

    :pswitch_data_438
    .packed-switch 0x0
        :pswitch_352
        :pswitch_34e
    .end packed-switch
.end method

.method public setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] setListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2005
    if-eqz p1, :cond_56

    .line 2006
    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_26

    .line 2008
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    .line 2010
    :cond_26
    new-instance v1, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    .line 2011
    .local v1, "record":Lcom/android/server/FMRadioService$ListenerRecord;
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no of listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2013
    .end local v1    # "record":Lcom/android/server/FMRadioService$ListenerRecord;
    monitor-exit v0

    goto :goto_56

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_1b .. :try_end_55} :catchall_53

    throw v1

    .line 2015
    :cond_56
    :goto_56
    return-void
.end method

.method public setLongTunningParameter(Ljava/lang/String;J)V
    .registers 12
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 3936
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3937
    return-void

    .line 3939
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long setLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3940
    if-nez p1, :cond_31

    .line 3941
    const-string/jumbo v0, "setLongTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 3942
    return-void

    .line 3945
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_ea

    :cond_3c
    goto :goto_5b

    :sswitch_3d
    const-string v0, "SeekRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_5c

    :sswitch_47
    const-string v0, "SeekSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v2

    goto :goto_5c

    :sswitch_51
    const-string v0, "DEConstant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v3

    goto :goto_5c

    :goto_5b
    move v0, v4

    :goto_5c
    const-string v5, " for chip vendor - "

    const-string/jumbo v6, "setLongTunningParameter() : invalid parameterName - "

    packed-switch v0, :pswitch_data_f8

    .line 3956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_8f

    .line 3953
    :pswitch_83
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    .line 3954
    goto :goto_8f

    .line 3950
    :pswitch_87
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekSNR(J)V

    .line 3951
    goto :goto_8f

    .line 3947
    :pswitch_8b
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekRSSI(J)V

    .line 3948
    nop

    .line 3959
    :goto_8f
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x7

    if-ne v0, v7, :cond_e8

    .line 3960
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_102

    :cond_9b
    goto :goto_b9

    :sswitch_9c
    const-string v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    move v1, v2

    goto :goto_ba

    :sswitch_a6
    const-string v0, "SoftStereoBlendRef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    move v1, v3

    goto :goto_ba

    :sswitch_b0
    const-string v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    goto :goto_ba

    :goto_b9
    move v1, v4

    :goto_ba
    packed-switch v1, :pswitch_data_110

    .line 3971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_e8

    .line 3968
    :pswitch_dc
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendRef(J)V

    .line 3969
    goto :goto_e8

    .line 3965
    :pswitch_e0
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftMuteCoeff(J)V

    .line 3966
    goto :goto_e8

    .line 3962
    :pswitch_e4
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendCoeff(J)V

    .line 3963
    nop

    .line 3975
    :cond_e8
    :goto_e8
    return-void

    nop

    :sswitch_data_ea
    .sparse-switch
        -0x4409c0bb -> :sswitch_51
        -0x27402841 -> :sswitch_47
        0x3f3abeef -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_87
        :pswitch_83
    .end packed-switch

    :sswitch_data_102
    .sparse-switch
        -0x28a33b56 -> :sswitch_b0
        0x681de184 -> :sswitch_a6
        0x69f7a436 -> :sswitch_9c
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_e0
        :pswitch_dc
    .end packed-switch
.end method

.method public setMono()V
    .registers 3

    .line 3020
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3021
    return-void

    .line 3022
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_11

    .line 3023
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setMono()V

    goto :goto_17

    .line 3025
    :cond_11
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setSoundMode(I)Z

    .line 3026
    :goto_17
    return-void
.end method

.method public setRecordMode(Z)V
    .registers 8
    .param p1, "isRecord"    # Z

    .line 2582
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_5

    .line 2583
    return-void

    .line 2585
    :cond_5
    const/4 v0, 0x0

    .line 2586
    .local v0, "value":I
    if-eqz p1, :cond_c

    .line 2587
    const-string v1, "fm_record=1"

    .line 2588
    .local v1, "keyValuePairs":Ljava/lang/String;
    const/4 v0, 0x1

    goto :goto_e

    .line 2590
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_c
    const-string v1, "fm_record=0"

    .line 2592
    .restart local v1    # "keyValuePairs":Ljava/lang/String;
    :goto_e
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    .line 2594
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1a

    .line 2595
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2597
    :cond_1a
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v2

    .line 2598
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_avc_mode"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_30

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    :goto_31
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    .line 2599
    if-eqz v5, :cond_4d

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4d

    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v3, :cond_4d

    .line 2600
    const-string v3, " setRecordMode avrcp on"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2601
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    if-eqz v3, :cond_4d

    .line 2602
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    const-wide/16 v4, 0xb

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    .line 2604
    :cond_4d
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3, v0}, Lcom/android/server/FMPlayerNativeBase;->setRecordMode(I)V

    .line 2605
    return-void
.end method

.method public setSoftmute(Z)V
    .registers 3
    .param p1, "setSoftmute"    # Z

    .line 3378
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_9

    .line 3379
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute(Z)V

    .line 3380
    :cond_9
    return-void
.end method

.method public setSpeakerOn(Z)V
    .registers 8
    .param p1, "bSpeakerOn"    # Z

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSpeakerOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2519
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_80

    .line 2520
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2521
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getTunedFrequency()I

    move-result v0

    .line 2522
    .local v0, "freqExt":I
    if-eqz p1, :cond_36

    .line 2524
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBase;->off()Z

    .line 2525
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    goto :goto_40

    .line 2528
    :cond_36
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    .line 2529
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBase;->on()Z

    .line 2531
    :goto_40
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setRssiThreshold(I)V

    .line 2532
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setBand(I)Z

    .line 2533
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setChannelSpacing(I)Z

    .line 2534
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_68

    .line 2535
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekDC(I)Z

    .line 2536
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekQA(I)Z

    .line 2538
    :cond_68
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v3, :cond_71

    .line 2539
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBase;->muteOn()V

    .line 2540
    :cond_71
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v0}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 2541
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-ne v3, v2, :cond_7f

    .line 2542
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    .line 2544
    .end local v0    # "freqExt":I
    :cond_7f
    goto :goto_85

    .line 2546
    :cond_80
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSpeakerOn(Z)V

    .line 2549
    :cond_85
    :goto_85
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setSlimbusEnable(I)V

    .line 2551
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v3, :cond_95

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_b7

    .line 2553
    :cond_95
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    if-eqz v0, :cond_ae

    if-eqz p1, :cond_9d

    move v0, v4

    goto :goto_9e

    :cond_9d
    move v0, v5

    :goto_9e
    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->isPathSupportSoftmute(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 2554
    const-string/jumbo v0, "set softmute : true"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    goto :goto_b7

    .line 2557
    :cond_ae
    const-string/jumbo v0, "set softmute : false"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2558
    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    .line 2562
    :cond_b7
    :goto_b7
    const/4 v0, 0x6

    if-eqz p1, :cond_cd

    .line 2563
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v0, :cond_c7

    .line 2564
    const-string/jumbo v0, "set_fm_speaker=1"

    .line 2565
    .local v0, "keyValuePairs":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_df

    .line 2567
    .end local v0    # "keyValuePairs":Ljava/lang/String;
    :cond_c7
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    goto :goto_df

    .line 2570
    :cond_cd
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v0, :cond_da

    .line 2571
    const-string/jumbo v0, "set_fm_speaker=0"

    .line 2572
    .restart local v0    # "keyValuePairs":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_df

    .line 2574
    .end local v0    # "keyValuePairs":Ljava/lang/String;
    :cond_da
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    .line 2577
    :goto_df
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setSlimbusEnable(I)V

    .line 2579
    return-void
.end method

.method public setStereo()V
    .registers 3

    .line 3011
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3012
    return-void

    .line 3013
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_11

    .line 3014
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    goto :goto_17

    .line 3016
    :cond_11
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setSoundMode(I)Z

    .line 3017
    :goto_17
    return-void
.end method

.method public setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 4010
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4011
    return-void

    .line 4013
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4014
    if-nez p1, :cond_31

    .line 4015
    const-string/jumbo v0, "setStringTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4016
    return-void

    .line 4019
    :cond_31
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, " for chip vendor - "

    const-string/jumbo v4, "setStringTunningParameter() : invalid parameterName - "

    const/4 v5, -0x1

    if-eq v0, v1, :cond_b6

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_45

    goto/16 :goto_b6

    .line 4029
    :cond_45
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_92

    .line 4030
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_f0

    :cond_52
    goto :goto_66

    :sswitch_53
    const-string v0, "FakeChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_67

    :sswitch_5c
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v2, 0x1

    goto :goto_67

    :goto_66
    move v2, v5

    :goto_67
    packed-switch v2, :pswitch_data_fa

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_91

    .line 4035
    :pswitch_89
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setDeSenseList(Ljava/lang/String;)V

    .line 4036
    goto :goto_91

    .line 4032
    :pswitch_8d
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFakeChannel(Ljava/lang/String;)V

    .line 4033
    nop

    .line 4040
    :goto_91
    goto :goto_ef

    .line 4042
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_ef

    .line 4021
    :cond_b6
    :goto_b6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_102

    :cond_bd
    goto :goto_c7

    :pswitch_be
    const-string v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    goto :goto_c8

    :goto_c7
    move v2, v5

    :goto_c8
    packed-switch v2, :pswitch_data_108

    .line 4026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_ee

    .line 4023
    :pswitch_ea
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setHybridSearch(Ljava/lang/String;)V

    .line 4024
    nop

    .line 4028
    :goto_ee
    nop

    .line 4044
    :goto_ef
    return-void

    :sswitch_data_f0
    .sparse-switch
        -0x7f620235 -> :sswitch_5c
        -0x35ee1432 -> :sswitch_53
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_89
    .end packed-switch

    :pswitch_data_102
    .packed-switch -0x12b0651c
        :pswitch_be
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_ea
    .end packed-switch
.end method

.method public setVolume(J)V
    .registers 12
    .param p1, "val"    # J

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set chipset Volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2461
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_1c

    .line 2462
    return-void

    .line 2464
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_27

    .line 2465
    const-string/jumbo v0, "setVolume :: unset on ScanProgress"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2466
    return-void

    .line 2469
    :cond_27
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_db

    const-wide/16 v2, 0xf

    cmp-long v4, p1, v2

    if-lez v4, :cond_35

    goto/16 :goto_db

    .line 2471
    :cond_35
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v4

    .line 2472
    .local v4, "type":I
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_avc_mode"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v7, :cond_4d

    move v5, v7

    goto :goto_4e

    :cond_4d
    move v5, v6

    :goto_4e
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    .line 2475
    const/16 v8, 0x8

    if-eqz v5, :cond_75

    if-ne v4, v8, :cond_75

    :try_start_56
    sget-boolean v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v5, :cond_75

    .line 2476
    const-string v5, "Avrcp on"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2477
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    if-nez v5, :cond_8a

    .line 2478
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v5, :cond_6d

    .line 2479
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    goto :goto_8a

    .line 2481
    :cond_6d
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/PlayerExternalChipsetBase;->setVolume(I)Z

    goto :goto_8a

    .line 2483
    :cond_75
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v2, :cond_81

    .line 2484
    long-to-int v2, p1

    .line 2485
    .local v2, "value":I
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setVolume(I)Z

    .line 2486
    nop

    .end local v2    # "value":I
    goto :goto_8a

    .line 2487
    :cond_81
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v8, :cond_8a

    .line 2488
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    .line 2490
    :cond_8a
    :goto_8a
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v2

    if-nez v2, :cond_b2

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v2

    if-eqz v2, :cond_99

    goto :goto_b2

    .line 2496
    :cond_99
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_bf

    .line 2497
    cmp-long v0, p1, v0

    if-gtz v0, :cond_aa

    .line 2498
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v0, :cond_bf

    .line 2499
    invoke-virtual {p0, v7}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_bf

    .line 2500
    :cond_aa
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v0, :cond_bf

    .line 2501
    invoke-virtual {p0, v6}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_bf

    .line 2492
    :cond_b2
    :goto_b2
    const-string/jumbo v0, "setVolume :: AllSoundOff or DND is enabled. So FMRadio is muted."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2493
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v0, :cond_bf

    .line 2494
    invoke-virtual {p0, v7}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_bf
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_bf} :catch_c1

    .line 2507
    :cond_bf
    :goto_bf
    nop

    .line 2508
    return-void

    .line 2504
    :catch_c1
    move-exception v0

    .line 2505
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException in setVolume() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    return-void

    .line 2470
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "type":I
    :cond_db
    :goto_db
    return-void
.end method

.method public tune(J)V
    .registers 5
    .param p1, "freq"    # J

    .line 1854
    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    const-string/jumbo v1, "tune"

    if-eqz v0, :cond_1c

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1f

    .line 1857
    :cond_1c
    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1858
    :goto_1f
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1859
    return-void

    .line 1860
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_2f

    goto :goto_58

    .line 1867
    :cond_2f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1868
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_40

    .line 1869
    long-to-int v0, p1

    div-int/lit8 v0, v0, 0xa

    .line 1870
    .local v0, "freqExt":I
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 1871
    .end local v0    # "freqExt":I
    goto :goto_45

    .line 1872
    :cond_40
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    .line 1875
    :goto_45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    .line 1877
    const-string/jumbo v0, "tune notify event tune"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1878
    const/4 v0, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 1879
    return-void

    .line 1861
    :cond_58
    :goto_58
    const-string/jumbo v0, "tune can not be processed becuase FM chipset is either off or off in process"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 1862
    return-void
.end method
