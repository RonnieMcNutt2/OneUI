.class public abstract Landroid/location/INSLocationManager$Stub;
.super Landroid/os/Binder;
.source "INSLocationManager.java"

# interfaces
.implements Landroid/location/INSLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/INSLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/INSLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getGPSUsingApps:I = 0x1

.field static final TRANSACTION_onGnssEngineStatusUpdated:I = 0x6

.field static final TRANSACTION_onGnssEventUpdated:I = 0x8

.field static final TRANSACTION_onMessageUpdated:I = 0x3

.field static final TRANSACTION_onPassiveLocationReported:I = 0x5

.field static final TRANSACTION_onSatelliteStatusUpdated:I = 0x7

.field static final TRANSACTION_onStateUpdated:I = 0x4

.field static final TRANSACTION_setCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.location.INSLocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/INSLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    const-string v0, "android.location.INSLocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/INSLocationManager;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/location/INSLocationManager;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Landroid/location/INSLocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/INSLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_1e

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string v0, "onGnssEventUpdated"

    return-object v0

    .line 103
    :pswitch_8
    const-string v0, "onSatelliteStatusUpdated"

    return-object v0

    .line 99
    :pswitch_b
    const-string v0, "onGnssEngineStatusUpdated"

    return-object v0

    .line 95
    :pswitch_e
    const-string v0, "onPassiveLocationReported"

    return-object v0

    .line 91
    :pswitch_11
    const-string v0, "onStateUpdated"

    return-object v0

    .line 87
    :pswitch_14
    const-string v0, "onMessageUpdated"

    return-object v0

    .line 83
    :pswitch_17
    const-string v0, "setCallback"

    return-object v0

    .line 79
    :pswitch_1a
    const-string v0, "getGPSUsingApps"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 70
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 366
    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/location/INSLocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "android.location.INSLocationManager"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    packed-switch p1, :pswitch_data_a8

    .line 134
    packed-switch p1, :pswitch_data_ae

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 202
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onGnssEventUpdated(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto/16 :goto_a6

    .line 193
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    sget-object v2, Landroid/location/GnssStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus;

    .line 194
    .local v2, "_arg0":Landroid/location/GnssStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onSatelliteStatusUpdated(Landroid/location/GnssStatus;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_a6

    .line 184
    .end local v2    # "_arg0":Landroid/location/GnssStatus;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 185
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onGnssEngineStatusUpdated(Z)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_a6

    .line 175
    .end local v2    # "_arg0":Z
    :pswitch_4b
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 176
    .local v2, "_arg0":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onPassiveLocationReported(Landroid/location/Location;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_a6

    .line 164
    .end local v2    # "_arg0":Landroid/location/Location;
    :pswitch_5d
    sget-object v2, Landroid/location/LocationConstants$STATE_TYPE;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationConstants$STATE_TYPE;

    .line 166
    .local v2, "_arg0":Landroid/location/LocationConstants$STATE_TYPE;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 167
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationManager$Stub;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_a6

    .line 155
    .end local v2    # "_arg0":Landroid/location/LocationConstants$STATE_TYPE;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_77
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 156
    .local v2, "_arg0":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->onMessageUpdated(Landroid/os/Message;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_a6

    .line 146
    .end local v2    # "_arg0":Landroid/os/Message;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/INSLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationCallback;

    move-result-object v2

    .line 147
    .local v2, "_arg0":Landroid/location/INSLocationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/location/INSLocationManager$Stub;->setCallback(Landroid/location/INSLocationCallback;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_a6

    .line 138
    .end local v2    # "_arg0":Landroid/location/INSLocationCallback;
    :pswitch_9b
    invoke-virtual {p0}, Landroid/location/INSLocationManager$Stub;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v2

    .line 139
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 141
    nop

    .line 213
    .end local v2    # "_result":Ljava/util/Map;
    :goto_a6
    return v1

    nop

    :pswitch_data_a8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_89
        :pswitch_77
        :pswitch_5d
        :pswitch_4b
        :pswitch_3d
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
