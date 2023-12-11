.class public Lcom/samsung/android/continuity/SemContinuityManager;
.super Ljava/lang/Object;
.source "SemContinuityManager.java"


# static fields
.field public static final BUDS_AUTO_SWITCHING:I = 0x2

.field public static final COPY_AND_PASTE:I = 0x8

.field public static final FILTER_BUDS_AUTO_SWTICHING:I = 0x2

.field public static final FILTER_HANDOFF:I = 0x1

.field public static final HAND_OFF:I = 0x4

.field public static final PHYSICAL_KEYBOARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_Manager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/samsung/android/continuity/ISemContinuityManager;

.field private final mSupportedFeature:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/continuity/ISemContinuityManager;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/continuity/ISemContinuityManager;
    .param p3, "userId"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/continuity/SemContinuityManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/continuity/SemContinuityManager;->mService:Lcom/samsung/android/continuity/ISemContinuityManager;

    .line 33
    iput p3, p0, Lcom/samsung/android/continuity/SemContinuityManager;->mUserId:I

    .line 34
    invoke-static {}, Lcom/samsung/android/continuity/SemContinuityManager;->getContinuityFeature()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/continuity/SemContinuityManager;->mSupportedFeature:I

    .line 35
    return-void
.end method

.method private static getContinuityFeature()I
    .registers 2

    .line 38
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "continuityFeature":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static isSupported(I)Z
    .registers 2
    .param p0, "feature"    # I

    .line 43
    invoke-static {}, Lcom/samsung/android/continuity/SemContinuityManager;->getContinuityFeature()I

    move-result v0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public getNearbyDeviceCount(I)I
    .registers 6
    .param p1, "filterType"    # I

    .line 50
    iget v0, p0, Lcom/samsung/android/continuity/SemContinuityManager;->mSupportedFeature:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    .line 51
    return v1

    .line 54
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/continuity/SemContinuityManager;->mService:Lcom/samsung/android/continuity/ISemContinuityManager;

    iget v2, p0, Lcom/samsung/android/continuity/SemContinuityManager;->mUserId:I

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/continuity/ISemContinuityManager;->getNearbyDeviceCount(II)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 55
    :catch_f
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNearbyDeviceCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[MCF_DS_SYS]_Manager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method
