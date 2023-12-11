.class public abstract Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;
.super Landroid/os/Binder;
.source "ISehRadioNetwork.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_emergencyControl:I = 0x1

.field static final TRANSACTION_emergencySearch:I = 0x2

.field static final TRANSACTION_getAvailableNetworks:I = 0x3

.field static final TRANSACTION_getCnap:I = 0x4

.field static final TRANSACTION_getCsgList:I = 0x5

.field static final TRANSACTION_getDisable2g:I = 0x6

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getNrIconType:I = 0x7

.field static final TRANSACTION_getNrMode:I = 0x8

.field static final TRANSACTION_getPreferredNetworkList:I = 0x9

.field static final TRANSACTION_getRoamingNetworkInfoViaBLE:I = 0xa

.field static final TRANSACTION_getVendorSpecificConfiguration:I = 0xb

.field static final TRANSACTION_selectCsgManual:I = 0xc

.field static final TRANSACTION_sendEncodedUssd:I = 0xd

.field static final TRANSACTION_sendRequestRaw:I = 0xe

.field static final TRANSACTION_sendRequestStrings:I = 0xf

.field static final TRANSACTION_setCurrentNetworkInfoViaBLE:I = 0x10

.field static final TRANSACTION_setDisable2g:I = 0x11

.field static final TRANSACTION_setImsCallList:I = 0x12

.field static final TRANSACTION_setNrMode:I = 0x13

.field static final TRANSACTION_setPreferredNetworkList:I = 0x14

.field static final TRANSACTION_setResponseFunctions:I = 0x15

.field static final TRANSACTION_setRoamingNetworkInfoViaBLE:I = 0x16

.field static final TRANSACTION_setScanResultViaBLE:I = 0x17

.field static final TRANSACTION_setVendorSpecificConfiguration:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->markVintfStability()V

    .line 110
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    if-eqz v1, :cond_14

    .line 123
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork;

    return-object v1

    .line 125
    :cond_14
    new-instance v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
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

    .line 133
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 134
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    :cond_d
    sparse-switch p1, :sswitch_data_1b8

    .line 157
    packed-switch p1, :pswitch_data_1c6

    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 141
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v1

    .line 146
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v1

    .line 152
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v1

    .line 381
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 383
    .local v2, "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    .line 384
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setVendorSpecificConfiguration(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    .line 386
    goto/16 :goto_1b7

    .line 369
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 373
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 374
    .local v4, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2, v3, v4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setScanResultViaBLE(IBB)V

    .line 376
    goto/16 :goto_1b7

    .line 359
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":B
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 361
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;

    .line 362
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setRoamingNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V

    .line 364
    goto/16 :goto_1b7

    .line 348
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;

    move-result-object v2

    .line 350
    .local v2, "_arg0":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;

    move-result-object v3

    .line 351
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_1b7

    .line 338
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .local v2, "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;

    .line 341
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setPreferredNetworkList(ILvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V

    .line 343
    goto/16 :goto_1b7

    .line 326
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 330
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 331
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3, v4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setNrMode(IIZ)V

    .line 333
    goto/16 :goto_1b7

    .line 316
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 318
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehImsCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehImsCall;

    .line 319
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehImsCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setImsCallList(I[Lvendor/samsung/hardware/radio/network/SehImsCall;)V

    .line 321
    goto/16 :goto_1b7

    .line 306
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehImsCall;
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setDisable2g(II)V

    .line 311
    goto/16 :goto_1b7

    .line 296
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;

    .line 299
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->setCurrentNetworkInfoViaBLE(I[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;)V

    .line 301
    goto/16 :goto_1b7

    .line 286
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehCurrentNetworkInfo;
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->sendRequestStrings(I[Ljava/lang/String;)V

    .line 291
    goto/16 :goto_1b7

    .line 276
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 279
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->sendRequestRaw(I[B)V

    .line 281
    goto/16 :goto_1b7

    .line 266
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehEncodedUssd;

    .line 269
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/network/SehEncodedUssd;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->sendEncodedUssd(ILvendor/samsung/hardware/radio/network/SehEncodedUssd;)V

    .line 271
    goto/16 :goto_1b7

    .line 256
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/network/SehEncodedUssd;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehCsgInfo;

    .line 259
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->selectCsgManual(ILvendor/samsung/hardware/radio/network/SehCsgInfo;)V

    .line 261
    goto/16 :goto_1b7

    .line 248
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getVendorSpecificConfiguration(I)V

    .line 251
    goto/16 :goto_1b7

    .line 236
    .end local v2    # "_arg0":I
    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 240
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3, v4}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getRoamingNetworkInfoViaBLE(IBLjava/lang/String;)V

    .line 243
    goto :goto_1b7

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getPreferredNetworkList(I)V

    .line 231
    goto :goto_1b7

    .line 220
    .end local v2    # "_arg0":I
    :pswitch_15b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getNrMode(I)V

    .line 223
    goto :goto_1b7

    .line 212
    .end local v2    # "_arg0":I
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getNrIconType(I)V

    .line 215
    goto :goto_1b7

    .line 204
    .end local v2    # "_arg0":I
    :pswitch_171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getDisable2g(I)V

    .line 207
    goto :goto_1b7

    .line 196
    .end local v2    # "_arg0":I
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getCsgList(I)V

    .line 199
    goto :goto_1b7

    .line 188
    .end local v2    # "_arg0":I
    :pswitch_187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getCnap(I)V

    .line 191
    goto :goto_1b7

    .line 180
    .end local v2    # "_arg0":I
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->getAvailableNetworks(I)V

    .line 183
    goto :goto_1b7

    .line 172
    .end local v2    # "_arg0":I
    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->emergencySearch(I)V

    .line 175
    goto :goto_1b7

    .line 162
    .end local v2    # "_arg0":I
    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetwork$Stub;->emergencyControl(II)V

    .line 167
    nop

    .line 393
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_1b7
    return v1

    :sswitch_data_1b8
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_1a8
        :pswitch_19d
        :pswitch_192
        :pswitch_187
        :pswitch_17c
        :pswitch_171
        :pswitch_166
        :pswitch_15b
        :pswitch_150
        :pswitch_13d
        :pswitch_131
        :pswitch_11d
        :pswitch_109
        :pswitch_f9
        :pswitch_e9
        :pswitch_d5
        :pswitch_c5
        :pswitch_b1
        :pswitch_9d
        :pswitch_89
        :pswitch_6e
        :pswitch_5a
        :pswitch_46
        :pswitch_32
    .end packed-switch
.end method
