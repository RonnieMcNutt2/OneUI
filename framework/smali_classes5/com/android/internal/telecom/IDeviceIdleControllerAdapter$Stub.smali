.class public abstract Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleControllerAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_exemptAppTemporarilyForEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telecom.IDeviceIdleControllerAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "com.android.internal.telecom.IDeviceIdleControllerAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 52
    packed-switch p0, :pswitch_data_8

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 56
    :pswitch_5
    const-string v0, "exemptAppTemporarilyForEvent"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 67
    invoke-static {p1}, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    move/from16 v0, p1

    const-string v1, "com.android.internal.telecom.IDeviceIdleControllerAdapter"

    .line 72
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 73
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 72
    :cond_12
    move-object/from16 v3, p2

    .line 75
    :goto_14
    packed-switch v0, :pswitch_data_48

    .line 83
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_4e

    .line 102
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 79
    :pswitch_21
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v2

    .line 88
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 92
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 94
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    move-object/from16 v5, p0

    move-object v6, v11

    move-wide v7, v12

    move v9, v14

    move-object v10, v15

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;->exemptAppTemporarilyForEvent(Ljava/lang/String;JILjava/lang/String;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    nop

    .line 105
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":J
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    return v2

    :pswitch_data_48
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method
