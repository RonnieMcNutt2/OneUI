.class Lcom/samsung/android/feature/FeatureUtil;
.super Ljava/lang/Object;
.source "FeatureUtil.java"


# static fields
.field private static final CARRIER_FEATURE_FILE_NAME:Ljava/lang/String; = "customer_carrier_feature.json"

.field private static final CURRENT_SIMSLOT_COUNT:Ljava/lang/String; = "ro.multisim.simslotcount"

.field private static final CURRENT_SIMSLOT_FEATURE:Ljava/lang/String; = "mdc.sys.sec_feature"

.field private static final CURRENT_SIMSLOT_PARENT_CANONICAL_ID:Ljava/lang/String; = "mdc.sys.sec_pcid"

.field private static final FEATURE_GROUP_VALUE_UNKNOWN:Ljava/lang/String; = "UKN"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MATCHED_CODE:Ljava/lang/String; = "mdc.matched_code"

.field private static final PERSIST_SIMSLOT_PARENT_CANONICAL_ID:Ljava/lang/String; = "persist.sys.sec_pcid"

.field private static final SALES_CODE:Ljava/lang/String; = "ro.csc.sales_code"

.field private static final SYSTEM_FEATURE_PATH:Ljava/lang/String; = "mdc.system.nw_path"

.field static final UNKNOWN_CARRIER_ID:I = -0x1

.field private static final UPDATE_FEATURE_PATH:Ljava/lang/String; = "/omr/carrier/"

.field static final VERSION_DEFAULT:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/samsung/android/feature/FeatureUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 145
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 146
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_13
    return-object p0
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .registers 6
    .param p0, "dir"    # Ljava/io/File;

    .line 118
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 119
    .local v1, "files":[Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_1a

    .line 120
    array-length v2, v1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 121
    .local v4, "child":Ljava/io/File;
    invoke-static {v4}, Lcom/samsung/android/feature/FeatureUtil;->deleteDir(Ljava/io/File;)Z

    .line 120
    nop

    .end local v4    # "child":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 124
    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1e} :catch_1f

    return v0

    .line 125
    .end local v1    # "files":[Ljava/io/File;
    :catch_1f
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 128
    .end local v1    # "e":Ljava/lang/RuntimeException;
    return v0
.end method

