.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final AT_HDCP_DP_HASH_SIZE:I = 0x20

.field private static final AT_HDCP_DP_VER_13_INSTALL_CMD:Ljava/lang/String; = "idp1"

.field private static final AT_HDCP_DP_VER_13_VERIFY_CMD:Ljava/lang/String; = "vdp1"

.field private static final AT_HDCP_DP_VER_13_WRITE_CMD:Ljava/lang/String; = "wdp1"

.field private static final AT_HDCP_DP_VER_22_INSTALL_CMD:Ljava/lang/String; = "idp2"

.field private static final AT_HDCP_DP_VER_22_VERIFY_CMD:Ljava/lang/String; = "vdp2"

.field private static final AT_HDCP_DP_VER_22_WRITE_CMD:Ljava/lang/String; = "wdp2"

.field private static final AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final AT_HDCP_VERIFY_CMD:Ljava/lang/String; = "vhdk"

.field private static final AT_HDCP_WRITE_CMD:Ljava/lang/String; = "whdk"

.field private static final AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final AT_RESPONSE_INTEGRITY_FAIL:Ljava/lang/String; = "NG (INTEGRITY CHK FAIL)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_SERIAL_PATH:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field private static final AT_SERIAL_PATH2:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final AT_SERIAL_PATH3:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field private static final AT_SERIAL_SIZE:I = 0x20

.field private static final AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final AT_WV_INSTALL_CMD:Ljava/lang/String; = "iwvk"

.field private static final AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final AT_WV_KEY_HUAQIN:Ljava/lang/String; = "persist/data/widevine/widevine"

.field private static final AT_WV_VERIFY_CMD:Ljava/lang/String; = "vwvk"

.field private static final AT_WV_VERIFY_CMD_JDM:Ljava/lang/String; = "jvwk"

.field private static final AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final ERROR_EXEC:I = 0x2c

.field private static final ERROR_INTERNAL:I = 0x1

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final TYPE_DIR:I = 0x1

.field private static final TYPE_FILE:I = 0x2

.field private static mContext:Landroid/content/Context; = null

.field private static final productType:Ljava/lang/String; = "in_house"


# instance fields
.field private mErrorCode:I

