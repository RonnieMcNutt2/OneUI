.class public Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback$Default;
.super Ljava/lang/Object;
.source "ISehThermalChangedCallback.java"

# interfaces
.implements Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public notifyTemperatures([Lvendor/samsung/hardware/thermal/SehTemperature;)V
    .registers 2
    .param p1, "temperatures"    # [Lvendor/samsung/hardware/thermal/SehTemperature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
