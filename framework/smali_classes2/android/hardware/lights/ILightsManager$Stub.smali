.class public abstract Landroid/hardware/lights/ILightsManager$Stub;
.super Landroid/os/Binder;
.source "ILightsManager.java"

# interfaces
.implements Landroid/hardware/lights/ILightsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/ILightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/ILightsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_closeSession:I = 0x4

.field static final TRANSACTION_getLightState:I = 0x2

.field static final TRANSACTION_getLights:I = 0x1

.field static final TRANSACTION_openSession:I = 0x3

.field static final TRANSACTION_setLightStates:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.hardware.lights.ILightsManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/lights/ILightsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/lights/ILightsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.hardware.lights.ILightsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/lights/ILightsManager;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/hardware/lights/ILightsManager;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/hardware/lights/ILightsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/lights/ILightsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_14

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_5
    const-string v0, "setLightStates"

    return-object v0

    .line 83
    :pswitch_8
    const-string v0, "closeSession"

    return-object v0

    .line 79
    :pswitch_b
    const-string v0, "openSession"

    return-object v0

    .line 75
    :pswitch_e
    const-string v0, "getLightState"

    return-object v0

    .line 71
    :pswitch_11
    const-string v0, "getLights"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 280
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/hardware/lights/ILightsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    const-string v0, "android.hardware.lights.ILightsManager"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    packed-switch p1, :pswitch_data_74

    .line 114
    packed-switch p1, :pswitch_data_7a

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 156
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 158
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 160
    .local v3, "_arg1":[I
    sget-object v4, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/lights/LightState;

    .line 161
    .local v4, "_arg2":[Landroid/hardware/lights/LightState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/lights/ILightsManager$Stub;->setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    goto :goto_73

    .line 147
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[Landroid/hardware/lights/LightState;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 148
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/hardware/lights/ILightsManager$Stub;->closeSession(Landroid/os/IBinder;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_73

    .line 136
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/hardware/lights/ILightsManager$Stub;->openSession(Landroid/os/IBinder;I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_73

    .line 126
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/hardware/lights/ILightsManager$Stub;->getLightState(I)Landroid/hardware/lights/LightState;

    move-result-object v3

    .line 129
    .local v3, "_result":Landroid/hardware/lights/LightState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    goto :goto_73

    .line 118
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/lights/LightState;
    :pswitch_68
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->getLights()Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 121
    nop

    .line 171
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :goto_73
    return v1

    :pswitch_data_74
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_68
        :pswitch_56
        :pswitch_44
        :pswitch_36
        :pswitch_1c
    .end packed-switch
.end method
