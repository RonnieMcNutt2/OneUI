.class public Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;
.super Ljava/lang/Object;
.source "VZWAVSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;,
        Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    }
.end annotation


# static fields
.field private static final AVS_AUTHORITY_MVS:Ljava/lang/String; = "com.verizon.vzwavs.mvs.provider"

.field private static final AVS_AUTHORITY_STD:Ljava/lang/String; = "com.verizon.vzwavs.provider"

.field private static final AVS_INSTANCES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

.field private static final CERT_FP_MVS:Ljava/lang/String; = "A1:F6:F0:8B:5D:91:99:55:DD:51:DA:94:88:38:87:14:29:B1:E9:36"

.field private static final CERT_FP_MVS_BYOD:Ljava/lang/String; = "03:FE:29:EF:A0:6C:0B:D8:64:3A:A1:A7:C3:EC:91:A1:A6:57:00:E6"

.field private static final CERT_FP_STANDALONE:Ljava/lang/String; = "0B:A7:6D:BD:55:0A:4C:76:68:BD:7C:85:60:C1:2D:AF:95:14:CC:02"

.field private static final EN:Ljava/util/Locale;

.field private static final MVS_CERTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STANDALONE_CERTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final URI_TEMPLATE:Ljava/lang/String; = "content://%s/apis"


# direct methods
.method static bridge synthetic -$$Nest$sfgetEN()Ljava/util/Locale;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->EN:Ljava/util/Locale;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 30
    const-string v0, "A1:F6:F0:8B:5D:91:99:55:DD:51:DA:94:88:38:87:14:29:B1:E9:36"

    const-string v1, "03:FE:29:EF:A0:6C:0B:D8:64:3A:A1:A7:C3:EC:91:A1:A6:57:00:E6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->MVS_CERTS:Ljava/util/List;

    .line 31
    const-string v1, "0B:A7:6D:BD:55:0A:4C:76:68:BD:7C:85:60:C1:2D:AF:95:14:CC:02"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->STANDALONE_CERTS:Ljava/util/List;

    .line 34
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->EN:Ljava/util/Locale;

    .line 36
    new-instance v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "MvsAvs"

    const-string v6, "com.verizon.vzwavs.mvs.provider"

    invoke-direct {v2, v5, v6, v0, v4}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    const-string v4, "com.verizon.vzwavs.provider"

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "StandaloneAvs"

    invoke-direct {v0, v5, v4, v1, v3}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V

    filled-new-array {v2, v0}, [Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->AVS_INSTANCES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAvsInstance(Landroid/content/Context;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avsInstance"    # Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->authority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 152
    .local v0, "cpInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_10

    .line 154
    sget-object v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v1

    .line 158
    :cond_10
    const/4 v1, 0x0

    .line 161
    .local v1, "allowed":Z
    :try_start_11
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/vzwavslibrary/Utils;->getSigningCertificates(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v3

    .line 163
    .local v3, "packageSigs":[Landroid/content/pm/Signature;
    array-length v4, v3

    :goto_18
    if-ge v2, v4, :cond_2f

    aget-object v5, v3, v2

    .line 164
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-static {v5}, Lcom/android/internal/telephony/vzwavslibrary/Utils;->getCertFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "fp":Ljava/lang/String;
    if-eqz v6, :cond_2c

    iget-object v7, p1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->fingerprints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_28} :catch_38

    if-eqz v7, :cond_2c

    .line 168
    const/4 v1, 0x1

    .line 169
    goto :goto_2f

    .line 163
    .end local v5    # "sig":Landroid/content/pm/Signature;
    .end local v6    # "fp":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 175
    .end local v3    # "packageSigs":[Landroid/content/pm/Signature;
    :cond_2f
    :goto_2f
    nop

    .line 177
    if-nez v1, :cond_35

    .line 179
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v2

    .line 184
    :cond_35
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v2

    .line 172
    :catch_38
    move-exception v2

    .line 174
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    return-object v3
.end method

.method public static isPackageAuthorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "result":Z
    const/4 v1, 0x0

    if-nez p2, :cond_5

    return v1

    .line 56
    :cond_5
    if-nez p0, :cond_8

    return v1

    .line 57
    :cond_8
    if-nez p1, :cond_b

    return v1

    .line 61
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->AVS_INSTANCES:[Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    array-length v3, v2

    :goto_e
    if-ge v1, v3, :cond_2a

    aget-object v4, v2, v1

    .line 62
    .local v4, "avs":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;
    invoke-static {p0, p1, p2, v4}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->queryAvsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    move-result-object v5

    .line 63
    .local v5, "res":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    sget-object v6, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$1;->$SwitchMap$com$android$internal$telephony$vzwavslibrary$VZWAVSLibrary$AvsResult:[I

    invoke-virtual {v5}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2c

    goto :goto_27

    .line 71
    :pswitch_22
    const/4 v0, 0x0

    .line 72
    goto :goto_2a

    .line 68
    :pswitch_24
    const/4 v0, 0x1

    .line 69
    goto :goto_2a

    .line 66
    :pswitch_26
    nop

    .line 61
    .end local v4    # "avs":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;
    .end local v5    # "res":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 78
    :cond_2a
    :goto_2a
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method

.method private static queryAvsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "avsInstance"    # Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;

    .line 94
    iget-boolean v0, p3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->isAvailable:Z

    if-nez v0, :cond_10

    .line 95
    invoke-static {p0, p3}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->checkAvsInstance(Landroid/content/Context;Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;)Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    move-result-object v0

    .line 98
    .local v0, "instanceCheckResult":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    sget-object v1, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    if-eq v0, v1, :cond_d

    return-object v0

    .line 101
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->isAvailable:Z

    .line 104
    .end local v0    # "instanceCheckResult":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :cond_10
    const/4 v0, 0x0

    .line 107
    .local v0, "grantedApis":Ljava/lang/String;
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->contentProviderUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1f} :catch_58

    .line 112
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_24

    .line 113
    :try_start_21
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_FOUND:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    .local v2, "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    goto :goto_46

    .line 116
    .end local v2    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :cond_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    goto :goto_44

    .line 121
    :cond_32
    sget-object v3, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->DENIED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    .line 122
    .local v3, "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 126
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->GRANTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    .end local v3    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .restart local v2    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    goto :goto_46

    .line 125
    .end local v2    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .restart local v3    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :cond_42
    move-object v2, v3

    goto :goto_46

    .line 117
    .end local v3    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :cond_44
    :goto_44
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->DENIED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_4c

    .line 130
    .restart local v2    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :goto_46
    if-eqz v1, :cond_4b

    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_4b} :catch_58

    .line 134
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4b
    goto :goto_5b

    .line 107
    .end local v2    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_4c
    move-exception v2

    if-eqz v1, :cond_57

    :try_start_4f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v3

    :try_start_54
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "grantedApis":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "callingPackageName":Ljava/lang/String;
    .end local p2    # "api":Ljava/lang/String;
    .end local p3    # "avsInstance":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;
    :cond_57
    :goto_57
    throw v2
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_58} :catch_58

    .line 131
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "grantedApis":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "callingPackageName":Ljava/lang/String;
    .restart local p2    # "api":Ljava/lang/String;
    .restart local p3    # "avsInstance":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;
    :catch_58
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;->NOT_PERMITTED:Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;

    .line 139
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "result":Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsResult;
    :goto_5b
    return-object v2
.end method
