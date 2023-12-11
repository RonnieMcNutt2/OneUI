.class public abstract Lcom/android/server/PlayerExternalChipsetBes;
.super Lcom/android/server/PlayerExternalChipsetBase;
.source "PlayerExternalChipsetBes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;
    }
.end annotation


# static fields
.field public static final FEATURE_SUPPORT_RDS:Z

.field public static final GET:I = 0xa2

.field public static final GET_CURRENT_CHANNEL:I = 0xd

.field public static final GET_CURRENT_FM_BAND:I = 0x3

.field public static final GET_CURRENT_FM_IC_INFO:I = 0x10

.field public static final GET_CURRENT_RSSI:I = 0x4

.field public static final GET_CURRENT_SEEKING_DC_THRESHOLD:I = 0xe

.field public static final GET_CURRENT_SEEKING_SPIKING_THRESHOLD:I = 0xf

.field public static final GET_CURRENT_SPACING:I = 0x5

.field public static final GET_CURRENT_VOLUME:I = 0x8

.field public static final GET_DATA_LENGTH:I = 0x2

.field public static final GET_FM_IC_NO:I = 0x1

.field public static final GET_FM_IC_POWER_ON_STATE:I = 0x2

.field public static final GET_FM_INDEX:I = 0x0

.field public static final GET_FM_PROTOCOL_VERSION:I = 0x12

.field public static final GET_FM_RECORDING_MODE_STATUS:I = 0x11

.field public static final GET_FORCED_MONO_STATE:I = 0x7

.field public static final GET_MUTE_STATE:I = 0x6

.field public static final GET_RDS_STATUS:I = 0xa

.field public static final QUERY:I = 0xa3

.field public static final QUERY_RESULT_FAIL:I = 0x0

.field public static final QUERY_RESULT_RDS:I = 0x3

.field public static final QUERY_RESULT_SEEK:I = 0x2

.field public static final QUERY_RESULT_TUNE:I = 0x1

.field public static final READ:I = 0xc0

.field public static final SET:I = 0xa1

.field public static final SET_CHANNEL:I = 0x9

.field public static final SET_CHAN_RSSI_TH:I = 0x2

.field public static final SET_CHAN_SPACING:I = 0x3

.field public static final SET_DATA_LENGTH:I = 0x1

.field public static final SET_DC_THRES:I = 0xb

.field public static final SET_FM_BAND:I = 0x1

.field public static final SET_FM_IC_POWER_OFF:I = 0x0

.field public static final SET_FM_IC_POWER_ON:I = 0x1

.field public static final SET_FM_IC_RECORDING_POWER_OFF:I = 0x0

.field public static final SET_FM_IC_RECORDING_POWER_ON:I = 0x1

.field public static final SET_MONO_MODE:I = 0x6

.field public static final SET_MUTE:I = 0x4

.field public static final SET_POWER_STATE:I = 0x0

.field public static final SET_RDS:I = 0xa

.field public static final SET_RECORDING_MODE:I = 0xe

.field public static final SET_SEEK_DOWN:I = 0x2

.field public static final SET_SEEK_START:I = 0x7

.field public static final SET_SEEK_STOP:I = 0x8

.field public static final SET_SEEK_UP:I = 0x1

.field public static final SET_SPIKE_THRES:I = 0xc

.field public static final SET_TEST_MODE:I = 0xd

.field public static final SET_TEST_MODE_OFF:I = 0x0

.field public static final SET_TEST_MODE_ON:I = 0x1

.field public static final SET_VOLUME:I = 0x5

.field public static final WRITE:I = 0x40


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCDCInterface:Landroid/hardware/usb/UsbInterface;

.field protected mCurrentRssi:J

.field protected mIsGettingRds:Z

.field protected mIsRDSEnabled:Z

.field private mIsRunning:Z

.field protected mIsScanning:Z

.field protected mSeekFreq:I

.field private notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

