.class final Lcom/samsung/android/authenticator/AidlHalService;
.super Ljava/lang/Object;
.source "AidlHalService.java"

# interfaces
.implements Lcom/samsung/android/authenticator/XidlHalService;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "AHS"


# instance fields
.field private mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    .line 43
    return-void
.end method

.method private checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 68
    .local p1, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .line 71
    return-object p1

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not found service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private execute(I[B)[B
    .registers 10
    .param p1, "type"    # I
    .param p2, "command"    # [B

    .line 164
    const-string v0, "AHS"

    if-nez p1, :cond_c

    .line 165
    const-string/jumbo v1, "type can not be 0"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/authenticator/AidlHalService;->getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/authenticator/AidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    .line 170
    .local v1, "service":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    const/4 v2, 0x0

    .line 172
    .local v2, "resultByte":[B
    :try_start_17
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->execute(I[B)Lvendor/samsung/hardware/authfw/SehResult;

    move-result-object v3

    .line 173
    .local v3, "sehResult":Lvendor/samsung/hardware/authfw/SehResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lvendor/samsung/hardware/authfw/SehResult;->status:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    if-nez v5, :cond_39

    const/4 v5, -0x1

    goto :goto_3c

    :cond_39
    iget-object v5, v3, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length v5, v5

    :goto_3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v4, v3, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    if-eqz v4, :cond_5f

    iget-object v4, v3, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length v4, v4

    if-lez v4, :cond_5f

    .line 175
    iget-object v4, v3, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length v4, v4

    new-array v4, v4, [B

    move-object v2, v4

    .line 176
    iget-object v4, v3, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    iget-object v5, v3, Lvendor/samsung/hardware/authfw/SehResult;->data:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_5f} :catch_60

    .line 181
    .end local v3    # "sehResult":Lvendor/samsung/hardware/authfw/SehResult;
    :cond_5f
    goto :goto_7f

    .line 178
    :catch_60
    move-exception v3

    .line 179
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 182
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_7f
    return-object v2
.end method

.method private declared-synchronized getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    .registers 3

    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_37

    if-nez v0, :cond_33

    .line 54
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    .line 57
    if-eqz v0, :cond_2e

    .line 58
    invoke-interface {v0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2e} :catch_2f
    .catchall {:try_start_5 .. :try_end_2e} :catchall_37

    .line 62
    .end local p0    # "this":Lcom/samsung/android/authenticator/AidlHalService;
    :cond_2e
    goto :goto_33

    .line 60
    :catch_2f
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/samsung/android/authenticator/AidlHalService;
    :cond_33
    :goto_33
    :try_start_33
    iget-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object v0

    .line 51
    .end local p0    # "this":Lcom/samsung/android/authenticator/AidlHalService;
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private load(ILandroid/os/ParcelFileDescriptor;JJ)Z
    .registers 21
    .param p1, "type"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "offset"    # J
    .param p5, "len"    # J

    .line 85
    move v1, p1

    const-string v2, "AHS"

    const/4 v3, 0x0

    if-nez v1, :cond_d

    .line 86
    const-string/jumbo v0, "type can not be 0"

    invoke-static {v2, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v3

    .line 90
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/authenticator/AidlHalService;->getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v0

    move-object v4, p0

    invoke-direct {p0, v0}, Lcom/samsung/android/authenticator/AidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    .line 91
    .local v5, "service":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    new-array v6, v3, [B

    .line 93
    .local v6, "contents":[B
    if-eqz p2, :cond_90

    .line 94
    :try_start_1d
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_71

    move-object v7, v0

    .line 95
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_61

    move-object v8, v0

    .line 96
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x2800

    :try_start_2f
    new-array v0, v0, [B
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_51

    .line 97
    .local v0, "buffer":[B
    const/4 v9, -0x1

    .line 99
    .local v9, "count":I
    move-wide/from16 v10, p3

    :try_start_34
    invoke-virtual {v7, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    .line 100
    :goto_37
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    move v9, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_43

    .line 101
    invoke-virtual {v8, v0, v3, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_37

    .line 103
    :cond_43
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_4f

    move-object v6, v12

    .line 104
    .end local v0    # "buffer":[B
    .end local v9    # "count":I
    :try_start_48
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_5f

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_4b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_6f

    .line 107
    .end local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_92

    .line 94
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_4f
    move-exception v0

    goto :goto_54

    :catchall_51
    move-exception v0

    move-wide/from16 v10, p3

    :goto_54
    move-object v9, v0

    :try_start_55
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5e

    :catchall_59
    move-exception v0

    move-object v12, v0

    :try_start_5b
    invoke-virtual {v9, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "service":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    .end local v6    # "contents":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/samsung/android/authenticator/AidlHalService;
    .end local p1    # "type":I
    .end local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "offset":J
    .end local p5    # "len":J
    :goto_5e
    throw v9
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "service":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    .restart local v6    # "contents":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/samsung/android/authenticator/AidlHalService;
    .restart local p1    # "type":I
    .restart local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "offset":J
    .restart local p5    # "len":J
    :catchall_5f
    move-exception v0

    goto :goto_64

    :catchall_61
    move-exception v0

    move-wide/from16 v10, p3

    :goto_64
    move-object v8, v0

    :try_start_65
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6e

    :catchall_69
    move-exception v0

    move-object v9, v0

    :try_start_6b
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "service":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    .end local v6    # "contents":[B
    .end local p0    # "this":Lcom/samsung/android/authenticator/AidlHalService;
    .end local p1    # "type":I
    .end local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "offset":J
    .end local p5    # "len":J
    :goto_6e
    throw v8
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    .line 104
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "service":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    .restart local v6    # "contents":[B
    .restart local p0    # "this":Lcom/samsung/android/authenticator/AidlHalService;
    .restart local p1    # "type":I
    .restart local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "offset":J
    .restart local p5    # "len":J
    :catch_6f
    move-exception v0

    goto :goto_74

    :catch_71
    move-exception v0

    move-wide/from16 v10, p3

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :goto_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "save file error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return v3

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_90
    move-wide/from16 v10, p3

    .line 111
    :goto_92
    :try_start_92
    invoke-interface {v5, p1, v6}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->load(I[B)Z

    move-result v0

    .line 112
    .local v0, "ret":Z
    if-nez v0, :cond_b0

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_af} :catch_b1

    .line 114
    return v3

    .line 119
    .end local v0    # "ret":Z
    :cond_b0
    goto :goto_d0

    .line 116
    :catch_b1
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initialize failed : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d0
    const/4 v0, 0x1

    return v0
.end method

.method private translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I
    .registers 4
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    .line 198
    sget-object v0, Lcom/samsung/android/authenticator/AidlHalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppAssetType:[I

    invoke-virtual {p1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 204
    const/4 v0, 0x0

    return v0

    .line 202
    :pswitch_d
    const/16 v0, 0x2711

    return v0

    .line 200
    :pswitch_10
    const/16 v0, 0x2710

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .registers 4
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 186
    sget-object v0, Lcom/samsung/android/authenticator/AidlHalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I

    invoke-virtual {p1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 194
    const/4 v0, 0x0

    return v0

    .line 192
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 190
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 188
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private unload(I)Z
    .registers 8
    .param p1, "type"    # I

    .line 134
    const/4 v0, 0x0

    const-string v1, "AHS"

    if-nez p1, :cond_c

    .line 135
    const-string/jumbo v2, "type can not be 0"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return v0

    .line 139
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/authenticator/AidlHalService;->getService()Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/authenticator/AidlHalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    .line 141
    .local v2, "service":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    :try_start_16
    invoke-interface {v2, p1}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->terminate(I)Z

    move-result v3

    .line 142
    .local v3, "ret":Z
    if-nez v3, :cond_34

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unload fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_33} :catch_35

    .line 144
    return v0

    .line 149
    .end local v3    # "ret":Z
    :cond_34
    goto :goto_54

    .line 146
    :catch_35
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminate failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_54
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 209
    const-string v0, "AHS"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lcom/samsung/android/authenticator/AuthenticatorLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/authenticator/AidlHalService;->mService:Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    .line 211
    return-void
.end method

.method public execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B
    .registers 4
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p2, "command"    # [B

    .line 160
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/authenticator/AidlHalService;->execute(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B
    .registers 4
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .param p2, "command"    # [B

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/authenticator/AidlHalService;->execute(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    .line 47
    sget-object v0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "instances":[Ljava/lang/String;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 14
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "offset"    # J
    .param p5, "len"    # J

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/authenticator/AidlHalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 14
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "offset"    # J
    .param p5, "len"    # J

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/authenticator/AidlHalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method public unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z
    .registers 3
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/authenticator/AidlHalService;->unload(I)Z

    move-result v0

    return v0
.end method

.method public unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z
    .registers 3
    .param p1, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/authenticator/AidlHalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/authenticator/AidlHalService;->unload(I)Z

    move-result v0

    return v0
.end method
