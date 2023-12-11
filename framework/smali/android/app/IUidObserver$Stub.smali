.class public abstract Landroid/app/IUidObserver$Stub;
.super Landroid/os/Binder;
.source "IUidObserver.java"

# interfaces
.implements Landroid/app/IUidObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUidObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUidObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUidObserver"

.field static final TRANSACTION_onUidActive:I = 0x2

.field static final TRANSACTION_onUidCachedChanged:I = 0x6

.field static final TRANSACTION_onUidGone:I = 0x1

.field static final TRANSACTION_onUidIdle:I = 0x3

.field static final TRANSACTION_onUidProcAdjChanged:I = 0x5

.field static final TRANSACTION_onUidStateChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.app.IUidObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUidObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "android.app.IUidObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUidObserver;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/app/IUidObserver;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/app/IUidObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUidObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_1e

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string/jumbo v0, "onUidCachedChanged"

    return-object v0

    .line 121
    :pswitch_9
    const-string/jumbo v0, "onUidProcAdjChanged"

    return-object v0

    .line 117
    :pswitch_d
    const-string/jumbo v0, "onUidStateChanged"

    return-object v0

    .line 113
    :pswitch_11
    const-string/jumbo v0, "onUidIdle"

    return-object v0

    .line 109
    :pswitch_15
    const-string/jumbo v0, "onUidActive"

    return-object v0

    .line 105
    :pswitch_19
    const-string/jumbo v0, "onUidGone"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 365
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/app/IUidObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    move-object/from16 v6, p0

    move/from16 v7, p1

    const-string v8, "android.app.IUidObserver"

    .line 141
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v7, v9, :cond_14

    const v0, 0xffffff

    if-gt v7, v0, :cond_14

    .line 142
    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 141
    :cond_14
    move-object/from16 v10, p2

    .line 144
    :goto_16
    packed-switch v7, :pswitch_data_90

    .line 152
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_96

    .line 218
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 148
    :pswitch_23
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v9

    .line 209
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 212
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {v6, v0, v1}, Landroid/app/IUidObserver$Stub;->onUidCachedChanged(IZ)V

    .line 214
    goto :goto_8e

    .line 199
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v6, v0, v1}, Landroid/app/IUidObserver$Stub;->onUidProcAdjChanged(II)V

    .line 204
    goto :goto_8e

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 187
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 189
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 191
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 192
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IUidObserver$Stub;->onUidStateChanged(IIJI)V

    .line 194
    goto :goto_8e

    .line 175
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":I
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 178
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v6, v0, v1}, Landroid/app/IUidObserver$Stub;->onUidIdle(IZ)V

    .line 180
    goto :goto_8e

    .line 167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {v6, v0}, Landroid/app/IUidObserver$Stub;->onUidActive(I)V

    .line 170
    goto :goto_8e

    .line 157
    .end local v0    # "_arg0":I
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 160
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {v6, v0, v1}, Landroid/app/IUidObserver$Stub;->onUidGone(IZ)V

    .line 162
    nop

    .line 221
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :goto_8e
    return v9

    nop

    :pswitch_data_90
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_74
        :pswitch_65
        :pswitch_47
        :pswitch_38
        :pswitch_29
    .end packed-switch
.end method
