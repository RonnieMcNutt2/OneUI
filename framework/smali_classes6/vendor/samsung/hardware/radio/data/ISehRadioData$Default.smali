.class public Lvendor/samsung/hardware/radio/data/ISehRadioData$Default;
.super Ljava/lang/Object;
.source "ISehRadioData.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/data/ISehRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/data/ISehRadioData;
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

.method public setDataAllowed(IZLvendor/samsung/hardware/radio/data/SehAllowDataParam;)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "allow"    # Z
    .param p3, "param"    # Lvendor/samsung/hardware/radio/data/SehAllowDataParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public setMobileDataSetting(IZZ)V
    .registers 4
    .param p1, "serial"    # I
    .param p2, "enabled"    # Z
    .param p3, "roamingEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public setResponseFunctions(Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse;Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;)V
    .registers 3
    .param p1, "radioResponse"    # Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse;
    .param p2, "radioIndication"    # Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
