.class public abstract Lcom/android/server/PlayerExternalChipsetBase;
.super Ljava/lang/Object;
.source "PlayerExternalChipsetBase.java"


# instance fields
.field protected mCmdTuneFreq:I

.field protected mIsSeekTuneing:Z

.field protected mIsSeeking:Z

.field protected mIsTuning:Z

.field protected mPreviousTuneFreq:I

.field protected mService:Lcom/android/server/FMRadioService;

.field protected mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field protected mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PlayerExternalChipsetBase;->mIsSeekTuneing:Z

    .line 23
    iput v0, p0, Lcom/android/server/PlayerExternalChipsetBase;->mCmdTuneFreq:I

    .line 24
    iput v0, p0, Lcom/android/server/PlayerExternalChipsetBase;->mPreviousTuneFreq:I

    return-void
.end method


# virtual methods
.method public abstract destruct()V
.end method

.method public abstract getBand()I
.end method

.method public abstract getChannelSpacing()I
.end method

.method public abstract getCurrentRSSI()J
.end method

.method public abstract getDEConstant()I
.end method

.method public abstract getIntTuningParameter(Ljava/lang/String;I)I
.end method

.method public abstract getLongTuningParameter(Ljava/lang/String;J)J
.end method

.method public abstract getRssiThreshold()I
.end method

.method public abstract getSeekDC()I
.end method

.method public abstract getSeekQA()I
.end method

.method public abstract getSoundMode()Z
.end method

.method public abstract getStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTunedFrequency()I
.end method

.method public abstract getVolume()I
.end method

.method public abstract init(Landroid/hardware/usb/UsbDevice;)V
.end method

.method public abstract initTuningParameters()V
.end method

.method public abstract isAfEnabled()Z
.end method

.method public abstract isOn()Z
.end method

.method public abstract isRdsEnabled()Z
.end method

.method public abstract muteOff()V
.end method

.method public abstract muteOn()V
.end method

.method public abstract off()Z
.end method

.method public abstract on()Z
.end method

.method public abstract searchAll()J
.end method

.method public abstract seekDown()J
.end method

.method public abstract seekUp()J
.end method

.method public abstract setAfEnable(Z)Z
.end method

.method public abstract setBand(I)Z
.end method

.method public abstract setChannelSpacing(I)Z
.end method

.method public abstract setDEConstant(I)Z
.end method

.method public abstract setIntTuningParameter(Ljava/lang/String;I)V
.end method

.method public abstract setLongTuningParameter(Ljava/lang/String;J)V
.end method

.method public abstract setRdsEnable(Z)Z
.end method

.method public abstract setRecordMode(Z)V
.end method

.method public abstract setRssiThreshold(I)V
.end method

.method public abstract setSeekDC(I)Z
.end method

.method public abstract setSeekQA(I)Z
.end method

.method public abstract setSoundMode(I)Z
.end method

.method public abstract setStringTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVolume(I)Z
.end method

.method public abstract startNotifyThread(Z)Z
.end method

.method public abstract stopNotifyThread(Z)V
.end method

.method public abstract stopSeek()Z
.end method

.method public abstract tune(I)V
.end method
