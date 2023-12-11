.class public abstract Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;
.super Landroid/os/Binder;
.source "ISehRadioNetworkIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acbInfoChanged:I = 0x1

.field static final TRANSACTION_callDetailsChanged:I = 0x2

.field static final TRANSACTION_csFallback:I = 0x3

.field static final TRANSACTION_currentNetworkScanIsRequested:I = 0x4

.field static final TRANSACTION_eriInfoReceived:I = 0x5

.field static final TRANSACTION_execute:I = 0x6

.field static final TRANSACTION_extendedRegistrationState:I = 0x7

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_imsPreferenceChanged:I = 0x8

.field static final TRANSACTION_needTurnOnRadioIndication:I = 0x9

.field static final TRANSACTION_nrBearerAllocationChanged:I = 0xa

.field static final TRANSACTION_nrIconTypeChanged:I = 0xb

.field static final TRANSACTION_nrNetworkTypeAdded:I = 0xc

.field static final TRANSACTION_roamingNetworkScanIsRequested:I = 0xd

.field static final TRANSACTION_signalLevelInfoChanged:I = 0xe

.field static final TRANSACTION_vendorConfigurationChanged:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->markVintfStability()V

    .line 83
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
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

    .line 106
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    sparse-switch p1, :sswitch_data_13c

    .line 130
    packed-switch p1, :pswitch_data_14a

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 114
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 119
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v1

    .line 125
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 277
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .local v2, "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    .line 280
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->vendorConfigurationChanged(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_13a

    .line 266
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehSignalBar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehSignalBar;

    .line 269
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/network/SehSignalBar;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->signalLevelInfoChanged(ILvendor/samsung/hardware/radio/network/SehSignalBar;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_13a

    .line 256
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/network/SehSignalBar;
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 259
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->roamingNetworkScanIsRequested(I[B)V

    .line 261
    goto/16 :goto_13a

    .line 246
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 248
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->nrNetworkTypeAdded(II)V

    .line 251
    goto/16 :goto_13a

    .line 236
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->nrIconTypeChanged(II)V

    .line 241
    goto/16 :goto_13a

    .line 226
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 229
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->nrBearerAllocationChanged(II)V

    .line 231
    goto/16 :goto_13a

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->needTurnOnRadioIndication(I)V

    .line 221
    goto/16 :goto_13a

    .line 208
    .end local v2    # "_arg0":I
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 211
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->imsPreferenceChanged(I[I)V

    .line 213
    goto/16 :goto_13a

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;

    .line 200
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->extendedRegistrationState(ILvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_13a

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->execute(ILjava/lang/String;)V

    .line 192
    goto :goto_13a

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehEriInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehEriInfo;

    .line 179
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/network/SehEriInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->eriInfoReceived(ILvendor/samsung/hardware/radio/network/SehEriInfo;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_13a

    .line 166
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/network/SehEriInfo;
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 169
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->currentNetworkScanIsRequested(IB)V

    .line 171
    goto :goto_13a

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":B
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->csFallback(II)V

    .line 161
    goto :goto_13a

    .line 145
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehCallDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehCallDetails;

    .line 148
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehCallDetails;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->callDetailsChanged(I[Lvendor/samsung/hardware/radio/network/SehCallDetails;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_13a

    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehCallDetails;
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 138
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->acbInfoChanged(I[I)V

    .line 140
    nop

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :goto_13a
    return v1

    nop

    :sswitch_data_13c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_115
        :pswitch_106
        :pswitch_f7
        :pswitch_e1
        :pswitch_d2
        :pswitch_bc
        :pswitch_ac
        :pswitch_a0
        :pswitch_90
        :pswitch_80
        :pswitch_70
        :pswitch_60
        :pswitch_49
        :pswitch_32
    .end packed-switch
.end method
