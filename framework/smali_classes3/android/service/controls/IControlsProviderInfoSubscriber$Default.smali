.class public Landroid/service/controls/IControlsProviderInfoSubscriber$Default;
.super Ljava/lang/Object;
.source "IControlsProviderInfoSubscriber.java"

# interfaces
.implements Landroid/service/controls/IControlsProviderInfoSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsProviderInfoSubscriber;
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

.method public onNext(Landroid/os/IBinder;Landroid/service/controls/ControlsProviderInfo;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cpi"    # Landroid/service/controls/ControlsProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
