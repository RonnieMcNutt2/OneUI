.class Landroid/telephony/ims/compat/feature/MMTelFeature$1;
.super Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.source "MMTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/feature/MMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;


# direct methods
.method constructor <init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/compat/feature/MMTelFeature;

    .line 61
    iput-object p1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeSms(IIII)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 286
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/telephony/ims/compat/feature/MMTelFeature;->acknowledgeSms(IIII)V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public acknowledgeSmsReport(IIII)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 293
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/telephony/ims/compat/feature/MMTelFeature;->acknowledgeSmsReport(IIII)V

    .line 294
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public acknowledgeSmsWithPdu(III[B)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 321
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/telephony/ims/compat/feature/MMTelFeature;->acknowledgeSmsWithPdu(III[B)V

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public changeAudioPath(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 195
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->changeAudioPath(II)V

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 120
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 121
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 129
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public endSession(I)V
    .registers 4
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 74
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->endSession(I)V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 152
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v1

    .line 173
    .local v1, "implBase":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    .line 174
    .end local v1    # "implBase":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getFeatureStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 96
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getFeatureState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 97
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v1

    .line 188
    .local v1, "implBase":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    .line 189
    .end local v1    # "implBase":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getSmsFormat(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 314
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 315
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 230
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 231
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v1

    .line 144
    .local v1, "implBase":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    .line 145
    .end local v1    # "implBase":Landroid/telephony/ims/stub/ImsUtImplBase;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .registers 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 244
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isCmcEmergencyCallSupported(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 245
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isConnected(II)Z
    .registers 5
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isConnected(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 83
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isOpened()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 89
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->isOpened()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 90
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onMemoryAvailable(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->onMemoryAvailable(II)V

    .line 273
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onSmsReady(I)V
    .registers 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 307
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->onSmsReady(I)V

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "dtmfEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 223
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->sendDtmfEvent(ILjava/lang/String;)V

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 237
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 19
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    move-object v1, p0

    iget-object v0, v1, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 258
    :try_start_8
    iget-object v3, v1, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Landroid/telephony/ims/compat/feature/MMTelFeature;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 259
    monitor-exit v2

    .line 260
    return-void

    .line 259
    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setRetryCount(III)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 265
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setRetryCount(III)V

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .registers 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/ISecImsMmTelEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    return-void
.end method

.method public setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 300
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 301
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setSmsc(ILjava/lang/String;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 279
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setSmsc(ILjava/lang/String;)V

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .registers 5
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setVideoCrtAudio(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->setVideoCrtAudio(IZ)V

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public startLocalRingBackTone(III)I
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 202
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/compat/feature/MMTelFeature;->startLocalRingBackTone(III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 203
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 5
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/compat/feature/MMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 68
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public stopLocalRingBackTone()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->stopLocalRingBackTone()I

    move-result v1

    monitor-exit v0

    return v1

    .line 210
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public turnOffIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 165
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOffIms()V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public turnOnIms()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-static {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->-$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_7
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;->this$0:Landroid/telephony/ims/compat/feature/MMTelFeature;

    invoke-virtual {v1}, Landroid/telephony/ims/compat/feature/MMTelFeature;->turnOnIms()V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
