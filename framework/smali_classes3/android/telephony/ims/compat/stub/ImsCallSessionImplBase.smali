.class public Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 195
    return-void
.end method

.method public callSessionNotifyAnbr(III)V
    .registers 4
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 456
    return-void
.end method

.method public cancelTransferCall()V
    .registers 1

    .line 417
    return-void
.end method

.method public close()V
    .registers 1

    .line 81
    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 2
    .param p1, "transferToSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 227
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .registers 2
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 204
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 311
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .registers 2

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 132
    const/4 v0, -0x1

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 2

    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 260
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 322
    return-void
.end method

.method public isInCall()Z
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiparty()Z
    .registers 2

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public merge()V
    .registers 1

    .line 287
    return-void
.end method

.method public notifyReadyToHandleImsCallbacks()V
    .registers 1

    .line 432
    return-void
.end method

.method public reject(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 237
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .registers 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 333
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 272
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 3
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 344
    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 424
    return-void
.end method

.method public sendRtpHeaderExtensions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 441
    .local p1, "headerExtensions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 409
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 393
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .registers 2
    .param p1, "status"    # Z

    .line 401
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .registers 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 371
    return-void
.end method

.method public final setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase$ImsCallSessionListenerConverter;-><init>(Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/compat/stub/ImsCallSessionImplBase;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    .line 62
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 73
    return-void
.end method

.method public setMute(Z)V
    .registers 2
    .param p1, "muted"    # Z

    .line 150
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 167
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 184
    return-void
.end method

.method public startDtmf(C)V
    .registers 2
    .param p1, "c"    # C

    .line 355
    return-void
.end method

.method public stopDtmf()V
    .registers 1

    .line 362
    return-void
.end method

.method public terminate(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 248
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 219
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 299
    return-void
.end method