.method static getCarrierFeature(II)Lcom/samsung/android/feature/SecCarrier;
    .registers 10
    .param p0, "phoneId"    # I
    .param p1, "canonicalId"    # I

    .line 81
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getSystemFeaturePath(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getMatchedCode(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1, p1}, Lcom/samsung/android/feature/FeatureUtil;->getSecCarrierFeature(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v0

    .line 83
    .local v0, "systemFeature":Lcom/samsung/android/feature/SecCarrier;
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getUpdateFeaturePath(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getMatchedCode(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {v1, v2, p1}, Lcom/samsung/android/feature/FeatureUtil;->getSecCarrierFeature(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v1

    .line 86
    .local v1, "updateFeature":Lcom/samsung/android/feature/SecCarrier;
    if-eqz v0, :cond_d5

    if-eqz v1, :cond_d5

    .line 87
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_72

    .line 88
    sget-object v2, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemFeature version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mapped cid version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/feature/SecCarrier;->getMappedCidVersion()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateFeature version : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/feature/SecCarrier;->getMappedCidVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_72
    invoke-virtual {v0}, Lcom/samsung/android/feature/SecCarrier;->getMappedCidVersion()I

    move-result v2

    div-int/lit16 v2, v2, 0x2710

    .line 95
    .local v2, "systemFeatureOsVersion":I
    invoke-virtual {v1}, Lcom/samsung/android/feature/SecCarrier;->getMappedCidVersion()I

    move-result v3

    div-int/lit16 v3, v3, 0x2710

    .line 97
    .local v3, "updateFeatureOsVersion":I
    invoke-virtual {v1}, Lcom/samsung/android/feature/SecCarrier;->isCarrierGroupValid()Z

    move-result v4

    .line 99
    .local v4, "isUpdateFeatureValid":Z
    if-eqz v4, :cond_9d

    if-gt v2, v3, :cond_9d

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v6

    if-le v5, v6, :cond_91

    goto :goto_9d

    .line 107
    :cond_91
    invoke-virtual {v0}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/feature/SecCarrier;->getVersion()I

    move-result v6

    if-ne v5, v6, :cond_9c

    .line 108
    return-object v0

    .line 110
    :cond_9c
    return-object v1

    .line 101
    :cond_9d
    :goto_9d
    sget-object v5, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete updateFeature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/omr/carrier/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v5, "updateRoot":Ljava/io/File;
    invoke-static {v5}, Lcom/samsung/android/feature/FeatureUtil;->deleteDir(Ljava/io/File;)Z

    .line 106
    return-object v0

    .line 113
    .end local v2    # "systemFeatureOsVersion":I
    .end local v3    # "updateFeatureOsVersion":I
    .end local v4    # "isUpdateFeatureValid":Z
    .end local v5    # "updateRoot":Ljava/io/File;
    :cond_d5
    return-object v0
.end method

.method static getCurrentCanonicalID(I)I
    .registers 3
    .param p0, "phoneId"    # I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdc.sys.sec_pcid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getDefaultCanonicalID()I
    .registers 1

    .line 169
    const/4 v0, -0x1

    return v0
.end method

.method static getLastCanonicalID(I)I
    .registers 3
    .param p0, "phoneId"    # I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sec_pcid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getLastFeatureVersion(I)I
    .registers 6
    .param p0, "phoneId"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdc.sys.sec_feature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "featureInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_26

    .line 176
    return v2

    .line 179
    :cond_26
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "feature":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 182
    :try_start_3e
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_48} :catch_49

    return v2

    .line 183
    :catch_49
    move-exception v3

    .line 184
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 187
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_4d
    return v2
.end method

.method static getMatchedCode(I)Ljava/lang/String;
    .registers 4
    .param p0, "phoneId"    # I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdc.matched_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v2, "UKN"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReadablePhoneIDName(I)Ljava/lang/String;
    .registers 2
    .param p0, "phoneId"    # I

    .line 191
    if-nez p0, :cond_5

    .line 192
    const-string v0, ""

    return-object v0

    .line 194
    :cond_5
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecCarrierFeature(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/feature/SecCarrier;
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "carrierGroup"    # Ljava/lang/String;
    .param p2, "canonicalId"    # I

    .line 55
    sget-boolean v0, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 56
    sget-object v0, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " carrierGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canonicalId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_30
    const/4 v0, 0x0

    :try_start_31
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_55

    .line 63
    sget-object v2, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "files does not exist from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v0

    .line 66
    :cond_55
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->TEST:Z

    invoke-static {v1, v2}, Lcom/samsung/android/feature/TextDecoder;->decode(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 68
    sget-object v3, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to decode feature from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v0

    .line 71
    :cond_7a
    new-instance v3, Lcom/samsung/android/feature/SecCarrier;

    invoke-direct {v3, v2, p1, p2}, Lcom/samsung/android/feature/SecCarrier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_7f} :catch_80

    return-object v3

    .line 73
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "result":Ljava/lang/String;
    :catch_80
    move-exception v1

    .line 74
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/feature/FeatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to read feature from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method private static getSystemFeaturePath(I)Ljava/lang/String;
    .registers 4
    .param p0, "phoneId"    # I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mdc.system.nw_path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/feature/FeatureUtil;->getReadablePhoneIDName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UKN"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "customer_carrier_feature.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUpdateFeaturePath(I)Ljava/lang/String;
    .registers 3
    .param p0, "phoneId"    # I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/omr/carrier/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "customer_carrier_feature.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readSimCount()I
    .registers 2

    .line 201
    const-string/jumbo v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