.field private mRunningBSD:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z

    .line 98
    invoke-static {p1}, Lcom/android/server/HdcptestATCmd;->setContext(Landroid/content/Context;)V

    .line 99
    const-string v0, "BSD_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static checkMsgIntegrity([B)Z
    .registers 8
    .param p0, "Array"    # [B

    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "ret":Z
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 491
    .local v2, "bMD1":[B
    new-array v1, v1, [B

    .line 492
    .local v1, "bMD2":[B
    array-length v3, p0

    array-length v4, v2

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 495
    .local v3, "bMsg":[B
    :try_start_c
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    array-length v4, v3

    array-length v6, v2

    invoke-static {p0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 499
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 500
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    move-object v1, v5

    .line 502
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_28} :catch_39

    const-string v6, "HdcptestATCmd"

    if-eqz v5, :cond_33

    .line 503
    const/4 v0, 0x1

    .line 504
    :try_start_2d
    const-string v5, "Integrity Check : Pass"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 506
    :cond_33
    const-string v5, "Integrity Check : Failure"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_39

    .line 510
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_38
    goto :goto_3d

    .line 508
    :catch_39
    move-exception v4

    .line 509
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3d
    return v0
.end method

.method public static checkPath(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, "tmpFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_16

    goto :goto_14

    .line 465
    :pswitch_a
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_14

    .line 462
    :pswitch_f
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 463
    nop

    .line 468
    :goto_14
    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public static execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 435
    const/16 v0, 0x2c

    .line 437
    .local v0, "ret":I
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 438
    return v0

    .line 440
    :cond_a
    if-eqz p1, :cond_30

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 446
    :cond_30
    :try_start_30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 447
    .local v1, "rt":Ljava/lang/Runtime;
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 448
    .local v2, "pc":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 449
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_41

    move v0, v3

    .line 452
    .end local v1    # "rt":Ljava/lang/Runtime;
    .end local v2    # "pc":Ljava/lang/Process;
    goto :goto_45

    .line 450
    :catch_41
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method public static getHdcp2XPath()Ljava/lang/String;
    .registers 3

    .line 475
    const-string v0, "/efs/cpk"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "HdcptestATCmd"

    if-eqz v0, :cond_13

    .line 476
    const-string v0, "/efs/cpk"

    .line 477
    .local v0, "hPath":Ljava/lang/String;
    const-string v2, "Get path : cpk"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 479
    .end local v0    # "hPath":Ljava/lang/String;
    :cond_13
    const-string v0, "/efs"

    .line 480
    .restart local v0    # "hPath":Ljava/lang/String;
    const-string v2, "Get path : legacy"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_1a
    return-object v0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p0, "hexData"    # Ljava/lang/String;

    .line 421
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 425
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 427
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_2b

    .line 428
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 430
    .end local v1    # "i":I
    :cond_2b
    return-object v0

    .line 422
    .end local v0    # "bArray":[B
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeDirectory(Ljava/lang/String;)V
    .registers 4
    .param p0, "dir"    # Ljava/lang/String;

    .line 517
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/cpk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "cpkPath":Ljava/io/File;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 519
    const-string v1, "Make cpkPath"

    const-string v2, "HdcptestATCmd"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_20

    .line 521
    const-string v1, "Make cpkPath Failse"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_20
    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "result":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 415
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_17

    .line 412
    :catch_12
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 414
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return-object v0
.end method

.method private static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    sput-object p0, Lcom/android/server/HdcptestATCmd;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public static writeFile([BLjava/lang/String;I)I
    .registers 8
    .param p0, "bArray"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 529
    const-string v0, "HdcptestATCmd"

    const/4 v1, 0x0

    .line 530
    .local v1, "hOStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 533
    .local v2, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 534
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 535
    const-string v3, "Prepare buffer stream"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 538
    const-string v3, "Write data into buffer"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 541
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 543
    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v0
    :try_end_2d
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_2d} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2d} :catch_53
    .catchall {:try_start_4 .. :try_end_2d} :catchall_50

    if-eqz v0, :cond_31

    .line 544
    const/4 v0, 0x0

    .local v0, "ret":I
    goto :goto_32

    .line 546
    .end local v0    # "ret":I
    :cond_31
    const/4 v0, 0x1

    .line 555
    .restart local v0    # "ret":I
    :goto_32
    nop

    .line 557
    :try_start_33
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_3a
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    .line 561
    :goto_36
    const/4 v2, 0x0

    .line 562
    goto :goto_3f

    .line 561
    :catchall_38
    move-exception v3

    goto :goto_4e

    .line 558
    :catch_3a
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_36

    .line 563
    :goto_3f
    nop

    .line 565
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_47
    .catchall {:try_start_40 .. :try_end_43} :catchall_45

    goto/16 :goto_9d

    .line 569
    :catchall_45
    move-exception v3

    goto :goto_4c

    .line 566
    :catch_47
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_9d

    .line 569
    :goto_4c
    const/4 v1, 0x0

    .line 570
    throw v3

    .line 561
    :goto_4e
    const/4 v2, 0x0

    .line 562
    throw v3

    .line 555
    .end local v0    # "ret":I
    :catchall_50
    move-exception v0

    goto/16 :goto_a9

    .line 551
    :catch_53
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    .line 553
    .local v3, "ret":I
    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_50

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_69

    .line 557
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_62
    .catchall {:try_start_5a .. :try_end_5d} :catchall_60

    .line 561
    :goto_5d
    const/4 v0, 0x0

    .line 562
    .end local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v0, "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v2, v0

    goto :goto_69

    .line 561
    .end local v0    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "hBOStream":Ljava/io/BufferedOutputStream;
    :catchall_60
    move-exception v0

    goto :goto_67

    .line 558
    :catch_62
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5d

    .line 561
    :goto_67
    const/4 v2, 0x0

    .line 562
    throw v0

    .line 563
    :cond_69
    :goto_69
    if-eqz v1, :cond_7c

    .line 565
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_73
    .catchall {:try_start_6b .. :try_end_6e} :catchall_71

    .line 569
    :goto_6e
    const/4 v0, 0x0

    .line 570
    .end local v1    # "hOStream":Ljava/io/FileOutputStream;
    .local v0, "hOStream":Ljava/io/FileOutputStream;
    move-object v1, v0

    goto :goto_78

    .line 569
    .end local v0    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v1    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_71
    move-exception v0

    goto :goto_7a

    .line 566
    :catch_73
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_71

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6e

    .line 570
    :goto_78
    move v0, v3

    goto :goto_a8

    .line 569
    :goto_7a
    const/4 v1, 0x0

    .line 570
    throw v0

    .line 563
    :cond_7c
    move v0, v3

    goto :goto_a8

    .line 547
    .end local v3    # "ret":I
    :catch_7e
    move-exception v3

    .line 548
    .local v3, "e":Ljava/io/SyncFailedException;
    :try_start_7f
    const-string v4, "SyncFailedException occurs"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v0, 0x1

    .line 550
    .local v0, "ret":I
    invoke-virtual {v3}, Ljava/io/SyncFailedException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_50

    .line 555
    .end local v3    # "e":Ljava/io/SyncFailedException;
    if-eqz v2, :cond_98

    .line 557
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_91
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8f

    .line 561
    :goto_8d
    const/4 v2, 0x0

    .line 562
    goto :goto_98

    .line 561
    :catchall_8f
    move-exception v3

    goto :goto_96

    .line 558
    :catch_91
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_8f

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_8d

    .line 561
    :goto_96
    const/4 v2, 0x0

    .line 562
    throw v3

    .line 563
    :cond_98
    :goto_98
    if-eqz v1, :cond_a8

    .line 565
    :try_start_9a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_a1
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9f

    .line 569
    :goto_9d
    const/4 v1, 0x0

    .line 570
    goto :goto_a8

    .line 569
    :catchall_9f
    move-exception v3

    goto :goto_a6

    .line 566
    :catch_a1
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_a2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_9f

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_9d

    .line 569
    :goto_a6
    const/4 v1, 0x0

    .line 570
    throw v3

    .line 572
    :cond_a8
    :goto_a8
    return v0

    .line 555
    .end local v0    # "ret":I
    :goto_a9
    if-eqz v2, :cond_b9

    .line 557
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_b2
    .catchall {:try_start_ab .. :try_end_ae} :catchall_b0

    .line 561
    :goto_ae
    const/4 v2, 0x0

    .line 562
    goto :goto_b9

    .line 561
    :catchall_b0
    move-exception v0

    goto :goto_b7

    .line 558
    :catch_b2
    move-exception v3

    .line 559
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_b3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_ae

    .line 561
    :goto_b7
    const/4 v2, 0x0

    .line 562
    throw v0

    .line 563
    :cond_b9
    :goto_b9
    if-eqz v1, :cond_c9

    .line 565
    :try_start_bb
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c2
    .catchall {:try_start_bb .. :try_end_be} :catchall_c0

    .line 569
    :goto_be
    const/4 v1, 0x0

    .line 570
    goto :goto_c9

    .line 569
    :catchall_c0
    move-exception v0

    goto :goto_c7

    .line 566
    :catch_c2
    move-exception v3

    .line 567
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_c3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_c0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_be

    .line 569
    :goto_c7
    const/4 v1, 0x0

    .line 570
    throw v0

    .line 571
    :cond_c9
    :goto_c9
    throw v0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 104
    const-string v0, "HDCPTEST"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .param p1, "cmd"    # Ljava/lang/String;

    .line 114
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "/h2k.dat"

    const-string v4, "/sys/class/sec/ufs/un"

    const-string v5, "NG (EXCEPTION)"

    const-string v6, ""

    .line 115
    .local v6, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HdcptestATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "params":[Ljava/lang/String;
    const-string v8, "0,0"

    const-string v9, "0,3"

    const-string v10, "0,4"

    const-string v11, "0,5"

    const-string v12, "1,0"

    const-string v13, "2,"

    const-string v14, "3,3,"

    const-string v15, "3,4,"

    const-string v16, "3,5,"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "supportedParams":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 130
    .local v9, "hIStream":Ljava/io/FileInputStream;
    const-string v10, "NG (INVALID_PARAM)"

    const-string v11, "HdcptestATCmd"

    if-nez v7, :cond_34

    .line 131
    const-string/jumbo v3, "processCmd: params is null"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v10

    .line 135
    :cond_34
    const-string v12, "/efs"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_45

    .line 136
    const-string v3, "efs partition is not mounted"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "NG (NO_EFS)"

    return-object v3

    .line 141
    :cond_45
    :try_start_45
    iget-boolean v14, v1, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_47} :catch_757
    .catchall {:try_start_45 .. :try_end_47} :catchall_752

    if-nez v14, :cond_5c

    .line 142
    :try_start_49
    const-string v14, "Start BSD service!"

    invoke-static {v11, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v14, "ctl.start"

    const-string v15, "bsd"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-boolean v13, v1, Lcom/android/server/HdcptestATCmd;->mRunningBSD:Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_57} :catch_58
    .catchall {:try_start_49 .. :try_end_57} :catchall_78f

    goto :goto_5c

    .line 389
    :catch_58
    move-exception v0

    move-object v3, v0

    goto/16 :goto_75b

    .line 147
    :cond_5c
    :goto_5c
    :try_start_5c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v13, v7, v15

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 150
    aget-object v13, v8, v15

    aget-object v14, v8, v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_83} :catch_757
    .catchall {:try_start_5c .. :try_end_83} :catchall_752

    const-string v14, "NG_KEY"

    const-string v15, "NG_FIELD"

    const-string v18, "/efs/cpk"

    move-object/from16 v19, v9

    .end local v9    # "hIStream":Ljava/io/FileInputStream;
    .local v19, "hIStream":Ljava/io/FileInputStream;
    const-string v9, "NG (ERROR_EXEC)"

    move-object/from16 v20, v5

    const-string v5, "OK"

    move-object/from16 v21, v10

    const/4 v10, 0x2

    if-eqz v13, :cond_168

    .line 151
    :try_start_96
    const-string v4, "AT+HDCPTEST=0,0"

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v4, v18

    .line 155
    .local v4, "hPath":Ljava/lang/String;
    const-string/jumbo v13, "vhdk"

    invoke-virtual {v1, v13}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v13

    .line 157
    .local v13, "ret":I
    if-nez v13, :cond_ba

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_14f

    .line 160
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_ba
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_126

    .line 161
    move-object v4, v12

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_14f

    .line 165
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_fc
    const/16 v3, 0x2c

    if-ne v13, v3, :cond_113

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_14f

    .line 168
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_14f

    .line 171
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_126
    const/16 v3, 0x2c

    if-ne v13, v3, :cond_13d

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_14f

    .line 174
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_13d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 178
    :goto_14f
    const-string v3, "0,0 is complete!"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_154} :catch_160
    .catchall {:try_start_96 .. :try_end_154} :catchall_158

    .line 179
    move-object/from16 v9, v19

    .end local v4    # "hPath":Ljava/lang/String;
    .end local v13    # "ret":I
    goto/16 :goto_730

    .line 393
    :catchall_158
    move-exception v0

    move-object v3, v0

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_791

    .line 389
    :catch_160
    move-exception v0

    move-object v3, v0

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_75b

    .line 181
    :cond_168
    const/4 v3, 0x1

    :try_start_169
    aget-object v12, v8, v3

    aget-object v13, v8, v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_17a} :catch_74b
    .catchall {:try_start_169 .. :try_end_17a} :catchall_744

    if-eqz v3, :cond_219

    .line 182
    :try_start_17c
    const-string v3, "AT+HDCPTEST=0,3"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v3, 0x2c

    .line 184
    .local v3, "ret":I
    const-string/jumbo v4, "jdm"

    const-string/jumbo v12, "in_house"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19d

    .line 185
    const-string v4, "0,3 test for jdm"

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v4, "jvwk"

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_1d2

    .line 188
    :cond_19d
    const-string/jumbo v4, "ro.product.first_api_level"

    const/4 v12, 0x0

    invoke-static {v4, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1a5} :catch_160
    .catchall {:try_start_17c .. :try_end_1a5} :catchall_158

    const/16 v12, 0x1d

    const-string/jumbo v13, "vwvk"

    if-ge v4, v12, :cond_1cd

    .line 189
    :try_start_1ac
    const-string v4, "/efs/wv.keys"

    invoke-static {v4, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1c7

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_1d2

    .line 192
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_1c7
    invoke-virtual {v1, v13}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_1d2

    .line 195
    :cond_1cd
    invoke-virtual {v1, v13}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 198
    :goto_1d2
    if-nez v3, :cond_1e7

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_210

    .line 200
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_1e7
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1fe

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_210

    .line 203
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_1fe
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 205
    :goto_210
    const-string v4, "0,3 is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_215} :catch_160
    .catchall {:try_start_1ac .. :try_end_215} :catchall_158

    .line 206
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    goto/16 :goto_730

    .line 208
    :cond_219
    :try_start_219
    aget-object v3, v8, v10

    aget-object v12, v8, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_22a} :catch_74b
    .catchall {:try_start_219 .. :try_end_22a} :catchall_744

    const-string v12, "NG"

    if-eqz v3, :cond_29e

    .line 209
    :try_start_22e
    const-string v3, "AT+HDCPTEST=0,4"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v3, "vdp2"

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 213
    .restart local v3    # "ret":I
    if-nez v3, :cond_24f

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_295

    .line 216
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_24f
    const-string/jumbo v4, "idp2"

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 217
    if-nez v3, :cond_26c

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_295

    .line 219
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_26c
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_283

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_295

    .line 222
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 225
    :goto_295
    const-string v4, "0,4 is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_29a} :catch_160
    .catchall {:try_start_22e .. :try_end_29a} :catchall_158

    .line 226
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    goto/16 :goto_730

    .line 228
    :cond_29e
    const/4 v3, 0x3

    :try_start_29f
    aget-object v13, v8, v3

    aget-object v3, v8, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2b0} :catch_74b
    .catchall {:try_start_29f .. :try_end_2b0} :catchall_744

    if-eqz v3, :cond_322

    .line 229
    :try_start_2b2
    const-string v3, "AT+HDCPTEST=0,5"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v3, "vdp1"

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 233
    .restart local v3    # "ret":I
    if-nez v3, :cond_2d3

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_319

    .line 236
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2d3
    const-string/jumbo v4, "idp1"

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 237
    if-nez v3, :cond_2f0

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_319

    .line 239
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_2f0
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_307

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_319

    .line 242
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 245
    :goto_319
    const-string v4, "0,5 is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31e
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_31e} :catch_160
    .catchall {:try_start_2b2 .. :try_end_31e} :catchall_158

    .line 246
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    goto/16 :goto_730

    .line 248
    :cond_322
    const/4 v3, 0x4

    :try_start_323
    aget-object v13, v8, v3

    aget-object v3, v8, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_334
    .catch Ljava/lang/Exception; {:try_start_323 .. :try_end_334} :catch_74b
    .catchall {:try_start_323 .. :try_end_334} :catchall_744

    if-eqz v3, :cond_424

    .line 249
    :try_start_336
    const-string v3, "AT+HDCPTEST=1,0"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, "serialNo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 253
    .local v5, "serialPath":Ljava/lang/String;
    const-string v9, "S000000000000000"

    .line 255
    .local v9, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    nop

    .line 256
    invoke-static {v4, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v12
    :try_end_344
    .catch Ljava/lang/Exception; {:try_start_336 .. :try_end_344} :catch_160
    .catchall {:try_start_336 .. :try_end_344} :catchall_158

    const-string v13, "/sys/block/mmcblk0/device/cid"

    const-string v14, "/sys/class/scsi_host/host0/unique_number"

    if-eqz v12, :cond_34c

    .line 257
    move-object v5, v4

    goto :goto_35b

    .line 258
    :cond_34c
    :try_start_34c
    invoke-static {v14, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_354

    .line 259
    move-object v5, v14

    goto :goto_35b

    .line 260
    :cond_354
    invoke-static {v13, v10}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_35b

    .line 261
    move-object v5, v13

    .line 264
    :cond_35b
    :goto_35b
    if-eqz v5, :cond_3aa

    .line 265
    const/16 v10, 0x20

    new-array v10, v10, [B

    .line 267
    .local v10, "bArray":[B
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_366
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_366} :catch_160
    .catchall {:try_start_34c .. :try_end_366} :catchall_158

    .line 268
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .local v12, "hIStream":Ljava/io/FileInputStream;
    :try_start_366
    invoke-virtual {v12, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    move-object/from16 v17, v3

    .end local v3    # "serialNo":Ljava/lang/String;
    .local v17, "serialNo":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v15, v3, :cond_392

    .line 269
    if-eq v5, v14, :cond_388

    if-ne v5, v4, :cond_374

    goto :goto_388

    .line 271
    :cond_374
    if-ne v5, v13, :cond_397

    .line 272
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    const/16 v13, 0x20

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    goto :goto_399

    .line 270
    .end local v3    # "serialNo":Ljava/lang/String;
    .restart local v17    # "serialNo":Ljava/lang/String;
    :cond_388
    :goto_388
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    goto :goto_399

    .line 275
    .end local v3    # "serialNo":Ljava/lang/String;
    .restart local v17    # "serialNo":Ljava/lang/String;
    :cond_392
    const-string v3, "Read S/N Failed"

    invoke-static {v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_397
    .catch Ljava/lang/Exception; {:try_start_366 .. :try_end_397} :catch_3a3
    .catchall {:try_start_366 .. :try_end_397} :catchall_39c

    .line 277
    .end local v10    # "bArray":[B
    :cond_397
    move-object/from16 v3, v17

    .end local v17    # "serialNo":Ljava/lang/String;
    .restart local v3    # "serialNo":Ljava/lang/String;
    :goto_399
    move-object/from16 v19, v12

    goto :goto_3ac

    .line 393
    .end local v3    # "serialNo":Ljava/lang/String;
    .end local v5    # "serialPath":Ljava/lang/String;
    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :catchall_39c
    move-exception v0

    move-object v3, v0

    move-object v9, v12

    move-object/from16 v5, v20

    goto/16 :goto_791

    .line 389
    :catch_3a3
    move-exception v0

    move-object v3, v0

    move-object v9, v12

    move-object/from16 v5, v20

    goto/16 :goto_75b

    .line 264
    .end local v12    # "hIStream":Ljava/io/FileInputStream;
    .restart local v3    # "serialNo":Ljava/lang/String;
    .restart local v5    # "serialPath":Ljava/lang/String;
    .restart local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v19    # "hIStream":Ljava/io/FileInputStream;
    :cond_3aa
    move-object/from16 v17, v3

    .line 282
    :goto_3ac
    if-nez v3, :cond_3b1

    .line 283
    :try_start_3ae
    const-string v4, "S000000000000000"

    move-object v3, v4

    .line 286
    :cond_3b1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v10, 0x10

    if-lt v4, v10, :cond_3bb

    .line 287
    move-object v4, v3

    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .local v4, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    goto :goto_3f3

    .line 288
    .end local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :cond_3bb
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3da

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    goto :goto_3f3

    .line 291
    .end local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :cond_3da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .end local v9    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    :goto_3f3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Serial Number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 297
    const-string v9, "1,0 is complete."

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_420
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_420} :catch_160
    .catchall {:try_start_3ae .. :try_end_420} :catchall_158

    .line 298
    move-object/from16 v9, v19

    .end local v3    # "serialNo":Ljava/lang/String;
    .end local v4    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v5    # "serialPath":Ljava/lang/String;
    goto/16 :goto_730

    .line 300
    :cond_424
    const/4 v3, 0x5

    :try_start_425
    aget-object v3, v8, v3

    const/4 v4, 0x5

    aget-object v4, v8, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_437
    .catch Ljava/lang/Exception; {:try_start_425 .. :try_end_437} :catch_74b
    .catchall {:try_start_425 .. :try_end_437} :catchall_744

    const-string v4, "NG (NO_DATA)"

    if-eqz v3, :cond_4c7

    .line 301
    const/4 v3, 0x1

    :try_start_43c
    aget-object v9, v7, v3

    if-eqz v9, :cond_4ac

    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_449

    goto :goto_4ac

    .line 304
    :cond_449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Param size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v9, v7, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static/range {v18 .. v18}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "whdk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_499

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto :goto_4be

    .line 310
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .end local v6    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_4be

    .line 302
    .end local v3    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_4ac
    :goto_4ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 314
    :goto_4be
    const-string v3, "2,Data is complete."

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c3
    .catch Ljava/lang/Exception; {:try_start_43c .. :try_end_4c3} :catch_160
    .catchall {:try_start_43c .. :try_end_4c3} :catchall_158

    move-object/from16 v9, v19

    goto/16 :goto_730

    .line 317
    :cond_4c7
    const/4 v3, 0x6

    :try_start_4c8
    aget-object v3, v8, v3

    const/4 v13, 0x6

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4da
    .catch Ljava/lang/Exception; {:try_start_4c8 .. :try_end_4da} :catch_74b
    .catchall {:try_start_4c8 .. :try_end_4da} :catchall_744

    if-eqz v3, :cond_57f

    .line 318
    :try_start_4dc
    const-string v3, "AT+HDCPTEST=3,3,Data"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    aget-object v3, v7, v10

    if-eqz v3, :cond_564

    aget-object v3, v7, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4ef

    goto/16 :goto_564

    .line 323
    :cond_4ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Param size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v7, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iwvk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v7, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, "ret":I
    if-nez v3, :cond_53a

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    goto :goto_576

    .line 329
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_53a
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_551

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_576

    .line 332
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_576

    .line 321
    .end local v3    # "ret":I
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_564
    :goto_564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 335
    :goto_576
    const-string v3, "3,3,Data is complete."

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57b
    .catch Ljava/lang/Exception; {:try_start_4dc .. :try_end_57b} :catch_160
    .catchall {:try_start_4dc .. :try_end_57b} :catchall_158

    move-object/from16 v9, v19

    goto/16 :goto_730

    .line 338
    :cond_57f
    const/4 v3, 0x7

    :try_start_580
    aget-object v3, v8, v3

    const/4 v9, 0x7

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_592
    .catch Ljava/lang/Exception; {:try_start_580 .. :try_end_592} :catch_74b
    .catchall {:try_start_580 .. :try_end_592} :catchall_744

    if-eqz v3, :cond_64c

    .line 339
    :try_start_594
    const-string v3, "AT+HDCPTEST=3,4,Data"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v3, 0x0

    .line 342
    .restart local v3    # "ret":I
    aget-object v9, v7, v10

    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 344
    .local v9, "bArray":[B
    if-nez v9, :cond_5b6

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_643

    .line 346
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_5b6
    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v4

    if-nez v4, :cond_5e8

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check integtiry -size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_643

    .line 350
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_5e8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bArray size : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v13, v9

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static/range {v18 .. v18}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wdp2"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v7, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_631

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_643

    .line 356
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 360
    :goto_643
    const-string v4, "3,4,Data is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_648
    .catch Ljava/lang/Exception; {:try_start_594 .. :try_end_648} :catch_160
    .catchall {:try_start_594 .. :try_end_648} :catchall_158

    .line 361
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    .end local v9    # "bArray":[B
    goto/16 :goto_730

    .line 364
    :cond_64c
    const/16 v3, 0x8

    :try_start_64e
    aget-object v3, v8, v3

    const/16 v9, 0x8

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_661
    .catch Ljava/lang/Exception; {:try_start_64e .. :try_end_661} :catch_74b
    .catchall {:try_start_64e .. :try_end_661} :catchall_744

    if-eqz v3, :cond_71a

    .line 365
    :try_start_663
    const-string v3, "AT+HDCPTEST=3,5,Data"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v3, 0x0

    .line 368
    .restart local v3    # "ret":I
    aget-object v9, v7, v10

    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 370
    .restart local v9    # "bArray":[B
    if-nez v9, :cond_685

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_712

    .line 372
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_685
    invoke-static {v9}, Lcom/android/server/HdcptestATCmd;->checkMsgIntegrity([B)Z

    move-result v4

    if-nez v4, :cond_6b7

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check integtiry -size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NG (INTEGRITY CHK FAIL)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_712

    .line 376
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_6b7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bArray size : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v13, v9

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static/range {v18 .. v18}, Lcom/android/server/HdcptestATCmd;->makeDirectory(Ljava/lang/String;)V

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "wdp1"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v7, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/HdcptestATCmd;->sendTobsd(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_700

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .end local v6    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_712

    .line 382
    .end local v4    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 385
    :goto_712
    const-string v4, "3,5,Data is complete."

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_717
    .catch Ljava/lang/Exception; {:try_start_663 .. :try_end_717} :catch_160
    .catchall {:try_start_663 .. :try_end_717} :catchall_158

    .line 386
    move-object/from16 v9, v19

    .end local v3    # "ret":I
    .end local v9    # "bArray":[B
    goto :goto_730

    .line 387
    :cond_71a
    :try_start_71a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_72d
    .catch Ljava/lang/Exception; {:try_start_71a .. :try_end_72d} :catch_74b
    .catchall {:try_start_71a .. :try_end_72d} :catchall_744

    move-object v6, v3

    move-object/from16 v9, v19

    .line 394
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .local v9, "hIStream":Ljava/io/FileInputStream;
    :goto_730
    if-eqz v9, :cond_78d

    .line 395
    :try_start_732
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_735
    .catch Ljava/lang/Exception; {:try_start_732 .. :try_end_735} :catch_736

    goto :goto_78d

    .line 397
    :catch_736
    move-exception v0

    move-object v3, v0

    .line 398
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v20

    goto :goto_781

    .line 393
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "hIStream":Ljava/io/FileInputStream;
    .restart local v19    # "hIStream":Ljava/io/FileInputStream;
    :catchall_744
    move-exception v0

    move-object/from16 v5, v20

    move-object v3, v0

    move-object/from16 v9, v19

    goto :goto_791

    .line 389
    :catch_74b
    move-exception v0

    move-object/from16 v5, v20

    move-object v3, v0

    move-object/from16 v9, v19

    goto :goto_75b

    .line 393
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .restart local v9    # "hIStream":Ljava/io/FileInputStream;
    :catchall_752
    move-exception v0

    move-object/from16 v19, v9

    move-object v3, v0

    .end local v9    # "hIStream":Ljava/io/FileInputStream;
    .restart local v19    # "hIStream":Ljava/io/FileInputStream;
    goto :goto_791

    .line 389
    .end local v19    # "hIStream":Ljava/io/FileInputStream;
    .restart local v9    # "hIStream":Ljava/io/FileInputStream;
    :catch_757
    move-exception v0

    move-object/from16 v19, v9

    move-object v3, v0

    .line 390
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_75b
    :try_start_75b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 391
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_770
    .catchall {:try_start_75b .. :try_end_770} :catchall_78f

    .line 394
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_78d

    .line 395
    :try_start_772
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_775
    .catch Ljava/lang/Exception; {:try_start_772 .. :try_end_775} :catch_776

    goto :goto_78d

    .line 397
    :catch_776
    move-exception v0

    move-object v3, v0

    .line 398
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_781
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 399
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_78e

    .line 400
    :cond_78d
    :goto_78d
    nop

    .line 403
    :goto_78e
    return-object v6

    .line 393
    :catchall_78f
    move-exception v0

    move-object v3, v0

    .line 394
    :goto_791
    if-eqz v9, :cond_7ae

    .line 395
    :try_start_793
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_796
    .catch Ljava/lang/Exception; {:try_start_793 .. :try_end_796} :catch_797

    goto :goto_7ae

    .line 397
    :catch_797
    move-exception v0

    move-object v4, v0

    .line 398
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 399
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7af

    .line 400
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7ae
    :goto_7ae
    nop

    .line 401
    :goto_7af
    throw v3
.end method

.method native sendTobsd(Ljava/lang/String;)I
.end method
