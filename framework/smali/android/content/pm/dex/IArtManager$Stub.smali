.class public abstract Landroid/content/pm/dex/IArtManager$Stub;
.super Landroid/os/Binder;
.source "IArtManager.java"

# interfaces
.implements Landroid/content/pm/dex/IArtManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/dex/IArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/dex/IArtManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.dex.IArtManager"

.field static final TRANSACTION_isRuntimeProfilingEnabled:I = 0x2

.field static final TRANSACTION_snapshotRuntimeProfile:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.content.pm.dex.IArtManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/dex/IArtManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/IArtManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    const-string v0, "android.content.pm.dex.IArtManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/dex/IArtManager;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/content/pm/dex/IArtManager;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/content/pm/dex/IArtManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/dex/IArtManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 84
    packed-switch p0, :pswitch_data_e

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string/jumbo v0, "isRuntimeProfilingEnabled"

    return-object v0

    .line 88
    :pswitch_9
    const-string/jumbo v0, "snapshotRuntimeProfile"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/content/pm/dex/IArtManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "android.content.pm.dex.IArtManager"

    .line 108
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_14

    const v4, 0xffffff

    if-gt v0, v4, :cond_14

    .line 109
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    .line 108
    :cond_14
    move-object/from16 v4, p2

    .line 111
    :goto_16
    packed-switch v0, :pswitch_data_6c

    .line 119
    packed-switch v0, :pswitch_data_72

    .line 152
    move-object/from16 v13, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 115
    :pswitch_23
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v3

    .line 141
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 143
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    move-object/from16 v13, p0

    invoke-virtual {v13, v5, v6}, Landroid/content/pm/dex/IArtManager$Stub;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v7

    .line 146
    .local v7, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    goto :goto_6b

    .line 124
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :pswitch_3f
    move-object/from16 v13, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 128
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    move-result-object v15

    .line 132
    .local v15, "_arg3":Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    move-object/from16 v7, p0

    move v8, v5

    move-object v9, v6

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/dex/IArtManager$Stub;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    nop

    .line 155
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;
    .end local v16    # "_arg4":Ljava/lang/String;
    :goto_6b
    return v3

    :pswitch_data_6c
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_27
    .end packed-switch
.end method
