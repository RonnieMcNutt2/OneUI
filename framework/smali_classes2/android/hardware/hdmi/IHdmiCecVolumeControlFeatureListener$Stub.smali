.class public abstract Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;
.super Landroid/os/Binder;
.source "IHdmiCecVolumeControlFeatureListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onHdmiCecVolumeControlFeature:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.hardware.hdmi.IHdmiCecVolumeControlFeatureListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.hardware.hdmi.IHdmiCecVolumeControlFeatureListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_8

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_5
    const-string v0, "onHdmiCecVolumeControlFeature"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 73
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "android.hardware.hdmi.IHdmiCecVolumeControlFeatureListener"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    packed-switch p1, :pswitch_data_28

    .line 89
    packed-switch p1, :pswitch_data_2e

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 94
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;->onHdmiCecVolumeControlFeature(I)V

    .line 97
    nop

    .line 104
    .end local v2    # "_arg0":I
    return v1

    :pswitch_data_28
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
