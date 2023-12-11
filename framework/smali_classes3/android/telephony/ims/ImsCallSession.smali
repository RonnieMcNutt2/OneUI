.class public Landroid/telephony/ims/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;,
        Landroid/telephony/ims/ImsCallSession$Listener;,
        Landroid/telephony/ims/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mClosed:Z

.field private mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

.field private mListener:Landroid/telephony/ims/ImsCallSession$Listener;

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClosed(Landroid/telephony/ims/ImsCallSession;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    .line 562
    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 563
    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    .line 566
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 567
    new-instance v1, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy-IA;)V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    .line 569
    if-eqz p1, :cond_23

    .line 571
    :try_start_1d
    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    .line 572
    :catch_21
    move-exception v0

    .line 573
    :goto_22
    goto :goto_26

    .line 575
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 577
    :goto_26
    return-void
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 580
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 581
    invoke-virtual {p0, p2, p3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 582
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 889
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 890
    return-void

    .line 894
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 896
    goto :goto_c

    .line 895
    :catch_b
    move-exception v0

    .line 897
    :goto_c
    return-void
.end method

.method public callSessionNotifyAnbr(III)V
    .registers 7
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 1323
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1324
    return-void

    .line 1328
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsCallSession;->callSessionNotifyAnbr(III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1331
    goto :goto_24

    .line 1329
    :catch_b
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionNotifyAnbr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsCallSession"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public cancelTransferCall()V
    .registers 2

    .line 1262
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1263
    return-void

    .line 1267
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->cancelTransferCall()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1269
    goto :goto_c

    .line 1268
    :catch_b
    move-exception v0

    .line 1270
    :goto_c
    return-void
.end method

.method public close()V
    .registers 3

    .line 595
    monitor-enter p0

    .line 596
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_7

    .line 597
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    return-void

    .line 601
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 602
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_18
    .catchall {:try_start_8 .. :try_end_10} :catchall_13

    .line 606
    :try_start_10
    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    goto :goto_1b

    :catchall_13
    move-exception v1

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 608
    nop

    .end local p0    # "this":Landroid/telephony/ims/ImsCallSession;
    throw v1

    .line 603
    .restart local p0    # "this":Landroid/telephony/ims/ImsCallSession;
    :catch_18
    move-exception v1

    .line 606
    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 608
    :goto_1b
    nop

    .line 609
    monitor-exit p0

    .line 610
    return-void

    .line 609
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public deflect(Ljava/lang/String;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 905
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 906
    return-void

    .line 910
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 912
    goto :goto_c

    .line 911
    :catch_b
    move-exception v0

    .line 913
    :goto_c
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1061
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1062
    return-void

    .line 1066
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1068
    goto :goto_c

    .line 1067
    :catch_b
    move-exception v0

    .line 1069
    :goto_c
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .registers 3

    .line 619
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 620
    return-object v1

    .line 623
    :cond_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 624
    return-object v0

    .line 627
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return-object v0

    .line 628
    :catch_14
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 653
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 654
    return-object v1

    .line 658
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 659
    :catch_d
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public final getIImsCallSessionListenerProxy()Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;
    .registers 2

    .line 588
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 670
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 671
    return-object v1

    .line 675
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 676
    :catch_d
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 721
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 722
    return-object v1

    .line 726
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 727
    :catch_d
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 687
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 688
    return-object v1

    .line 692
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 693
    :catch_d
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    .line 780
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .registers 3

    .line 739
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 740
    return v1

    .line 744
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 745
    :catch_d
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 704
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 705
    return-object v1

    .line 709
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 710
    :catch_d
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 990
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 991
    return-void

    .line 995
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 997
    goto :goto_c

    .line 996
    :catch_b
    move-exception v0

    .line 998
    :goto_c
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1079
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1080
    return-void

    .line 1084
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1086
    goto :goto_c

    .line 1085
    :catch_b
    move-exception v0

    .line 1087
    :goto_c
    return-void
.end method

.method public isAlive()Z
    .registers 3

    .line 757
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 758
    return v1

    .line 761
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v0

    .line 762
    .local v0, "state":I
    packed-switch v0, :pswitch_data_10

    .line 772
    return v1

    .line 770
    :pswitch_e
    const/4 v1, 0x1

    return v1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public isInCall()Z
    .registers 3

    .line 789
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 790
    return v1

    .line 794
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 795
    :catch_d
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isMultiparty()Z
    .registers 3

    .line 1180
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1181
    return v1

    .line 1185
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1186
    :catch_d
    move-exception v0

    .line 1187
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public merge()V
    .registers 2

    .line 1025
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1026
    return-void

    .line 1030
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1032
    goto :goto_c

    .line 1031
    :catch_b
    move-exception v0

    .line 1033
    :goto_c
    return-void
.end method

.method public notifyReadyToHandleImsCallbacks()V
    .registers 2

    .line 1244
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1245
    return-void

    .line 1249
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->notifyReadyToHandleImsCallbacks()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1251
    goto :goto_c

    .line 1250
    :catch_b
    move-exception v0

    .line 1252
    :goto_c
    return-void
.end method

.method public reject(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 922
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 923
    return-void

    .line 927
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 929
    goto :goto_c

    .line 928
    :catch_b
    move-exception v0

    .line 930
    :goto_c
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1097
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1098
    return-void

    .line 1102
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1104
    goto :goto_c

    .line 1103
    :catch_b
    move-exception v0

    .line 1105
    :goto_c
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1008
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1009
    return-void

    .line 1013
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1015
    goto :goto_c

    .line 1014
    :catch_b
    move-exception v0

    .line 1016
    :goto_c
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1116
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1117
    return-void

    .line 1121
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1123
    goto :goto_c

    .line 1122
    :catch_b
    move-exception v0

    .line 1124
    :goto_c
    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1276
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1277
    return-void

    .line 1281
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1283
    goto :goto_c

    .line 1282
    :catch_b
    move-exception v0

    .line 1284
    :goto_c
    return-void
.end method

.method public sendRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1302
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1303
    return-void

    .line 1307
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->sendRtpHeaderExtensions(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    .line 1310
    goto :goto_11

    .line 1309
    :catch_10
    move-exception v0

    .line 1311
    :goto_11
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1197
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1198
    return-void

    .line 1202
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1204
    goto :goto_c

    .line 1203
    :catch_b
    move-exception v0

    .line 1205
    :goto_c
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1213
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1214
    return-void

    .line 1218
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1220
    goto :goto_c

    .line 1219
    :catch_b
    move-exception v0

    .line 1221
    :goto_c
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .registers 3
    .param p1, "response"    # Z

    .line 1229
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1230
    return-void

    .line 1234
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1236
    goto :goto_c

    .line 1235
    :catch_b
    move-exception v0

    .line 1237
    :goto_c
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .registers 3
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 1164
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1165
    return-void

    .line 1169
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1171
    goto :goto_c

    .line 1170
    :catch_b
    move-exception v0

    .line 1172
    :goto_c
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 642
    if-eqz p1, :cond_4

    .line 643
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    .line 645
    :cond_4
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 809
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    .line 810
    if-eqz p2, :cond_6

    .line 811
    iput-object p2, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 813
    :cond_6
    return-void
.end method

.method public setMute(Z)V
    .registers 3
    .param p1, "muted"    # Z

    .line 821
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 822
    return-void

    .line 826
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 828
    goto :goto_c

    .line 827
    :catch_b
    move-exception v0

    .line 829
    :goto_c
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 846
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 847
    return-void

    .line 851
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 853
    goto :goto_c

    .line 852
    :catch_b
    move-exception v0

    .line 854
    :goto_c
    return-void
.end method

.method public start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 871
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 872
    return-void

    .line 876
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 878
    goto :goto_c

    .line 877
    :catch_b
    move-exception v0

    .line 879
    :goto_c
    return-void
.end method

.method public startDtmf(C)V
    .registers 3
    .param p1, "c"    # C

    .line 1134
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1135
    return-void

    .line 1139
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1141
    goto :goto_c

    .line 1140
    :catch_b
    move-exception v0

    .line 1142
    :goto_c
    return-void
.end method

.method public stopDtmf()V
    .registers 2

    .line 1148
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1149
    return-void

    .line 1153
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1155
    goto :goto_c

    .line 1154
    :catch_b
    move-exception v0

    .line 1156
    :goto_c
    return-void
.end method

.method public terminate(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 973
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 974
    return-void

    .line 978
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 980
    goto :goto_c

    .line 979
    :catch_b
    move-exception v0

    .line 981
    :goto_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1898
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1900
    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const-string v1, "[UNINITIALIZED]"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transfer(Landroid/telephony/ims/ImsCallSession;)V
    .registers 4
    .param p1, "transferToSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 955
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 956
    return-void

    .line 960
    :cond_5
    if-eqz p1, :cond_13

    .line 961
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_13

    .line 963
    :catch_11
    move-exception v0

    goto :goto_14

    .line 964
    :cond_13
    :goto_13
    nop

    .line 965
    :goto_14
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 939
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 940
    return-void

    .line 944
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->transfer(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 946
    goto :goto_c

    .line 945
    :catch_b
    move-exception v0

    .line 947
    :goto_c
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1043
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1044
    return-void

    .line 1048
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1050
    goto :goto_c

    .line 1049
    :catch_b
    move-exception v0

    .line 1051
    :goto_c
    return-void
.end method
