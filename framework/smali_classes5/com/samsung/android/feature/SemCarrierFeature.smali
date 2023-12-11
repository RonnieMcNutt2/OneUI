.class public Lcom/samsung/android/feature/SemCarrierFeature;
.super Ljava/lang/Object;
.source "SemCarrierFeature.java"


# static fields
.field static final DEBUG:Z

.field private static final DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final LOG_TAG:Ljava/lang/String;

.field static final TEST:Z

.field private static sInstance:Lcom/samsung/android/feature/SemCarrierFeature;


# instance fields
.field private mCanonicalId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultFeatureList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFeatureVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFeatureList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMatchedCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    .line 40
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->isTestEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/feature/SemCarrierFeature;->TEST:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mMatchedCode:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    .line 87
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_27
    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->readSimCount()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 88
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mMatchedCode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/feature/FeatureUtil;->getMatchedCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->loadDefaultFeatures(I)V

    .line 92
    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->loadCarrierFeatures(I)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 94
    .end local v0    # "phoneId":I
    :cond_54
    return-void
.end method

.method public static createInstance()Lcom/samsung/android/feature/SemCarrierFeature;
    .registers 1

    .line 82
    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    .line 83
    return-object v0
.end method

.method private get(ILjava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 108
    sget-boolean v0, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[get] phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " checkLastSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_30
    if-eqz p1, :cond_3e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3e

    .line 111
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[get] phoneId should be 0 or 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_3e
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->isFeatureChanged(I)Z

    move-result v0

    const-string v1, " -> "

    const-string v2, "] "

    if-eqz v0, :cond_bd

    .line 117
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getMatchedCode(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "currentMatchedCode":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(I)I

    move-result v3

    .line 120
    .local v3, "currentFeatureVersion":I
    sget-object v4, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[get] CarrierFeature file is changed : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mMatchedCode:Ljava/util/Map;

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mMatchedCode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->loadDefaultFeatures(I)V

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->loadCarrierFeatures(I)V

    .end local v0    # "currentMatchedCode":Ljava/lang/String;
    .end local v3    # "currentFeatureVersion":I
    goto :goto_fd

    .line 129
    :cond_bd
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->isCarrierIdChanged(I)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 131
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[get] CarrierId is changed : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->loadCarrierFeatures(I)V

    goto :goto_fe

    .line 129
    :cond_fd
    :goto_fd
    nop

    .line 136
    :goto_fe
    if-eqz p3, :cond_129

    .line 138
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v1

    if-le v0, v1, :cond_168

    .line 139
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 143
    :cond_129
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v1

    if-eq v0, v1, :cond_168

    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getCurrentCanonicalID(I)I

    move-result v1

    if-ne v0, v1, :cond_168

    .line 145
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 149
    :cond_168
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/feature/SemCarrierFeature;
    .registers 1

    .line 67
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    .line 70
    :cond_b
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->sInstance:Lcom/samsung/android/feature/SemCarrierFeature;

    return-object v0
.end method

.method private isCarrierIdChanged(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private static isDebugEnabled()Z
    .registers 2

    .line 97
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "debugLevel":Ljava/lang/String;
    const-string v1, "0x4948"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private isFeatureChanged(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->isMatchedCodeChanged(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCarrierFeature;->isFeatureVersionChanged(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isFeatureVersionChanged(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mFeatureVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastFeatureVersion(I)I

    move-result v1

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isMatchedCodeChanged(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 157
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mMatchedCode:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getMatchedCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isTestEnabled()Z
    .registers 1

    .line 102
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    return v0
.end method

.method private loadCarrierFeatures(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/FeatureUtil;->getDefaultCanonicalID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v0

    .line 190
    .local v0, "canonicalId":I
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update carrier features : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p1, v0}, Lcom/samsung/android/feature/FeatureUtil;->getCarrierFeature(II)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v1

    .line 192
    .local v1, "last":Lcom/samsung/android/feature/SecCarrier;
    if-eqz v1, :cond_41

    .line 193
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->setSlotTargetFeatureList(ILcom/samsung/android/feature/SecCarrier;I)V

    .line 195
    :cond_41
    return-void
.end method

.method private loadDefaultFeatures(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 172
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "update default carrier features"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/samsung/android/feature/FeatureUtil;->getCarrierFeature(II)Lcom/samsung/android/feature/SecCarrier;

    move-result-object v0

    .line 174
    .local v0, "last":Lcom/samsung/android/feature/SecCarrier;
    if-eqz v0, :cond_12

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/feature/SemCarrierFeature;->setSlotDefaultFeatureList(ILcom/samsung/android/feature/SecCarrier;)V

    .line 177
    :cond_12
    return-void
.end method

.method private setSlotDefaultFeatureList(ILcom/samsung/android/feature/SecCarrier;)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "carrier"    # Lcom/samsung/android/feature/SecCarrier;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getFeature()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method private setSlotTargetFeatureList(ILcom/samsung/android/feature/SecCarrier;I)V
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "carrier"    # Lcom/samsung/android/feature/SecCarrier;
    .param p3, "canonicalId"    # I

    .line 198
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mCanonicalId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/feature/SecCarrier;->getFeature()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method


# virtual methods
.method public getBoolean(ILjava/lang/String;ZZ)Z
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "checkLastSim"    # Z

    .line 236
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBoolean] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_2a
    if-eqz v0, :cond_31

    .line 240
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return v1

    .line 242
    :cond_31
    return p3

    .line 244
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 246
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBoolean] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    :cond_52
    return p3
.end method

.method public getBooleanArray(ILjava/lang/String;Z)[Z
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 267
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBooleanArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 271
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Z

    .line 273
    .local v3, "arrays":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 274
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    aput-boolean v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 276
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 277
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[Z
    :catch_4b
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 279
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBooleanArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :cond_6b
    return-object v0
.end method

.method public getCarrierId(IZ)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "checkLastSim"    # Z

    .line 214
    if-eqz p2, :cond_7

    .line 215
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getLastCanonicalID(I)I

    move-result v0

    return v0

    .line 217
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/feature/FeatureUtil;->getCurrentCanonicalID(I)I

    move-result v0

    return v0
.end method

.method public getDouble(ILjava/lang/String;DZ)D
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D
    .param p5, "checkLastSim"    # Z

    .line 430
    :try_start_0
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDouble] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2a
    if-eqz v0, :cond_31

    .line 434
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return-wide v1

    .line 436
    :cond_31
    return-wide p3

    .line 438
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 440
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDouble] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    :cond_52
    return-wide p3
.end method

.method public getDoubleArray(ILjava/lang/String;Z)[D
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 461
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDoubleArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 465
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [D

    .line 467
    .local v3, "arrays":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 468
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 470
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 471
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[D
    :catch_4b
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 473
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDoubleArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    :cond_6b
    return-object v0
.end method

.method public getInt(ILjava/lang/String;IZ)I
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "checkLastSim"    # Z

    .line 299
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInt] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2a
    if-eqz v0, :cond_31

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return v1

    .line 305
    :cond_31
    return p3

    .line 307
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 309
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInt] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    :cond_52
    return p3
.end method

.method public getIntArray(ILjava/lang/String;Z)[I
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 330
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIntArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 334
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    .line 336
    .local v3, "arrays":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 337
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 339
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 340
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[I
    :catch_4b
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 342
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIntArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    :cond_6b
    return-object v0
.end method

.method public getLong(ILjava/lang/String;JZ)J
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .param p5, "checkLastSim"    # Z

    .line 364
    :try_start_0
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getLong] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2a
    if-eqz v0, :cond_31

    .line 368
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    return-wide v1

    .line 370
    :cond_31
    return-wide p3

    .line 372
    .end local v0    # "value":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 374
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getLong] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    :cond_52
    return-wide p3
.end method

.method public getLongArray(ILjava/lang/String;Z)[J
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 395
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getLongArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 399
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [J

    .line 401
    .local v3, "arrays":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v2

    if-ge v4, v5, :cond_4a

    .line 402
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_4b

    .line 401
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 404
    .end local v4    # "i":I
    :cond_4a
    return-object v3

    .line 405
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "arrays":[J
    :catch_4b
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 407
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getLongArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    :cond_6b
    return-object v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "checkLastSim"    # Z

    .line 497
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getString] key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2e

    .line 500
    :cond_2a
    if-eqz v0, :cond_2d

    .line 501
    return-object v0

    .line 503
    :cond_2d
    return-object p3

    .line 505
    .end local v0    # "value":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v1, :cond_4e

    .line 507
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getString] Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    :cond_4e
    return-object p3
.end method

.method public getStringArray(ILjava/lang/String;Z)[Ljava/lang/String;
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "checkLastSim"    # Z

    .line 528
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCarrierFeature;->get(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStringArray] key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_2b
    if-nez v1, :cond_2e

    return-object v0

    .line 532
    :cond_2e
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    return-object v0

    .line 533
    .end local v1    # "value":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 534
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/feature/SemCarrierFeature;->DEBUG:Z

    if-eqz v2, :cond_55

    .line 535
    sget-object v2, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getStringArray] Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 538
    :cond_55
    return-object v0
.end method

.method public tracer(I)Ljava/util/Map;
    .registers 5
    .param p1, "tableNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    const/4 v0, 0x0

    .line 548
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 546
    if-nez p1, :cond_18

    .line 547
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "mLastFeatureList.get(0)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 549
    :cond_18
    const/4 v1, 0x1

    if-ne p1, v1, :cond_30

    .line 550
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "mLastFeatureList.get(1)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mLastFeatureList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 552
    :cond_30
    const/4 v2, 0x2

    if-ne p1, v2, :cond_44

    .line 553
    sget-object v1, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "mDefaultFeatureList.get(0)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v1, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 555
    :cond_44
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5c

    .line 556
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "mDefaultFeatureList.get(1)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/samsung/android/feature/SemCarrierFeature;->mDefaultFeatureList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 559
    :cond_5c
    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid feature table number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    return-object v0
.end method
