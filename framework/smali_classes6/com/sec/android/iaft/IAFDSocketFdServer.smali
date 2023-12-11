.class public Lcom/sec/android/iaft/IAFDSocketFdServer;
.super Ljava/lang/Thread;
.source "IAFDSocketFdServer.java"


# static fields
.field private static final CIPER_POS:I = 0x2

.field static final DECRYPT_ARDB_NAME:Ljava/lang/String; = "ardbhotfix_db.bin.enc.dec"

.field static final DECRYPT_HOTFIX_SUFFIX:Ljava/lang/String; = ".dec"

.field static final DECRYPT_IAFDDB_NAME:Ljava/lang/String; = "iafddbhotfix_db.bin.enc.dec"

.field static final DEXPATH_DEENCRYPT:Ljava/lang/String; = "/iafd/dex/"

.field static final ENCRYPT_HOTFIX_DEX_SUFFIX:Ljava/lang/String; = "_dex"

.field static final ENCRYPT_HOTFIX_SUFFIX:Ljava/lang/String; = ".bin.enc"

.field private static final HOTFIX_END:Ljava/lang/String; = "resourcesapybhotfixczfileend"

.field private static final HOTFIX_START:Ljava/lang/String; = "resourcesapybhotfixczfilestart"

.field static final IAFDDBPATH_DEENCRYPT:Ljava/lang/String; = "/iafd/db/"

.field static final IAFDPKEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwaCLv6RvwU8gyFSbynkiPI1Yjb4O3PjCoTQOJadMly1MfePjpFFddlbHnEhyXZqK5znGPNCa/+grdCBV6bbdVf1DTjzcrleKeD6LwC5cioMMjtu91MqrZwDSyAvi6cpdiskEJ/ht+lDJGTdE5bpxJl5tQyy+HrXQk2wJFp3fTWwIDAQAB"

.field static final IAFD_ABSOLUTEPATH:Ljava/lang/String; = "/data/user/0/com.sec.android.iaft"

.field private static final IAFD_SOCKET_PORT:I = 0x8e8

.field private static final NAME_POS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IAFDSocketFdServerThread"


