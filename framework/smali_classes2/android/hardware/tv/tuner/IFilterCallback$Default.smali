.class public Landroid/hardware/tv/tuner/IFilterCallback$Default;
.super Ljava/lang/Object;
.source "IFilterCallback.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFilterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFilterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public onFilterEvent([Landroid/hardware/tv/tuner/DemuxFilterEvent;)V
    .registers 2
    .param p1, "events"    # [Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onFilterStatus(B)V
    .registers 2
    .param p1, "status"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
