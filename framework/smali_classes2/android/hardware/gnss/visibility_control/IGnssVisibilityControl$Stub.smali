.class public abstract Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;
.super Landroid/os/Binder;
.source "IGnssVisibilityControl.java"

# interfaces
.implements Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_enableNfwLocationAccess:I = 0x1

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_setCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->markVintfStability()V

    .line 45
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    sparse-switch p0, :sswitch_data_12

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 81
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 85
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 77
    :sswitch_b
    const-string v0, "setCallback"

    return-object v0

    .line 73
    :sswitch_e
    const-string v0, "enableNfwLocationAccess"

    return-object v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 246
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    sparse-switch p1, :sswitch_data_54

    .line 124
    packed-switch p1, :pswitch_data_62

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 113
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return v1

    .line 119
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 138
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;

    move-result-object v2

    .line 139
    .local v2, "_arg0":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->setCallback(Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_52

    .line 129
    .end local v2    # "_arg0":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControl$Stub;->enableNfwLocationAccess([Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 149
    .end local v2    # "_arg0":[Ljava/lang/String;
    :goto_52
    return v1

    nop

    :sswitch_data_54
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_44
        :pswitch_32
    .end packed-switch
.end method