.field protected rdsParser:Lcom/android/server/RDSParser;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryInfo(Lcom/android/server/PlayerExternalChipsetBes;)[B
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBes;->queryInfo()[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_RDS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PlayerExternalChipsetBes;->FEATURE_SUPPORT_RDS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Lcom/android/server/PlayerExternalChipsetBase;-><init>()V

    .line 15
    const-string v0, "FMRadioBestechnic"

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRDSEnabled:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mSeekFreq:I

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    .line 78
    invoke-static {}, Lcom/android/server/RDSParser;->getInstance()Lcom/android/server/RDSParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    return-void
.end method

.method public static bytesToInt([B)I
    .registers 4
    .param p0, "data"    # [B

    .line 339
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 340
    const/4 v0, -0x1

    return v0

    .line 342
    :cond_6
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 343
    .local v0, "ret":I
    return v0
.end method

.method private queryInfo()[B
    .registers 14

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 88
    .local v0, "buffer":[B
    const/4 v1, 0x0

    move v9, v1

    .local v9, "ret":I
    :goto_6
    array-length v1, v0

    if-ge v9, v1, :cond_f

    .line 89
    const/4 v1, -0x1

    aput-byte v1, v0, v9

    .line 88
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 91
    :cond_f
    sget-boolean v1, Lcom/android/server/PlayerExternalChipsetBes;->FEATURE_SUPPORT_RDS:Z

    if-nez v1, :cond_8c

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "channel":I
    const/4 v2, 0x1

    .line 94
    .local v2, "running":Z
    const/4 v3, 0x0

    move v10, v2

    move v11, v3

    move v12, v9

    move v9, v1

    .end local v1    # "channel":I
    .end local v2    # "running":Z
    .local v9, "channel":I
    .local v10, "running":Z
    .local v11, "timeout":I
    .local v12, "ret":I
    :goto_1a
    const/16 v1, 0x190

    if-ge v11, v1, :cond_8b

    .line 95
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xc0

    const/16 v3, 0xa3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xfa0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v12

    .line 96
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v1, v2}, Lcom/android/server/PlayerExternalChipsetBes;->threadSleep(J)V

    .line 97
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int v9, v1, v2

    .line 99
    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_51

    .line 100
    const/16 v2, 0x12c

    if-ge v11, v2, :cond_72

    .line 101
    const/16 v11, 0x12c

    goto :goto_72

    .line 103
    :cond_51
    iget-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsTuning:Z

    if-eqz v2, :cond_62

    .line 104
    aget-byte v2, v0, v3

    if-ne v2, v1, :cond_72

    .line 105
    iget v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCmdTuneFreq:I

    if-eq v9, v2, :cond_5f

    move v2, v1

    goto :goto_60

    :cond_5f
    move v2, v3

    :goto_60
    move v10, v2

    goto :goto_72

    .line 107
    :cond_62
    iget-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsSeeking:Z

    if-eqz v2, :cond_72

    .line 108
    aget-byte v2, v0, v3

    if-nez v2, :cond_72

    .line 109
    iget v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mPreviousTuneFreq:I

    if-ne v9, v2, :cond_70

    move v2, v1

    goto :goto_71

    :cond_70
    move v2, v3

    :goto_71
    move v10, v2

    .line 113
    :cond_72
    :goto_72
    if-eqz v10, :cond_83

    iget-boolean v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsSeekTuneing:Z

    if-eqz v2, :cond_83

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_83

    goto :goto_84

    :cond_83
    move v1, v3

    :goto_84
    move v10, v1

    .line 114
    if-nez v10, :cond_88

    .line 115
    goto :goto_8b

    .line 94
    :cond_88
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 117
    .end local v9    # "channel":I
    .end local v10    # "running":Z
    .end local v11    # "timeout":I
    :cond_8b
    :goto_8b
    goto :goto_a2

    .line 118
    .end local v12    # "ret":I
    .local v9, "ret":I
    :cond_8c
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v2, 0xc0

    const/16 v3, 0xa3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xfa0

    move-object v6, v0

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v12

    .line 119
    .end local v9    # "ret":I
    .restart local v12    # "ret":I
    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/android/server/PlayerExternalChipsetBes;->threadSleep(J)V

    .line 121
    :goto_a2
    if-lez v12, :cond_a6

    move-object v1, v0

    goto :goto_a7

    :cond_a6
    const/4 v1, 0x0

    :goto_a7
    return-object v1
.end method


# virtual methods
.method public getCurrentRSSI()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    return-wide v0
.end method

.method protected initEndpointBes()V
    .registers 8

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interface Count - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " End ID - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMRadioBestechnic"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_50

    .line 127
    return-void

    .line 129
    :cond_50
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 130
    .local v0, "usbInterface":Landroid/hardware/usb/UsbInterface;
    if-eqz v0, :cond_f7

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "claim HID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2, v0, v3}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 133
    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    .line 135
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_84
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v2, v3, :cond_f1

    .line 136
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 137
    .local v3, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_f8

    goto :goto_ee

    .line 145
    :pswitch_96
    const-string v4, "found USB endpoint the Type is  USB_ENDPOINT_XFER_INT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const-string v5, "endpoint.getEndpointNumber:"

    if-nez v4, :cond_c3

    .line 147
    const-string v4, "found USB_DIR_OUT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_ee

    .line 150
    :cond_c3
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v6, 0x80

    if-ne v4, v6, :cond_ee

    .line 151
    const-string v4, "found USB_DIR_IN"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 143
    :pswitch_eb
    goto :goto_ee

    .line 141
    :pswitch_ec
    goto :goto_ee

    .line 139
    :pswitch_ed
    nop

    .line 135
    .end local v3    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    :cond_ee
    :goto_ee
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .end local v2    # "j":I
    :cond_f1
    goto :goto_f7

    .line 159
    :cond_f2
    const-string v2, "Cannot claim interface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_f7
    :goto_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_96
    .end packed-switch
.end method

.method protected releaseInterfaceBes()V
    .registers 3

    .line 182
    const-string v0, "FMRadioBestechnic"

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_1a

    .line 184
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mCDCInterface:Landroid/hardware/usb/UsbInterface;

    .line 188
    :cond_1a
    return-void
.end method

.method protected startNotifyThreadBes()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_1d

    .line 166
    new-instance v0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    invoke-direct {v0, p0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;-><init>(Lcom/android/server/PlayerExternalChipsetBes;)V

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    .line 167
    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->start()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->mIsRunning:Z

    .line 169
    const-string v0, "FMRadioBestechnic"

    const-string/jumbo v1, "start Notify Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1d
    return-void
.end method

.method protected startsWith([B[B)Z
    .registers 8
    .param p1, "data"    # [B
    .param p2, "param"    # [B

    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 304
    if-nez p2, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 305
    :cond_8
    if-nez p2, :cond_b

    .line 306
    return v1

    .line 307
    :cond_b
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_10

    .line 308
    return v0

    .line 310
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, p2

    if-ge v2, v3, :cond_1e

    .line 311
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_1b

    .line 312
    return v0

    .line 310
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 316
    .end local v2    # "i":I
    :cond_1e
    return v1
.end method

.method protected stopNotifyThreadBes()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    if-eqz v0, :cond_11

    .line 175
    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->terminate()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes;->notifyWorkerThread:Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;

    .line 177
    const-string v0, "FMRadioBestechnic"

    const-string v1, "Notify Thread is stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_11
    return-void
.end method

.method protected threadSleep(J)V
    .registers 6
    .param p1, "ms"    # J

    .line 322
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 325
    goto :goto_c

    .line 323
    :catch_4
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FMRadioBestechnic"

    const-string v2, "Thread sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_c
    return-void
.end method

.method protected toHex([B)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # [B

    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_25

    .line 332
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 335
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
