.class public Landroid/hardware/tv/tuner/IDescrambler$Default;
.super Ljava/lang/Object;
.source "IDescrambler.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDescrambler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDescrambler;
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
.method public addPid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V
    .registers 3
    .param p1, "pid"    # Landroid/hardware/tv/tuner/DemuxPid;
    .param p2, "optionalSourceFilter"    # Landroid/hardware/tv/tuner/IFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public removePid(Landroid/hardware/tv/tuner/DemuxPid;Landroid/hardware/tv/tuner/IFilter;)V
    .registers 3
    .param p1, "pid"    # Landroid/hardware/tv/tuner/DemuxPid;
    .param p2, "optionalSourceFilter"    # Landroid/hardware/tv/tuner/IFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public setDemuxSource(I)V
    .registers 2
    .param p1, "demuxId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public setKeyToken([B)V
    .registers 2
    .param p1, "keyToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
