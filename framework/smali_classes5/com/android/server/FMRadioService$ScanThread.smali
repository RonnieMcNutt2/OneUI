.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;

    .line 4129
    iput-object p1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doScan()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 4133
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const/4 v2, 0x2

    const-wide/32 v3, 0x15f90

    const-wide/32 v5, 0x1a5e0

    const-wide/32 v7, 0x155cc

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v0, :cond_50

    .line 4134
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-nez v0, :cond_27

    .line 4135
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    const/16 v11, 0x222e

    invoke-virtual {v0, v11}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 4136
    :cond_27
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v0, v10, :cond_33

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v2, :cond_3e

    .line 4137
    :cond_33
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    const/16 v11, 0x1db0

    invoke-virtual {v0, v11}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    .line 4138
    :cond_3e
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v9, :cond_8b

    .line 4139
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    const/16 v11, 0x1900

    invoke-virtual {v0, v11}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    goto :goto_8b

    .line 4141
    :cond_50
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v11, 0x6

    if-ne v0, v11, :cond_6f

    .line 4142
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v9, :cond_65

    .line 4143
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_8b

    .line 4145
    :cond_65
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_8b

    .line 4146
    :cond_6f
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v10, :cond_7f

    .line 4147
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    goto :goto_8b

    .line 4149
    :cond_7f
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    const-wide/32 v11, 0x128e0

    invoke-virtual {v0, v11, v12}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    .line 4152
    :cond_8b
    :goto_8b
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v11, 0x9

    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    if-eq v0, v12, :cond_a0

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_a0

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 4154
    :cond_a0
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v13, v14}, Lcom/android/server/FMRadioService;->-$$Nest$fputmPreviousFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4155
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v13, v14}, Lcom/android/server/FMRadioService;->-$$Nest$fputmCurrentFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4157
    :cond_aa
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 4158
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    .line 4161
    :cond_c3
    :goto_c3
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_32f

    .line 4163
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->searchAll()J

    move-result-wide v7

    .line 4164
    .local v7, "freq":J
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 4165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found channel :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4167
    :cond_ee
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v3, 0x14

    if-eq v0, v12, :cond_140

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_140

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_140

    .line 4170
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 4171
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 4172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate channel :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4173
    :cond_12c
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4175
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4176
    goto/16 :goto_32f

    .line 4181
    :cond_140
    cmp-long v0, v7, v13

    if-lez v0, :cond_2ef

    .line 4182
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v5

    cmp-long v0, v5, v13

    if-gtz v0, :cond_153

    .line 4183
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v7, v8}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanFreq(Lcom/android/server/FMRadioService;J)V

    .line 4186
    :cond_153
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v5, 0xfa

    if-eq v0, v12, :cond_1f2

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v11, :cond_1f2

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_16d

    const-wide/32 v16, 0x15f90

    const-wide/32 v18, 0x1a5e0

    goto/16 :goto_1f8

    .line 4217
    :cond_16d
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 4218
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4219
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4220
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1b0

    .line 4222
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v11

    monitor-enter v11

    .line 4223
    :try_start_1a2
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4224
    monitor-exit v11

    goto :goto_1b0

    :catchall_1ad
    move-exception v0

    monitor-exit v11
    :try_end_1af
    .catchall {:try_start_1a2 .. :try_end_1af} :catchall_1ad

    throw v0

    .line 4227
    :cond_1b0
    :goto_1b0
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v0, v10, :cond_1c1

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v2, :cond_1bd

    goto :goto_1c1

    :cond_1bd
    const-wide/32 v18, 0x1a5e0

    goto :goto_1c8

    :cond_1c1
    :goto_1c1
    const-wide/32 v18, 0x1a5e0

    cmp-long v0, v7, v18

    if-eqz v0, :cond_1de

    :goto_1c8
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v0, v0, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v0, v9, :cond_1d6

    const-wide/32 v16, 0x15f90

    cmp-long v0, v7, v16

    if-nez v0, :cond_1d9

    goto :goto_1de

    :cond_1d6
    const-wide/32 v16, 0x15f90

    :cond_1d9
    const-wide/32 v11, 0x155cc

    goto/16 :goto_2e3

    .line 4229
    :cond_1de
    :goto_1de
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    .line 4230
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 4229
    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4233
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4234
    goto/16 :goto_32f

    .line 4186
    :cond_1f2
    const-wide/32 v16, 0x15f90

    const-wide/32 v18, 0x1a5e0

    .line 4188
    :goto_1f8
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v7, v8}, Lcom/android/server/FMRadioService;->-$$Nest$fputmCurrentFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4189
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_230

    .line 4190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scanning current and prev freq:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v11}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v11}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPreviousFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4191
    :cond_230
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPreviousFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-ltz v0, :cond_28e

    .line 4192
    const-string/jumbo v0, "scanning finish"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4193
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v5

    const-wide/32 v11, 0x155cc

    cmp-long v0, v5, v11

    if-nez v0, :cond_269

    .line 4194
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4195
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4197
    :cond_269
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_27a

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/PlayerExternalChipsetBase;->stopNotifyThread(Z)V

    .line 4198
    :cond_27a
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    .line 4199
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 4198
    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4202
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4203
    goto/16 :goto_32f

    .line 4204
    :cond_28e
    const-wide/32 v11, 0x155cc

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 4205
    const-string/jumbo v0, "scanning found channel"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4206
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/FMRadioService;->-$$Nest$fputmPreviousFoundFreq(Lcom/android/server/FMRadioService;J)V

    .line 4207
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4208
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4209
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2e3

    .line 4211
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 4212
    :try_start_2d5
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4213
    monitor-exit v3

    goto :goto_2e3

    :catchall_2e0
    move-exception v0

    monitor-exit v3
    :try_end_2e2
    .catchall {:try_start_2d5 .. :try_end_2e2} :catchall_2e0

    throw v0

    .line 4247
    .end local v7    # "freq":J
    :cond_2e3
    :goto_2e3
    move-wide v7, v11

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    const/16 v11, 0x9

    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    goto/16 :goto_c3

    .line 4239
    .restart local v7    # "freq":J
    :cond_2ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testmode Skipp value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsSkipTunigVal(Lcom/android/server/FMRadioService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4240
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_31c

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/PlayerExternalChipsetBase;->stopNotifyThread(Z)V

    .line 4241
    :cond_31c
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    new-array v5, v15, [Ljava/lang/Long;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4244
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 4245
    nop

    .line 4248
    .end local v7    # "freq":J
    :cond_32f
    :goto_32f
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_348

    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_348

    .line 4249
    iget-object v0, v1, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/FMPlayerNativeBase;->setScanning(Z)V

    .line 4250
    :cond_348
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 4254
    const-string v0, "Scan thread released the dimmed screen lock"

    iget-object v1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPowerManager(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v1

    const v2, 0x20000001

    const-string v3, "FMRadio Service Scan Thread"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 4256
    .local v1, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4257
    const-string v2, "Scan thread gets the dimmed screen lock"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4259
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1b
    const-string v4, "Scanning Thread started..."

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4260
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 4261
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_40

    .line 4262
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->isUnMuteRadio()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 4263
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "g_fmradio_mute=true"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_57

    .line 4266
    :cond_40
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 4267
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->-$$Nest$msetFMAudioPath(Lcom/android/server/FMRadioService;Z)V

    goto :goto_57

    .line 4269
    :cond_4e
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PlayerExternalChipsetBase;->muteOn()V

    .line 4272
    :cond_57
    :goto_57
    const-string v4, "Scanning Thread started... - Turning off FM"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4274
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanFreq(Lcom/android/server/FMRadioService;J)V

    .line 4276
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_78

    .line 4277
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanChannelList(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)V

    goto :goto_81

    .line 4279
    :cond_78
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4281
    :goto_81
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsSkipTunigVal(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_d6

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-nez v4, :cond_d6

    .line 4283
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmRssi_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmSnr_th(Lcom/android/server/FMRadioService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCnt_th(Lcom/android/server/FMRadioService;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/FMRadioService;->-$$Nest$msetSignalSetting(Lcom/android/server/FMRadioService;III)V

    .line 4284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first scan no block channel with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmRssi_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmSnr_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmCnt_th(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4287
    :cond_d6
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 4288
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/PlayerExternalChipsetBase;->startNotifyThread(Z)Z

    move-result v4

    if-nez v4, :cond_118

    .line 4289
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_fe

    .line 4290
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanChannelList(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)V

    goto :goto_107

    .line 4292
    :cond_fe
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4293
    :goto_107
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Long;

    .line 4294
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 4293
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_11f

    .line 4297
    :cond_118
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V

    goto :goto_11f

    .line 4300
    :cond_11c
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_11f} :catch_132
    .catchall {:try_start_1b .. :try_end_11f} :catchall_130

    .line 4306
    :goto_11f
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V

    .line 4307
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V

    .line 4317
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_162

    .line 4318
    goto :goto_15c

    .line 4306
    :catchall_130
    move-exception v4

    goto :goto_168

    .line 4302
    :catch_132
    move-exception v4

    .line 4304
    .local v4, "e":Ljava/lang/Exception;
    :try_start_133
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in run() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catchall {:try_start_133 .. :try_end_14b} :catchall_130

    .line 4306
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V

    .line 4307
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V

    .line 4317
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_162

    .line 4318
    :goto_15c
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4319
    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4322
    :cond_162
    const-string v0, "Scanning Thread work is done..."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4324
    return-void

    .line 4306
    :goto_168
    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V

    .line 4307
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v2}, Lcom/android/server/FMRadioService;->-$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V

    .line 4317
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_17e

    .line 4318
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4319
    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4321
    :cond_17e
    throw v4
.end method
