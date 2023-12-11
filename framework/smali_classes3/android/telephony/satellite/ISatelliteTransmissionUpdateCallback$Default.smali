.class public Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Default;
.super Ljava/lang/Object;
.source "ISatelliteTransmissionUpdateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceiveDatagramStateChanged(III)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "receivePendingCount"    # I
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V
    .registers 2
    .param p1, "pointingInfo"    # Landroid/telephony/satellite/PointingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public onSendDatagramStateChanged(III)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "sendPendingCount"    # I
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
