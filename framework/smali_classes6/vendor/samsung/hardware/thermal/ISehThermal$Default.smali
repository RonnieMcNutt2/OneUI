.class public Lvendor/samsung/hardware/thermal/ISehThermal$Default;
.super Ljava/lang/Object;
.source "ISehThermal.java"

# interfaces
.implements Lvendor/samsung/hardware/thermal/ISehThermal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/thermal/ISehThermal;
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

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getScenarioHint()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getTemperatures()[Lvendor/samsung/hardware/thermal/SehTemperature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemperaturesWithType(I)[Lvendor/samsung/hardware/thermal/SehTemperature;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerThermalChangedCallback(Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public setScenarioHint(I)V
    .registers 2
    .param p1, "hint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public unregisterThermalChangedCallback(Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;)V
    .registers 2
    .param p1, "callback"    # Lvendor/samsung/hardware/thermal/ISehThermalChangedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
