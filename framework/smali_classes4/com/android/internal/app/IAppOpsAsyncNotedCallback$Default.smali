.class public Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Default;
.super Ljava/lang/Object;
.source "IAppOpsAsyncNotedCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsAsyncNotedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public opNoted(Landroid/app/AsyncNotedAppOp;)V
    .registers 2
    .param p1, "op"    # Landroid/app/AsyncNotedAppOp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
