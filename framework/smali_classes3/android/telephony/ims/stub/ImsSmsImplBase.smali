.class public Landroid/telephony/ims/stub/ImsSmsImplBase;
.super Ljava/lang/Object;
.source "ImsSmsImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsSmsImplBase$StatusReportResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$DeliverStatusResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$SendStatusResult;
    }
.end annotation


# static fields
.field public static final DELIVER_STATUS_ERROR_GENERIC:I = 0x2

.field public static final DELIVER_STATUS_ERROR_NO_MEMORY:I = 0x3

.field public static final DELIVER_STATUS_ERROR_REQUEST_NOT_SUPPORTED:I = 0x4

.field public static final DELIVER_STATUS_OK:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SmsImplBase"

.field public static final RESULT_NO_NETWORK_ERROR:I = -0x1

.field public static final SEND_STATUS_ERROR:I = 0x2

.field public static final SEND_STATUS_ERROR_FALLBACK:I = 0x4

.field public static final SEND_STATUS_ERROR_RETRY:I = 0x3

.field public static final SEND_STATUS_OK:I = 0x1

.field public static final STATUS_REPORT_STATUS_ERROR:I = 0x2

.field public static final STATUS_REPORT_STATUS_OK:I = 0x1


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 149
    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 224
    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSms() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public acknowledgeSms(III[B)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .param p4, "pdu"    # [B

    .line 244
    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSms() not implemented. acknowledgeSms(int, int, int) called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 246
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 263
    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSmsReport() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 610
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    :goto_a
    return-object v0
.end method

.method public getSmsFormat()Ljava/lang/String;
    .registers 2

    .line 565
    const-string v0, "3gpp"

    return-object v0
.end method

.method public onMemoryAvailable(I)V
    .registers 2
    .param p1, "token"    # I

    .line 206
    return-void
.end method

.method public final onMemoryAvailableResult(III)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "result"    # I
    .param p3, "networkErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 467
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    .line 469
    if-eqz v0, :cond_13

    .line 473
    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onMemoryAvailableResult(III)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 476
    goto :goto_12

    .line 474
    :catch_e
    move-exception v1

    .line 475
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 477
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void

    .line 470
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public onReady()V
    .registers 1

    .line 575
    return-void
.end method

.method public final onReceiveSmsDeliveryReportAck(II)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "reasonCode"    # I

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 435
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    .line 437
    if-eqz v0, :cond_13

    .line 441
    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsSmsListener;->onReceiveSmsDeliveryReportAck(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 444
    goto :goto_12

    .line 442
    :catch_e
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 445
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void

    .line 438
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public final onSendSmsResult(IIII)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 360
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_21

    .line 362
    if-eqz v0, :cond_19

    .line 366
    const/4 v8, -0x1

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    :try_start_10
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 370
    goto :goto_18

    .line 368
    :catch_14
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 371
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 363
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public final onSendSmsResultError(IIIII)V
    .registers 15
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .param p5, "networkErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 397
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_21

    .line 399
    if-eqz v0, :cond_19

    .line 403
    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    :try_start_10
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 406
    goto :goto_18

    .line 404
    :catch_14
    move-exception v1

    .line 405
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 407
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 400
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public final onSendSmsResultIncludeErrClass(IIIIII)V
    .registers 18
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "reason"    # I
    .param p5, "networkErrorCode"    # I
    .param p6, "errorClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 415
    move-object v1, p0

    const/4 v2, 0x0

    .line 416
    .local v2, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v3, v1, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 417
    :try_start_5
    iget-object v0, v1, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v2, v0

    .line 418
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_27

    .line 420
    if-eqz v2, :cond_1f

    .line 424
    move-object v4, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    :try_start_14
    invoke-interface/range {v4 .. v10}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 427
    goto :goto_1e

    .line 425
    :catch_18
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void

    .line 421
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Feature not ready."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public final onSendSmsResultSuccess(II)V
    .registers 12
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 323
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_21

    .line 325
    if-eqz v0, :cond_19

    .line 329
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v3, v0

    move v4, p1

    move v5, p2

    :try_start_10
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 333
    goto :goto_18

    .line 331
    :catch_14
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 334
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 326
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public final onSmsReceived(ILjava/lang/String;[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 285
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_53

    .line 287
    if-eqz v0, :cond_4b

    .line 291
    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 302
    goto :goto_4a

    .line 292
    :catch_e
    move-exception v1

    .line 293
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not deliver sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 295
    .local v2, "message":Landroid/telephony/SmsMessage;
    const/4 v3, 0x2

    if-eqz v2, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3e

    .line 296
    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    goto :goto_4a

    .line 299
    :cond_3e
    const-string v4, "SmsImplBase"

    const-string/jumbo v5, "onSmsReceived: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 303
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    :goto_4a
    return-void

    .line 288
    :cond_4b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public final onSmsStatusReportReceived(IILjava/lang/String;[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 505
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_38

    .line 507
    if-eqz v0, :cond_30

    .line 511
    :try_start_a
    invoke-interface {v0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 515
    goto :goto_2f

    .line 512
    :catch_e
    move-exception v1

    .line 513
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 516
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void

    .line 508
    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public final onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsSmsListener;
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    .line 537
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_53

    .line 539
    if-eqz v0, :cond_4b

    .line 543
    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 556
    goto :goto_4a

    .line 544
    :catch_e
    move-exception v1

    .line 545
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 547
    .local v2, "message":Landroid/telephony/SmsMessage;
    const/4 v3, 0x2

    if-eqz v2, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3e

    .line 548
    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    goto :goto_4a

    .line 553
    :cond_3e
    const-string v4, "SmsImplBase"

    const-string/jumbo v5, "onSmsStatusReportReceived: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 557
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "message":Landroid/telephony/SmsMessage;
    :goto_4a
    return-void

    .line 540
    :cond_4b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 160
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 185
    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResult(IIII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    .line 189
    goto :goto_23

    .line 187
    :catch_6
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not send sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_23
    return-void
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 596
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 597
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 599
    :cond_6
    return-void
.end method

.method public setRetryCount(II)V
    .registers 3
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 580
    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .registers 2
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 585
    return-void
.end method
