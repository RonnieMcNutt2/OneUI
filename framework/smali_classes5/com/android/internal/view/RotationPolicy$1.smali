.class Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    iput p2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 170
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 171
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    if-eqz v1, :cond_e

    .line 172
    iget v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_11

    .line 174
    :cond_e
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 178
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_11
    goto :goto_1a

    .line 176
    :catch_12
    move-exception v0

    .line 177
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "RotationPolicy"

    const-string v2, "Unable to save auto-rotate setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method
