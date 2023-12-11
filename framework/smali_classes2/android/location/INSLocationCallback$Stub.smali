.class public abstract Landroid/location/INSLocationCallback$Stub;
.super Landroid/os/Binder;
.source "INSLocationCallback.java"

# interfaces
.implements Landroid/location/INSLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/INSLocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/INSLocationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getActiveRequests:I = 0x2

.field static final TRANSACTION_getUidState:I = 0xa

.field static final TRANSACTION_isLocationEnabled:I = 0x3

.field static final TRANSACTION_isProviderEnabled:I = 0xc

.field static final TRANSACTION_noteGpsOp:I = 0x4

.field static final TRANSACTION_registerDeviceActivityDetector:I = 0x6

.field static final TRANSACTION_requestToUpdateDeviceActivityDetector:I = 0x8

.field static final TRANSACTION_sendLogToHqm:I = 0x5

.field static final TRANSACTION_setFeatureDeviceActivity:I = 0x9

.field static final TRANSACTION_setMotionPowerSaveMode:I = 0xb

.field static final TRANSACTION_unregisterDeviceActivityDetector:I = 0x7

.field static final TRANSACTION_updateBackgroundThrottlingAllowlist:I = 0x1

.field static final TRANSACTION_writeUtLog:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "android.location.INSLocationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/location/INSLocationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_4
    const-string v0, "android.location.INSLocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/INSLocationCallback;

    if-eqz v1, :cond_14

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/location/INSLocationCallback;

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Landroid/location/INSLocationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/INSLocationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 112
    packed-switch p0, :pswitch_data_2c

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 164
    :pswitch_5
    const-string v0, "writeUtLog"

    return-object v0

    .line 160
    :pswitch_8
    const-string v0, "isProviderEnabled"

    return-object v0

    .line 156
    :pswitch_b
    const-string v0, "setMotionPowerSaveMode"

    return-object v0

    .line 152
    :pswitch_e
    const-string v0, "getUidState"

    return-object v0

    .line 148
    :pswitch_11
    const-string v0, "setFeatureDeviceActivity"

    return-object v0

    .line 144
    :pswitch_14
    const-string v0, "requestToUpdateDeviceActivityDetector"

    return-object v0

    .line 140
    :pswitch_17
    const-string v0, "unregisterDeviceActivityDetector"

    return-object v0

    .line 136
    :pswitch_1a
    const-string v0, "registerDeviceActivityDetector"

    return-object v0

    .line 132
    :pswitch_1d
    const-string v0, "sendLogToHqm"

    return-object v0

    .line 128
    :pswitch_20
    const-string v0, "noteGpsOp"

    return-object v0

    .line 124
    :pswitch_23
    const-string v0, "isLocationEnabled"

    return-object v0

    .line 120
    :pswitch_26
    const-string v0, "getActiveRequests"

    return-object v0

    .line 116
    :pswitch_29
    const-string v0, "updateBackgroundThrottlingAllowlist"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
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

    .line 107
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 601
    const/16 v0, 0xc

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 175
    invoke-static {p1}, Landroid/location/INSLocationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 179
    const-string v0, "android.location.INSLocationCallback"

    .line 180
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 181
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    :cond_d
    packed-switch p1, :pswitch_data_104

    .line 191
    packed-switch p1, :pswitch_data_10a

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 187
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return v1

    .line 317
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 319
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->writeUtLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto/16 :goto_102

    .line 305
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 308
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->isProviderEnabled(Ljava/lang/String;I)Z

    move-result v4

    .line 310
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    goto/16 :goto_102

    .line 296
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 297
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->setMotionPowerSaveMode(Z)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto/16 :goto_102

    .line 284
    .end local v2    # "_arg0":Z
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->getUidState(II)Landroid/os/Bundle;

    move-result-object v4

    .line 289
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    goto/16 :goto_102

    .line 274
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 275
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->setFeatureDeviceActivity(Z)Z

    move-result v3

    .line 277
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    goto/16 :goto_102

    .line 267
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_83
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->requestToUpdateDeviceActivityDetector()V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto/16 :goto_102

    .line 261
    :pswitch_8b
    invoke-virtual {p0}, Landroid/location/INSLocationCallback$Stub;->unregisterDeviceActivityDetector()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_102

    .line 249
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 254
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->registerDeviceActivityDetector(IIZ)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_102

    .line 236
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/INSLocationCallback$Stub;->sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto :goto_102

    .line 225
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Landroid/location/INSLocationCallback$Stub;->noteGpsOp(II)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_102

    .line 215
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->isLocationEnabled(I)Z

    move-result v3

    .line 218
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    goto :goto_102

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 208
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 210
    goto :goto_102

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 197
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/location/INSLocationCallback$Stub;->updateBackgroundThrottlingAllowlist(Ljava/util/List;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    nop

    .line 332
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_102
    return v1

    nop

    :pswitch_data_104
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_f4
        :pswitch_e2
        :pswitch_d0
        :pswitch_be
        :pswitch_a8
        :pswitch_92
        :pswitch_8b
        :pswitch_83
        :pswitch_70
        :pswitch_59
        :pswitch_4a
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
