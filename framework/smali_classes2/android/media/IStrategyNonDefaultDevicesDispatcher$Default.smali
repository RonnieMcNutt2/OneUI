.class public Landroid/media/IStrategyNonDefaultDevicesDispatcher$Default;
.super Ljava/lang/Object;
.source "IStrategyNonDefaultDevicesDispatcher.java"

# interfaces
.implements Landroid/media/IStrategyNonDefaultDevicesDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IStrategyNonDefaultDevicesDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchNonDefDevicesChanged(ILjava/util/List;)V
    .registers 3
    .param p1, "strategyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    return-void
.end method
