.class public abstract Landroid/hardware/input/ITabletModeChangedListener$Stub;
.super Landroid/os/Binder;
.source "ITabletModeChangedListener.java"

# interfaces
.implements Landroid/hardware/input/ITabletModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/ITabletModeChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/ITabletModeChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.ITabletModeChangedListener"

.field static final TRANSACTION_onTabletModeChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.hardware.input.ITabletModeChangedListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_4
    const-string v0, "android.hardware.input.ITabletModeChangedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/input/ITabletModeChangedListener;

    if-eqz v1, :cond_14

    .line 39
    move-object v1, v0

    check-cast v1, Landroid/hardware/input/ITabletModeChangedListener;

    return-object v1

    .line 41
    :cond_14
    new-instance v1, Landroid/hardware/input/ITabletModeChangedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/ITabletModeChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 50
    packed-switch p0, :pswitch_data_8

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 54
    :pswitch_5
    const-string v0, "onTabletModeChanged"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 65
    invoke-static {p1}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-string v0, "android.hardware.input.ITabletModeChangedListener"

    .line 70
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    :cond_d
    packed-switch p1, :pswitch_data_2c

    .line 81
    packed-switch p1, :pswitch_data_32

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 77
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v1

    .line 86
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 88
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 89
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->onTabletModeChanged(JZ)V

    .line 91
    nop

    .line 98
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Z
    return v1

    :pswitch_data_2c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