# instance fields
.field private final IAFDPATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPreStartTime:J

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const-string v0, "IAFDSocketFdServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 23
    const-string v0, "/iafd/"

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->IAFDPATH:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mContext:Landroid/content/Context;

    .line 40
    :try_start_e
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x8e8

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    .line 43
    goto :goto_1c

    .line 41
    :catch_18
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method private saveFile(Ljava/io/InputStream;)V
    .registers 20
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    const-string v0, "saveFileing..."

    const-string v1, "IAFDSocketFdServerThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, ","

    .line 85
    .local v0, "comma":Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 88
    .local v3, "ciphertext":Ljava/lang/String;
    new-instance v4, Lcom/sec/android/iaft/IAFDFileHexUtils;

    invoke-direct {v4}, Lcom/sec/android/iaft/IAFDFileHexUtils;-><init>()V

    .line 90
    .local v4, "f2h":Lcom/sec/android/iaft/IAFDFileHexUtils;
    const-string v5, "/data/user/0/com.sec.android.iaft"

    .line 93
    .local v5, "absolutePath":Ljava/lang/String;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    .local v6, "buf":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 95
    .local v7, "isIAFDDBHOTFIX_UPDATE":Z
    const/4 v9, 0x0

    .line 96
    .local v9, "isARDBHOTFIX_UPDATE":Z
    const/4 v10, 0x0

    .line 99
    .local v10, "content":Ljava/lang/String;
    :goto_21
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    if-eqz v11, :cond_ce

    .line 101
    const-string v11, "resourcesapybhotfixczfilestart"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 102
    .local v11, "start":I
    const-string v12, "resourcesapybhotfixczfileend"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 103
    .local v12, "end":I
    if-lez v11, :cond_c6

    if-lez v12, :cond_c6

    .line 104
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "subContent":Ljava/lang/String;
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "item":[Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v2, v14, v15

    .line 107
    const/4 v15, 0x2

    aget-object v3, v14, v15

    .line 109
    const-string v15, "_dex"

    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    move-object/from16 v16, v0

    .end local v0    # "comma":Ljava/lang/String;
    .local v16, "comma":Ljava/lang/String;
    const-string v0, ".bin.enc"

    if-eqz v15, :cond_7e

    .line 110
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v8, "/iafd/dex/"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v3, v0}, Lcom/sec/android/iaft/IAFDFileHexUtils;->makeHexStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v8, p1

    move-object/from16 v0, v16

    goto :goto_21

    .line 112
    :cond_7e
    invoke-virtual {v4, v3}, Lcom/sec/android/iaft/IAFDFileHexUtils;->makeHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 113
    .local v8, "bs":[B
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v17, v3

    .end local v3    # "ciphertext":Ljava/lang/String;
    .local v17, "ciphertext":Ljava/lang/String;
    const-string v3, "/iafd/db/"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".dec"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwaCLv6RvwU8gyFSbynkiPI1Yjb4O3PjCoTQOJadMly1MfePjpFFddlbHnEhyXZqK5znGPNCa/+grdCBV6bbdVf1DTjzcrleKeD6LwC5cioMMjtu91MqrZwDSyAvi6cpdiskEJ/ht+lDJGTdE5bpxJl5tQyy+HrXQk2wJFp3fTWwIDAQAB"

    invoke-static {v8, v3, v0}, Lcom/sec/android/iaft/IAFDRSAUtils;->decryptBytesToFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "iafddbhotfix_db"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 116
    const/4 v0, 0x1

    move v7, v0

    .line 118
    :cond_b4
    const-string v0, "ardbhotfix_db"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 119
    const/4 v0, 0x1

    move v9, v0

    .line 121
    .end local v8    # "bs":[B
    :cond_be
    move-object/from16 v8, p1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto/16 :goto_21

    .line 103
    .end local v13    # "subContent":Ljava/lang/String;
    .end local v14    # "item":[Ljava/lang/String;
    .end local v16    # "comma":Ljava/lang/String;
    .end local v17    # "ciphertext":Ljava/lang/String;
    .restart local v0    # "comma":Ljava/lang/String;
    .restart local v3    # "ciphertext":Ljava/lang/String;
    :cond_c6
    move-object/from16 v16, v0

    .line 99
    .end local v0    # "comma":Ljava/lang/String;
    .end local v11    # "start":I
    .end local v12    # "end":I
    .restart local v16    # "comma":Ljava/lang/String;
    move-object/from16 v8, p1

    move-object/from16 v0, v16

    goto/16 :goto_21

    .line 124
    .end local v16    # "comma":Ljava/lang/String;
    .restart local v0    # "comma":Ljava/lang/String;
    :cond_ce
    move-object/from16 v16, v0

    .end local v0    # "comma":Ljava/lang/String;
    .restart local v16    # "comma":Ljava/lang/String;
    if-eqz v7, :cond_df

    .line 125
    const-string v0, "CMD_IAFDDB_HOTFIXDB_UPDATE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager;->updateHotfixDB_IAFDDB()V

    .line 131
    const/4 v7, 0x0

    .line 133
    :cond_df
    if-eqz v9, :cond_ee

    .line 134
    const-string v0, "CMD_ARDB_HOTFIXDB_UPDATE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager;->updateHotfixDB_ARDB()V

    .line 136
    const/4 v9, 0x0

    .line 138
    :cond_ee
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 139
    const-string v0, "saveFile completed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "bExit":Z
    const-wide/32 v1, 0x36ee80

    .line 50
    .local v1, "TIME_INTERVAL":J
    const/4 v3, 0x0

    .line 51
    .local v3, "socketFdExceptionCnt":I
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mPreStartTime:J

    .line 53
    :goto_9
    const-string v4, "IAFDSocketFdServerThread"

    if-eqz v0, :cond_14

    .line 54
    const-string v5, "socketFd Server happened exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    nop

    .line 80
    return-void

    .line 58
    :cond_14
    :try_start_14
    const-string v5, "Successfully start socketFd Server."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v5, :cond_26

    new-instance v5, Ljava/net/ServerSocket;

    const/16 v6, 0x8e8

    invoke-direct {v5, v6}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v5, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 60
    :cond_26
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    .line 61
    .local v5, "socket":Ljava/net/Socket;
    const-string v6, "start to get data."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 63
    .local v4, "in":Ljava/io/InputStream;
    invoke-direct {p0, v4}, Lcom/sec/android/iaft/IAFDSocketFdServer;->saveFile(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 65
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3e} :catch_3f

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "socket":Ljava/net/Socket;
    goto :goto_5b

    .line 66
    :catch_3f
    move-exception v4

    .line 67
    .local v4, "e":Ljava/lang/Exception;
    if-nez v3, :cond_48

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mPreStartTime:J

    .line 70
    :cond_48
    add-int/lit8 v3, v3, 0x1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 72
    .local v5, "curTime":J
    iget-wide v7, p0, Lcom/sec/android/iaft/IAFDSocketFdServer;->mPreStartTime:J

    add-long/2addr v7, v1

    cmp-long v7, v5, v7

    if-lez v7, :cond_56

    .line 73
    const/4 v3, 0x0

    .line 75
    :cond_56
    const/16 v7, 0x14

    if-le v3, v7, :cond_5b

    .line 76
    const/4 v0, 0x1

    .line 78
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "curTime":J
    :cond_5b
    :goto_5b
    goto :goto_9
.end method
