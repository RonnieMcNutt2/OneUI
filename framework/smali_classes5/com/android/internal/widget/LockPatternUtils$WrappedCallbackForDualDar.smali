.class Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;
.super Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallbackForDualDar"
.end annotation


# instance fields
.field private mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$f8o_NJzyx9daL2eUYHvfaEFqBxo(Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->lambda$onInnerLayerUnlocked$0()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    .line 3111
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Stub;-><init>()V

    .line 3112
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    .line 3113
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    .line 3114
    return-void
.end method

.method private synthetic lambda$onInnerLayerUnlocked$0()V
    .registers 2

    .line 3126
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;->onInnerLayerUnlocked()V

    .line 3127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    .line 3128
    return-void
.end method


# virtual methods
.method public onInnerLayerUnlockFailed()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3134
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;->onInnerLayerUnlockFailed()V

    .line 3135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mCallback:Lcom/android/internal/widget/LockPatternUtils$DualDarAuthProgressCallback;

    .line 3136
    return-void
.end method

.method public onInnerLayerUnlocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3119
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 3120
    const-string v0, "LockPatternUtils"

    const-string v1, "Handler is null during callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallbackForDualDar;->mHandler:Landroid/os/Handler;

    .line 3130
    return-void
.end method
