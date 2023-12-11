.class public Landroid/telephony/ims/compat/feature/MMTelFeature;
.super Landroid/telephony/ims/compat/feature/ImsFeature;
.source "MMTelFeature.java"


# instance fields
.field private final mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/MMTelFeature$1;-><init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    .line 59
    return-void
.end method


# virtual methods
.method public acknowledgeSms(IIII)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I

    .line 610
    return-void
.end method

.method public acknowledgeSmsReport(IIII)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I

    .line 616
    return-void
.end method

.method public acknowledgeSmsWithPdu(III[B)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "data"    # [B

    .line 640
    return-void
.end method

.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 403
    return-void
.end method

.method public changeAudioPath(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I

    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public endSession(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 369
    return-void
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .registers 2

    .line 52
    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v0
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 2

    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .registers 2

    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .registers 2

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsFormat(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I

    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .registers 2

    .line 463
    const/4 v0, 0x0

    return-object v0
.end method

.method public initImsSmsImplAdapter()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    return-void
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected(II)Z
    .registers 4
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .registers 2

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public onFeatureReady()V
    .registers 1

    .line 510
    return-void
.end method

.method public onFeatureRemoved()V
    .registers 1

    .line 517
    return-void
.end method

.method public onMemoryAvailable(II)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I

    .line 599
    return-void
.end method

.method public onSmsReady(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 628
    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 411
    return-void
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "dtmfEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    return-void
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B

    .line 586
    return-void
.end method

.method public setRetryCount(III)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "retryCount"    # I

    .line 592
    return-void
.end method

.method public setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 622
    return-void
.end method

.method public setSmsc(ILjava/lang/String;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 498
    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    return-void
.end method

.method public startLocalRingBackTone(III)I
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 4
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public stopLocalRingBackTone()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public turnOffIms()V
    .registers 1

    .line 483
    return-void
.end method

.method public turnOnIms()V
    .registers 1

    .line 477
    return-void
.end method
