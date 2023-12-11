.class public abstract Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;
.super Landroid/os/Binder;
.source "ISehAuthenticationFramework.java"

# interfaces
.implements Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_execute:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_load:I = 0x1

.field static final TRANSACTION_terminate:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->markVintfStability()V

    .line 50
    sget-object v0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
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

    .line 73
    sget-object v0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_d
    sparse-switch p1, :sswitch_data_72

    .line 97
    packed-switch p1, :pswitch_data_80

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 86
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v1

    .line 92
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 124
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 127
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->execute(I[B)Lvendor/samsung/hardware/authfw/SehResult;

    move-result-object v4

    .line 129
    .local v4, "_result":Lvendor/samsung/hardware/authfw/SehResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    goto :goto_70

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Lvendor/samsung/hardware/authfw/SehResult;
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->terminate(I)Z

    move-result v3

    .line 117
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    goto :goto_70

    .line 102
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 105
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;->load(I[B)Z

    move-result v4

    .line 107
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    nop

    .line 138
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":Z
    :goto_70
    return v1

    nop

    :sswitch_data_72
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_48
        :pswitch_32
    .end packed-switch
.end method
