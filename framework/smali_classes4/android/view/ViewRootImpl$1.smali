.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionHang(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 1151
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetsAnrReported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1152
    return-void

    .line 1155
    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$sfputsAnrReported(Z)V

    .line 1161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1163
    .local v0, "identityToken":J
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->appNotResponding(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_1c
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_1d

    .line 1169
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    throw v2

    .line 1164
    :catch_1c
    move-exception v2

    .line 1169
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    nop

    .line 1171
    return-void
.end method
