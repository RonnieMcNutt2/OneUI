.class Landroid/app/job/JobServiceEngine$JobHandler;
.super Landroid/os/Handler;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobServiceEngine;


# direct methods
.method constructor <init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/job/JobServiceEngine;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 158
    iput-object p1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    .line 159
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 160
    return-void
.end method

.method private ackGetTransferredDownloadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    .registers 11
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "progress"    # J

    .line 304
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 305
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 306
    .local v1, "jobId":I
    if-nez p2, :cond_c

    const/4 v2, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    .line 307
    .local v2, "workId":I
    :goto_10
    const-string v3, "JobServiceEngine"

    if-eqz v0, :cond_1f

    .line 309
    :try_start_14
    invoke-interface {v0, v1, v2, p3, p4}, Landroid/app/job/IJobCallback;->acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 312
    :goto_17
    goto :goto_2b

    .line 310
    :catch_18
    move-exception v4

    .line 311
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "System unreachable for returning progress."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 313
    :cond_1f
    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 314
    const-string v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_2b
    :goto_2b
    return-void
.end method

.method private ackGetTransferredUploadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    .registers 11
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "item"    # Landroid/app/job/JobWorkItem;
    .param p3, "progress"    # J

    .line 320
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 321
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 322
    .local v1, "jobId":I
    if-nez p2, :cond_c

    const/4 v2, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    .line 323
    .local v2, "workId":I
    :goto_10
    const-string v3, "JobServiceEngine"

    if-eqz v0, :cond_1f

    .line 325
    :try_start_14
    invoke-interface {v0, v1, v2, p3, p4}, Landroid/app/job/IJobCallback;->acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 328
    :goto_17
    goto :goto_2b

    .line 326
    :catch_18
    move-exception v4

    .line 327
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "System unreachable for returning progress."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_17

    .line 329
    :cond_1f
    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 330
    const-string v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_2b
    :goto_2b
    return-void
.end method

