.class public final Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LockPatternUtilForDualDarDo"
.end annotation


# static fields
.field static final OPT_PENDING_UNLOCK:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "context"    # Landroid/content/Context;

    .line 3174
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3175
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mContext:Landroid/content/Context;

    .line 3176
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;
    .registers 3

    monitor-enter p0

    .line 3179
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    if-nez v0, :cond_e

    .line 3180
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 3182
    .end local p0    # "this":Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 3178
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected checkCredential(Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z
    .registers 6
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "option"    # I
    .param p4, "progressCallback"    # Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .line 3196
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$mcheckCredentialForDualDarDo(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)Z

    move-result v0

    return v0
.end method

.method public getInnerAuthUserForDo()I
    .registers 2

    .line 3186
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserForDo()I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLengthForInner()I
    .registers 2

    .line 3200
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getPasswordMinimumLengthForInner()I

    move-result v0

    return v0
.end method

.method public isInnerAuthUserForDo(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3190
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->getAuthUtils()Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    move-result v0

    return v0
.end method
