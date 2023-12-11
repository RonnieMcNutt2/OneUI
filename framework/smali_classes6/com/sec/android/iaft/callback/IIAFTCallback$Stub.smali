.class public abstract Lcom/sec/android/iaft/callback/IIAFTCallback$Stub;
.super Landroid/os/Binder;
.source "IIAFTCallback.java"

# interfaces
.implements Lcom/sec/android/iaft/callback/IIAFTCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/callback/IIAFTCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/callback/IIAFTCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_traceResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.sec.android.iaft.callback.IIAFTCallback"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/iaft/callback/IIAFTCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_4
    const-string v0, "com.sec.android.iaft.callback.IIAFTCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/iaft/callback/IIAFTCallback;

    if-eqz v1, :cond_14

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/sec/android/iaft/callback/IIAFTCallback;

    return-object v1

    .line 39
    :cond_14
    new-instance v1, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 48
    packed-switch p0, :pswitch_data_8

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 52
    :pswitch_5
    const-string v0, "traceResult"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 43
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 63
    invoke-static {p1}, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 67
    move/from16 v0, p1

    const-string v1, "com.sec.android.iaft.callback.IIAFTCallback"

    .line 68
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 69
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 68
    :cond_12
    move-object/from16 v3, p2

    .line 71
    :goto_14
    packed-switch v0, :pswitch_data_4e

    .line 79
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_54

    .line 100
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 75
    :pswitch_21
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v2

    .line 84
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 88
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 90
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 92
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 93
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    move-object/from16 v5, p0

    move-object v6, v11

    move v7, v12

    move v8, v13

    move v9, v14

    move v10, v15

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub;->traceResult(Ljava/lang/String;IIII)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    nop

    .line 103
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    return v2

    nop

    :pswitch_data_4e
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method