.method private ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "workOngoing"    # Z

    .line 335
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 336
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 337
    .local v1, "jobId":I
    const-string v2, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 339
    :try_start_c
    invoke-interface {v0, v1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 342
    :goto_f
    goto :goto_23

    .line 340
    :catch_10
    move-exception v3

    .line 341
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "System unreachable for starting job."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 344
    :cond_17
    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 345
    const-string v3, "Attempting to ack a job that has already been processed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_23
    :goto_23
    return-void
.end method

.method private ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "reschedule"    # Z

    .line 351
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    .line 352
    .local v0, "callback":Landroid/app/job/IJobCallback;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 353
    .local v1, "jobId":I
    const-string v2, "JobServiceEngine"

    if-eqz v0, :cond_17

    .line 355
    :try_start_c
    invoke-interface {v0, v1, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 358
    :goto_f
    goto :goto_23

    .line 356
    :catch_10
    move-exception v3

    .line 357
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "System unreachable for stopping job."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_f

    .line 360
    :cond_17
    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 361
    const-string v3, "Attempting to ack a job that has already been processed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Error while executing job: "

    const-string v2, "JobServiceEngine"

    packed-switch v0, :pswitch_data_18c

    .line 297
    const-string v0, "Unrecognised message received."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18a

    .line 287
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 289
    .local v0, "params":Landroid/app/job/JobParameters;
    :try_start_14
    iget-object v3, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v3, v0}, Landroid/app/job/JobServiceEngine;->onNetworkChanged(Landroid/app/job/JobParameters;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1b

    .line 293
    goto/16 :goto_18a

    .line 290
    :catch_1b
    move-exception v3

    .line 291
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 269
    .end local v0    # "params":Landroid/app/job/JobParameters;
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 270
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    .line 271
    .local v1, "params":Landroid/app/job/JobParameters;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification;

    .line 272
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v4

    .line 273
    .local v4, "callback":Landroid/app/job/IJobCallback;
    if-eqz v4, :cond_5f

    .line 275
    :try_start_4c
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v4, v5, v6, v3, v7}, Landroid/app/job/IJobCallback;->setNotification(IILandroid/app/Notification;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_57} :catch_58

    goto :goto_5e

    .line 277
    :catch_58
    move-exception v5

    .line 278
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "Error providing notification: binder has gone away."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_5e
    goto :goto_65

    .line 281
    :cond_5f
    const-string/jumbo v5, "setNotification() called for a nonexistent job."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_65
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 284
    goto/16 :goto_18a

    .line 250
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "params":Landroid/app/job/JobParameters;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_6a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 251
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    .line 252
    .restart local v1    # "params":Landroid/app/job/JobParameters;
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v10

    .line 253
    .local v10, "callback":Landroid/app/job/IJobCallback;
    if-eqz v10, :cond_91

    .line 255
    :try_start_78
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/app/job/JobWorkItem;

    iget-wide v6, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-wide v8, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    move-object v3, v10

    invoke-interface/range {v3 .. v9}, Landroid/app/job/IJobCallback;->updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_89} :catch_8a

    goto :goto_90

    .line 257
    :catch_8a
    move-exception v3

    .line 258
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error updating estimated transfer size to system: binder has gone away."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_90
    goto :goto_97

    .line 262
    :cond_91
    const-string/jumbo v3, "updateEstimatedNetworkBytes() called for a nonexistent job id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_97
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 266
    goto/16 :goto_18a

    .line 232
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "params":Landroid/app/job/JobParameters;
    .end local v10    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_9c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 233
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    .line 234
    .restart local v1    # "params":Landroid/app/job/JobParameters;
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v10

    .line 235
    .restart local v10    # "callback":Landroid/app/job/IJobCallback;
    if-eqz v10, :cond_c3

    .line 237
    :try_start_aa
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/app/job/JobWorkItem;

    iget-wide v6, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    iget-wide v8, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    move-object v3, v10

    invoke-interface/range {v3 .. v9}, Landroid/app/job/IJobCallback;->updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_bb} :catch_bc

    goto :goto_c2

    .line 239
    :catch_bc
    move-exception v3

    .line 240
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "Error updating data transfer progress to system: binder has gone away."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_c2
    goto :goto_c9

    .line 244
    :cond_c3
    const-string/jumbo v3, "updateDataTransferProgress() called for a nonexistent job id."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_c9
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 247
    goto/16 :goto_18a

    .line 218
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "params":Landroid/app/job/JobParameters;
    .end local v10    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_ce
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 219
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    .line 220
    .restart local v1    # "params":Landroid/app/job/JobParameters;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 222
    .local v3, "item":Landroid/app/job/JobWorkItem;
    :try_start_da
    iget-object v4, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v4, v1, v3}, Landroid/app/job/JobServiceEngine;->getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide v4

    .line 223
    .local v4, "ret":J
    invoke-direct {p0, v1, v3, v4, v5}, Landroid/app/job/JobServiceEngine$JobHandler;->ackGetTransferredUploadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e3} :catch_e9

    .line 227
    .end local v4    # "ret":J
    nop

    .line 228
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 229
    goto/16 :goto_18a

    .line 224
    :catch_e9
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Application unable to handle getTransferredUploadBytes."

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 204
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "params":Landroid/app/job/JobParameters;
    .end local v3    # "item":Landroid/app/job/JobWorkItem;
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_f5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 205
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    .line 206
    .restart local v1    # "params":Landroid/app/job/JobParameters;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 208
    .restart local v3    # "item":Landroid/app/job/JobWorkItem;
    :try_start_101
    iget-object v4, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v4, v1, v3}, Landroid/app/job/JobServiceEngine;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)J

    move-result-wide v4

    .line 209
    .local v4, "ret":J
    invoke-direct {p0, v1, v3, v4, v5}, Landroid/app/job/JobServiceEngine$JobHandler;->ackGetTransferredDownloadBytesMessage(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;J)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_10a} :catch_110

    .line 213
    .end local v4    # "ret":J
    nop

    .line 214
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 215
    goto/16 :goto_18a

    .line 210
    :catch_110
    move-exception v4

    .line 211
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Application unable to handle getTransferredDownloadBytes."

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 188
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "params":Landroid/app/job/JobParameters;
    .end local v3    # "item":Landroid/app/job/JobWorkItem;
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_11c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 189
    .local v0, "params":Landroid/app/job/JobParameters;
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_126

    goto :goto_127

    :cond_126
    const/4 v3, 0x0

    :goto_127
    move v1, v3

    .line 190
    .local v1, "needsReschedule":Z
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v3

    .line 191
    .local v3, "callback":Landroid/app/job/IJobCallback;
    if-eqz v3, :cond_13d

    .line 193
    :try_start_12e
    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-interface {v3, v4, v1}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_135} :catch_136

    goto :goto_13c

    .line 194
    :catch_136
    move-exception v4

    .line 195
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error reporting job finish to system: binder has goneaway."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_13c
    goto :goto_18a

    .line 199
    :cond_13d
    const-string v4, "finishJob() called for a nonexistent job id."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    goto :goto_18a

    .line 177
    .end local v0    # "params":Landroid/app/job/JobParameters;
    .end local v1    # "needsReschedule":Z
    .end local v3    # "callback":Landroid/app/job/IJobCallback;
    :pswitch_143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 179
    .restart local v0    # "params":Landroid/app/job/JobParameters;
    :try_start_147
    iget-object v1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v1, v0}, Landroid/app/job/JobServiceEngine;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v1

    .line 180
    .local v1, "ret":Z
    invoke-direct {p0, v0, v1}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_150} :catch_151

    .line 184
    .end local v1    # "ret":Z
    goto :goto_18a

    .line 181
    :catch_151
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Application unable to handle onStopJob."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 166
    .end local v0    # "params":Landroid/app/job/JobParameters;
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_15d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    .line 168
    .restart local v0    # "params":Landroid/app/job/JobParameters;
    :try_start_161
    iget-object v3, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v3, v0}, Landroid/app/job/JobServiceEngine;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v3

    .line 169
    .local v3, "workOngoing":Z
    invoke-direct {p0, v0, v3}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_16a} :catch_16b

    .line 173
    .end local v3    # "workOngoing":Z
    goto :goto_18a

    .line 170
    :catch_16b
    move-exception v3

    .line 171
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 300
    .end local v0    # "params":Landroid/app/job/JobParameters;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_18a
    return-void

    nop

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_15d
        :pswitch_143
        :pswitch_11c
        :pswitch_f5
        :pswitch_ce
        :pswitch_9c
        :pswitch_6a
        :pswitch_3a
        :pswitch_10
    .end packed-switch
.end method
