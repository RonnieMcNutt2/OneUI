.class public Landroid/hardware/gnss/IGnssMeasurementCallback$Default;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssMeasurementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssMeasurementCallback;
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

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public gnssMeasurementCb(Landroid/hardware/gnss/GnssData;)V
    .registers 2
    .param p1, "data"    # Landroid/hardware/gnss/GnssData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
