.class public Landroid/hardware/gnss/IAGnssRil$Default;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnssRil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil;
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

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Landroid/hardware/gnss/IAGnssRilCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/gnss/IAGnssRilCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public setRefLocation(Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;)V
    .registers 2
    .param p1, "agnssReflocation"    # Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public setSetId(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "setid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public updateNetworkState(Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;)V
    .registers 2
    .param p1, "attributes"    # Landroid/hardware/gnss/IAGnssRil$NetworkAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
