.class Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;
.super Landroid/os/Handler;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field static final MSG_ON_IS_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED:I = 0x2

.field static final MSG_ON_STRONG_AUTH_REQUIRED_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2227
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;->this$0:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 2228
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1f

    .line 2238
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;->this$0:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleIsNonStrongBiometricAllowedChanged(ZI)V

    goto :goto_1f

    .line 2235
    :pswitch_15
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;->this$0:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V

    .line 2236
    nop

    .line 2242
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method
