.class public Landroid/hardware/radio/ims/IRadioImsIndication$Default;
.super Ljava/lang/Object;
.source "IRadioImsIndication.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioImsIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAnbr(IIII)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "mediaType"    # I
    .param p3, "direction"    # I
    .param p4, "bitsPerSecond"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onConnectionSetupFailure(IILandroid/hardware/radio/ims/ConnectionFailureInfo;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "token"    # I
    .param p3, "info"    # Landroid/hardware/radio/ims/ConnectionFailureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public triggerImsDeregistration(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
