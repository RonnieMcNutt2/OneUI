.class public Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Default;
.super Ljava/lang/Object;
.source "ISehRadioChannel.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public send([B)V
    .registers 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public setCallback(Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback;)V
    .registers 2
    .param p1, "sehChannelCallback"    # Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
