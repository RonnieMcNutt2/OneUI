.class public abstract Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;
.super Landroid/os/Binder;
.source "IGnssGeofenceCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofenceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_gnssGeofenceAddCb:I = 0x3

.field static final TRANSACTION_gnssGeofencePauseCb:I = 0x5

.field static final TRANSACTION_gnssGeofenceRemoveCb:I = 0x4

.field static final TRANSACTION_gnssGeofenceResumeCb:I = 0x6

.field static final TRANSACTION_gnssGeofenceStatusCb:I = 0x2

.field static final TRANSACTION_gnssGeofenceTransitionCb:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->markVintfStability()V

    .line 57
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofenceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssGeofenceCallback;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssGeofenceCallback;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    sparse-switch p0, :sswitch_data_1e

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 109
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 113
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 105
    :sswitch_b
    const-string v0, "gnssGeofenceResumeCb"

    return-object v0

    .line 101
    :sswitch_e
    const-string v0, "gnssGeofencePauseCb"

    return-object v0

    .line 97
    :sswitch_11
    const-string v0, "gnssGeofenceRemoveCb"

    return-object v0

    .line 93
    :sswitch_14
    const-string v0, "gnssGeofenceAddCb"

    return-object v0

    .line 89
    :sswitch_17
    const-string v0, "gnssGeofenceStatusCb"

    return-object v0

    .line 85
    :sswitch_1a
    const-string v0, "gnssGeofenceTransitionCb"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_17
        0x3 -> :sswitch_14
        0x4 -> :sswitch_11
        0x5 -> :sswitch_e
        0x6 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 410
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 129
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 130
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_15
    sparse-switch v7, :sswitch_data_c0

    .line 152
    packed-switch v7, :pswitch_data_ce

    .line 226
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 136
    :sswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v11

    .line 141
    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return v11

    .line 147
    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v11

    .line 216
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceResumeCb(II)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto/16 :goto_be

    .line 205
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofencePauseCb(II)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_be

    .line 194
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceRemoveCb(II)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_be

    .line 183
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceAddCb(II)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_be

    .line 172
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/GnssLocation;

    .line 175
    .local v1, "_arg1":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {v6, v0, v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceStatusCb(ILandroid/hardware/gnss/GnssLocation;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_be

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/gnss/GnssLocation;
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 159
    .local v12, "_arg0":I
    sget-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/gnss/GnssLocation;

    .line 161
    .local v13, "_arg1":Landroid/hardware/gnss/GnssLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 163
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 164
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->gnssGeofenceTransitionCb(ILandroid/hardware/gnss/GnssLocation;IJ)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    nop

    .line 229
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/hardware/gnss/GnssLocation;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :goto_be
    return v11

    nop

    :sswitch_data_c0
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_99
        :pswitch_83
        :pswitch_71
        :pswitch_5f
        :pswitch_4d
        :pswitch_3a
    .end packed-switch
.end method
