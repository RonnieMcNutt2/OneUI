.class public Landroid/security/LegacyVpnProfileStore;
.super Ljava/lang/Object;
.source "LegacyVpnProfileStore.java"


# static fields
.field private static final LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field public static final PROFILE_NOT_FOUND:I = 0x7

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LegacyVpnProfileStore"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)[B
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;

    .line 74
    const-string v0, "Failed to get vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    :try_start_4
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    return-object v0

    .line 79
    :catch_e
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v2

    .line 76
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1c

    .line 77
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_1c
    nop

    .line 82
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getService()Landroid/security/legacykeystore/ILegacyKeystore;
    .registers 1

    .line 41
    nop

    .line 42
    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;

    .line 113
    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 115
    aget-object v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1d

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 117
    .end local v1    # "i":I
    :cond_1c
    return-object v0

    .line 118
    .end local v0    # "aliases":[Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnProfileStore"

    const-string v2, "Failed to list vpn profiles."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static put(Ljava/lang/String;[B)Z
    .registers 5
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "profile"    # [B

    .line 55
    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1, p1}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 56
    const/4 v0, 0x1

    return v0

    .line 57
    :catch_a
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnProfileStore"

    const-string v2, "Failed to put vpn profile."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, 0x0

    return v1
.end method

.method public static remove(Ljava/lang/String;)Z
    .registers 6
    .param p0, "alias"    # Ljava/lang/String;

    .line 93
    const-string v0, "Failed to remove vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    :try_start_4
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_c} :catch_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_e

    .line 94
    const/4 v0, 0x1

    return v0

    .line 99
    :catch_e
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v2

    .line 96
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1c

    .line 97
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_1c
    nop

    .line 102
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method
