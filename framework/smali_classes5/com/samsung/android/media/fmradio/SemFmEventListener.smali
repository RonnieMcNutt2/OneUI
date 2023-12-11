.class public Lcom/samsung/android/media/fmradio/SemFmEventListener;
.super Ljava/lang/Object;
.source "SemFmEventListener.java"


# static fields
.field private static final EVENT_AF_RECEIVED:I = 0xe

.field private static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field private static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field private static final EVENT_RDS_EVENT:I = 0xa

.field private static final EVENT_REC_FINISH:I = 0x11

.field private static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field private static final EVENT_VOLUME_LOCK:I = 0xf


# instance fields
.field callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;-><init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .line 291
    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;-><init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method


# virtual methods
.method public onAlternateFrequencyReceived(J)V
    .registers 3
    .param p1, "freq"    # J

    .line 174
    return-void
.end method

.method public onAlternateFrequencyStarted()V
    .registers 1

    .line 165
    return-void
.end method

.method public onChannelFound(J)V
    .registers 3
    .param p1, "frequency"    # J

    .line 44
    return-void
.end method

.method public onHeadsetConnected()V
    .registers 1

    .line 101
    return-void
.end method

.method public onHeadsetDisconnected()V
    .registers 1

    .line 108
    return-void
.end method

.method public onProgrammeIdentificationExtendedCountryCodesReceived(II)V
    .registers 3
    .param p1, "pi"    # I
    .param p2, "ecc"    # I

    .line 144
    return-void
.end method

.method public onRadioDataSystemDisabled()V
    .registers 1

    .line 158
    return-void
.end method

.method public onRadioDataSystemEnabled()V
    .registers 1

    .line 151
    return-void
.end method

.method public onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onRadioDisabled(I)V
    .registers 2
    .param p1, "reasonCode"    # I

    .line 85
    return-void
.end method

.method public onRadioEnabled()V
    .registers 1

    .line 76
    return-void
.end method

.method public onRadioTextPlusReceived(IIIIII)V
    .registers 7
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .line 135
    return-void
.end method

.method public onRecordingFinished()V
    .registers 1

    .line 188
    return-void
.end method

.method public onScanFinished([J)V
    .registers 2
    .param p1, "frequency"    # [J

    .line 69
    return-void
.end method

.method public onScanStarted()V
    .registers 1

    .line 51
    return-void
.end method

.method public onScanStopped([J)V
    .registers 2
    .param p1, "frequency"    # [J

    .line 60
    return-void
.end method

.method public onTuned(J)V
    .registers 3
    .param p1, "frequency"    # J

    .line 94
    return-void
.end method

.method public onVolumeLocked()V
    .registers 1

    .line 181
    return-void
.end method
