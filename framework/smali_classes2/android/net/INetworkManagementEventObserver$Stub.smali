.class public abstract Landroid/net/INetworkManagementEventObserver$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementEventObserver.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkManagementEventObserver"

.field static final TRANSACTION_addressRemoved:I = 0x6

.field static final TRANSACTION_addressUpdated:I = 0x5

.field static final TRANSACTION_interfaceAdded:I = 0x3

.field static final TRANSACTION_interfaceClassDataActivityChanged:I = 0x8

.field static final TRANSACTION_interfaceDnsServerInfo:I = 0x9

.field static final TRANSACTION_interfaceLinkStateChanged:I = 0x2

.field static final TRANSACTION_interfaceRemoved:I = 0x4

.field static final TRANSACTION_interfaceStatusChanged:I = 0x1

.field static final TRANSACTION_limitReached:I = 0x7

.field static final TRANSACTION_routeRemoved:I = 0xb

.field static final TRANSACTION_routeUpdated:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 120
    const-string v0, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 128
    if-nez p0, :cond_4

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 131
    :cond_4
    const-string v0, "android.net.INetworkManagementEventObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 132
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkManagementEventObserver;

    if-eqz v1, :cond_14

    .line 133
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkManagementEventObserver;

    return-object v1

    .line 135
    :cond_14
    new-instance v1, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 144
    packed-switch p0, :pswitch_data_26

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 188
    :pswitch_5
    const-string v0, "routeRemoved"

    return-object v0

    .line 184
    :pswitch_8
    const-string v0, "routeUpdated"

    return-object v0

    .line 180
    :pswitch_b
    const-string v0, "interfaceDnsServerInfo"

    return-object v0

    .line 176
    :pswitch_e
    const-string v0, "interfaceClassDataActivityChanged"

    return-object v0

    .line 172
    :pswitch_11
    const-string v0, "limitReached"

    return-object v0

    .line 168
    :pswitch_14
    const-string v0, "addressRemoved"

    return-object v0

    .line 164
    :pswitch_17
    const-string v0, "addressUpdated"

    return-object v0

    .line 160
    :pswitch_1a
    const-string v0, "interfaceRemoved"

    return-object v0

    .line 156
    :pswitch_1d
    const-string v0, "interfaceAdded"

    return-object v0

    .line 152
    :pswitch_20
    const-string v0, "interfaceLinkStateChanged"

    return-object v0

    .line 148
    :pswitch_23
    const-string v0, "interfaceStatusChanged"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
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

    .line 139
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 566
    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 199
    invoke-static {p1}, Landroid/net/INetworkManagementEventObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 203
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.net.INetworkManagementEventObserver"

    .line 204
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 205
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    :cond_13
    packed-switch v7, :pswitch_data_e2

    .line 215
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_e8

    .line 327
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 211
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return v10

    .line 320
    :pswitch_26
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 321
    .local v0, "_arg0":Landroid/net/RouteInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v6, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeRemoved(Landroid/net/RouteInfo;)V

    .line 323
    goto/16 :goto_e1

    .line 312
    .end local v0    # "_arg0":Landroid/net/RouteInfo;
    :pswitch_36
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 313
    .restart local v0    # "_arg0":Landroid/net/RouteInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v6, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeUpdated(Landroid/net/RouteInfo;)V

    .line 315
    goto/16 :goto_e1

    .line 300
    .end local v0    # "_arg0":Landroid/net/RouteInfo;
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 304
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 307
    goto/16 :goto_e1

    .line 286
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 288
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 290
    .local v13, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 292
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 293
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceClassDataActivityChanged(IZJI)V

    .line 295
    goto :goto_e1

    .line 276
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":I
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v6, v0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    goto :goto_e1

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 269
    .local v1, "_arg1":Landroid/net/LinkAddress;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {v6, v0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 271
    goto :goto_e1

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/LinkAddress;
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 259
    .restart local v1    # "_arg1":Landroid/net/LinkAddress;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v6, v0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 261
    goto :goto_e1

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/LinkAddress;
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {v6, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceRemoved(Ljava/lang/String;)V

    .line 251
    goto :goto_e1

    .line 240
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {v6, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceAdded(Ljava/lang/String;)V

    .line 243
    goto :goto_e1

    .line 230
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 233
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v6, v0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 235
    goto :goto_e1

    .line 220
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 223
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v6, v0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 225
    nop

    .line 330
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :goto_e1
    return v10

    :pswitch_data_e2
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_c3
        :pswitch_b8
        :pswitch_ad
        :pswitch_9a
        :pswitch_87
        :pswitch_78
        :pswitch_5a
        :pswitch_46
        :pswitch_36
        :pswitch_26
    .end packed-switch
.end method
