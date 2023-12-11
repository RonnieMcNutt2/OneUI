.class public final Landroid/net/wifi/WifiKeystore;
.super Ljava/lang/Object;
.source "WifiKeystore.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field private static final TAG:Ljava/lang/String; = "WifiKeystore"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static get(Ljava/lang/String;)[B
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 74
    const-string v0, "Failed to get blob."

    const-string v1, "WifiKeystore"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get blob. alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Landroid/net/wifi/WifiKeystore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_24} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    return-object v0

    .line 80
    :catch_25
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v2

    .line 77
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_33

    .line 78
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_33
    nop

    .line 83
    :goto_34
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getService()Landroid/security/legacykeystore/ILegacyKeystore;
    .registers 1

    .line 35
    nop

    .line 36
    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 116
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiKeystore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    const/16 v1, 0x3f2

    invoke-interface {v0, p0, v1}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 118
    aget-object v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1e

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 120
    .end local v1    # "i":I
    :cond_1d
    return-object v0

    .line 121
    .end local v0    # "aliases":[Ljava/lang/String;
    :catch_1e
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiKeystore"

    const-string v2, "Failed to list blobs."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static put(Ljava/lang/String;[B)Z
    .registers 5
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 54
    const-string v0, "WifiKeystore"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put blob. alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Landroid/net/wifi/WifiKeystore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v1

    const/16 v2, 0x3f2

    invoke-interface {v1, p0, v2, p1}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_23

    .line 56
    const/4 v0, 0x1

    return v0

    .line 57
    :catch_23
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to put blob."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public static remove(Ljava/lang/String;)Z
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 95
    const-string v0, "Failed to remove blob."

    const-string v1, "WifiKeystore"

    :try_start_4
    invoke-static {}, Landroid/net/wifi/WifiKeystore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_d} :catch_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    .line 96
    const/4 v0, 0x1

    return v0

    .line 101
    :catch_f
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v2

    .line 98
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1d

    .line 99
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_1d
    nop

    .line 104
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method
