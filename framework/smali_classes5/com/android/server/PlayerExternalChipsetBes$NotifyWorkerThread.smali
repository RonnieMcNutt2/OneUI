.class Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;
.super Ljava/lang/Thread;
.source "PlayerExternalChipsetBes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PlayerExternalChipsetBes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PlayerExternalChipsetBes;


# direct methods
.method constructor <init>(Lcom/android/server/PlayerExternalChipsetBes;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    .line 193
    const-string p1, "FMNotifyWorkerThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private verifyInfo([B)I
    .registers 14
    .param p1, "datas"    # [B

    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 198
    .local v0, "num":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 199
    aput-byte v1, v0, v2

    .line 200
    const/4 v3, 0x2

    const/16 v4, 0x8

    aput-byte v4, v0, v3

    .line 201
    const/4 v5, 0x3

    aput-byte v1, v0, v5

    .line 202
    const/4 v6, 0x4

    aput-byte v1, v0, v6

    .line 203
    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v7, p1, v0}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v7

    if-eqz v7, :cond_178

    .line 204
    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v7, v7, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v7

    if-eq v7, v3, :cond_178

    .line 206
    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-static {v7}, Lcom/android/server/PlayerExternalChipsetBes;->-$$Nest$mqueryInfo(Lcom/android/server/PlayerExternalChipsetBes;)[B

    move-result-object v7

    .line 207
    .local v7, "buffer":[B
    const-string v8, "FMRadioBestechnic"

    if-eqz v7, :cond_4c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buffer: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v10, v7}, Lcom/android/server/PlayerExternalChipsetBes;->toHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4c
    if-nez v7, :cond_4f

    return v1

    .line 209
    :cond_4f
    const-string/jumbo v9, "has result"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v10, v3, [B

    fill-array-data v10, :array_17a

    invoke-virtual {v9, v7, v10}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    const v10, 0xffff

    if-nez v9, :cond_14f

    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v11, v3, [B

    fill-array-data v11, :array_180

    .line 211
    invoke-virtual {v9, v7, v11}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    if-eqz v9, :cond_74

    goto/16 :goto_14f

    .line 220
    :cond_74
    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v11, v3, [B

    fill-array-data v11, :array_186

    invoke-virtual {v9, v7, v11}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    if-nez v9, :cond_115

    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v11, v3, [B

    fill-array-data v11, :array_18c

    .line 221
    invoke-virtual {v9, v7, v11}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v9

    if-eqz v9, :cond_90

    goto/16 :goto_115

    .line 234
    :cond_90
    iget-object v4, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v2, v2, [B

    aput-byte v3, v2, v1

    invoke-virtual {v4, v7, v2}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v2

    if-nez v2, :cond_a2

    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-boolean v2, v2, Lcom/android/server/PlayerExternalChipsetBes;->mIsRDSEnabled:Z

    if-eqz v2, :cond_178

    .line 236
    :cond_a2
    new-instance v1, Lcom/android/server/ExtRDSData;

    invoke-direct {v1, v7}, Lcom/android/server/ExtRDSData;-><init>([B)V

    .line 237
    .local v1, "radio_data":Lcom/android/server/ExtRDSData;
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v2, v2, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v2, v1}, Lcom/android/server/RDSParser;->parseData(Lcom/android/server/ExtRDSData;)V

    .line 238
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v2, v2, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v2}, Lcom/android/server/RDSParser;->isRDSDataValid()Z

    move-result v2

    if-eqz v2, :cond_114

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RDSDataValid, PS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v3, v3, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v3}, Lcom/android/server/RDSParser;->getProgramService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - RT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v3, v3, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v3}, Lcom/android/server/RDSParser;->getRadioText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v2, Lcom/android/server/FMPlayerNativeBase$RDSData;

    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBes;->getTunedFrequency()I

    move-result v3

    int-to-long v3, v3

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v6, v6, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v6}, Lcom/android/server/RDSParser;->getProgramService()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v9, v9, Lcom/android/server/PlayerExternalChipsetBes;->rdsParser:Lcom/android/server/RDSParser;

    invoke-virtual {v9}, Lcom/android/server/RDSParser;->getRadioText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v3, v4, v6, v9}, Lcom/android/server/FMPlayerNativeBase$RDSData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v2, "RDSdata":Lcom/android/server/FMPlayerNativeBase$RDSData;
    invoke-virtual {v2}, Lcom/android/server/FMPlayerNativeBase$RDSData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v3, v3, Lcom/android/server/PlayerExternalChipsetBes;->mService:Lcom/android/server/FMRadioService;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 244
    .end local v2    # "RDSdata":Lcom/android/server/FMPlayerNativeBase$RDSData;
    :cond_114
    return v5

    .line 223
    .end local v1    # "radio_data":Lcom/android/server/ExtRDSData;
    :cond_115
    :goto_115
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v2, v3, [B

    fill-array-data v2, :array_192

    invoke-virtual {v1, v7, v2}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 224
    const-string/jumbo v1, "seek fail"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e

    .line 226
    :cond_129
    aget-byte v1, v7, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v7, v5

    shl-int/2addr v2, v4

    and-int/2addr v2, v10

    add-int/2addr v1, v2

    .line 227
    .local v1, "chan":I
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    aget-byte v4, v7, v6

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    .line 228
    const/16 v2, 0x2a30

    if-gt v1, v2, :cond_145

    const/16 v2, 0x21fc

    if-ge v1, v2, :cond_14a

    .line 229
    :cond_145
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/PlayerExternalChipsetBes;->mSeekFreq:I

    .line 231
    :cond_14a
    iget-object v2, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iput v1, v2, Lcom/android/server/PlayerExternalChipsetBes;->mSeekFreq:I

    .line 233
    .end local v1    # "chan":I
    :goto_14e
    return v3

    .line 213
    :cond_14f
    :goto_14f
    iget-object v1, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    new-array v9, v3, [B

    fill-array-data v9, :array_198

    invoke-virtual {v1, v7, v9}, Lcom/android/server/PlayerExternalChipsetBes;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 214
    const-string/jumbo v1, "tune fail"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    .line 216
    :cond_163
    aget-byte v1, v7, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, v7, v5

    shl-int/2addr v3, v4

    and-int/2addr v3, v10

    add-int/2addr v1, v3

    .line 217
    .restart local v1    # "chan":I
    iget-object v3, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    aget-byte v4, v7, v6

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/android/server/PlayerExternalChipsetBes;->mCurrentRssi:J

    .line 219
    .end local v1    # "chan":I
    :goto_177
    return v2

    .line 249
    .end local v7    # "buffer":[B
    :cond_178
    return v1

    nop

    :array_17a
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_180
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_186
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_18c
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_192
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_198
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 254
    const-string/jumbo v0, "notify thread is running"

    const-string v1, "FMRadioBestechnic"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v0, v0, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    .line 256
    .local v0, "length":I
    new-array v2, v0, [B

    .line 258
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .local v3, "ret":I
    :goto_13
    if-ge v3, v0, :cond_1b

    .line 259
    const/4 v4, -0x1

    aput-byte v4, v2, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 261
    :cond_1b
    const/4 v4, 0x0

    .line 262
    .local v4, "count":I
    :goto_1c
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-boolean v5, v5, Lcom/android/server/PlayerExternalChipsetBes;->mIsRDSEnabled:Z

    if-nez v5, :cond_36

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-static {v5}, Lcom/android/server/PlayerExternalChipsetBes;->-$$Nest$fgetmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_36

    .line 292
    :cond_35
    return-void

    .line 263
    :cond_36
    :goto_36
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v5, v5, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v6, v6, Lcom/android/server/PlayerExternalChipsetBes;->mUsbEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v2, v0, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v3

    .line 264
    if-gez v3, :cond_5e

    .line 265
    add-int/lit8 v4, v4, 0x1

    .line 266
    const/16 v5, 0x32

    if-ne v4, v5, :cond_a7

    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iget-object v5, v5, Lcom/android/server/PlayerExternalChipsetBes;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v5, :cond_a7

    .line 267
    const/4 v4, 0x0

    .line 268
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v5}, Lcom/android/server/PlayerExternalChipsetBes;->releaseInterfaceBes()V

    .line 269
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v5}, Lcom/android/server/PlayerExternalChipsetBes;->initEndpointBes()V

    goto :goto_a7

    .line 271
    :cond_5e
    if-lez v3, :cond_a7

    .line 272
    const/4 v4, 0x0

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received NOTIFY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    invoke-virtual {v6, v2}, Lcom/android/server/PlayerExternalChipsetBes;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->verifyInfo([B)I

    move-result v6

    .line 275
    .local v6, "infoRet":I
    packed-switch v6, :pswitch_data_b0

    goto :goto_a7

    .line 285
    :pswitch_8a
    const-string/jumbo v7, "rds segment complete"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iput-boolean v5, v7, Lcom/android/server/PlayerExternalChipsetBes;->mIsGettingRds:Z

    goto :goto_a7

    .line 281
    :pswitch_95
    const-string/jumbo v7, "seek or tune complete"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v7, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    iput-boolean v5, v7, Lcom/android/server/PlayerExternalChipsetBes;->mIsSeekTuneing:Z

    .line 283
    goto :goto_a7

    .line 277
    :pswitch_a0
    const-string/jumbo v5, "no result complete"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    nop

    .line 290
    .end local v6    # "infoRet":I
    :cond_a7
    :goto_a7
    iget-object v5, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7}, Lcom/android/server/PlayerExternalChipsetBes;->threadSleep(J)V

    goto/16 :goto_1c

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_95
        :pswitch_95
        :pswitch_8a
    .end packed-switch
.end method

.method terminate()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->this$0:Lcom/android/server/PlayerExternalChipsetBes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/PlayerExternalChipsetBes;->-$$Nest$fputmIsRunning(Lcom/android/server/PlayerExternalChipsetBes;Z)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 298
    invoke-virtual {p0}, Lcom/android/server/PlayerExternalChipsetBes$NotifyWorkerThread;->interrupt()V

    .line 299
    :cond_f
    return-void
.end method
