.class public abstract Lcom/sec/android/iaft/IIAFTManagerService$Stub;
.super Landroid/os/Binder;
.source "IIAFTManagerService.java"

# interfaces
.implements Lcom/sec/android/iaft/IIAFTManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IIAFTManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IIAFTManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerCallback:I = 0x4

.field static final TRANSACTION_startAtrace:I = 0x2

.field static final TRANSACTION_startAtraceAndAnalyze:I = 0x1

.field static final TRANSACTION_stopTrace:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.sec.android.iaft.IIAFTManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/iaft/IIAFTManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/iaft/IIAFTManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.sec.android.iaft.IIAFTManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/iaft/IIAFTManagerService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/sec/android/iaft/IIAFTManagerService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/sec/android/iaft/IIAFTManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/iaft/IIAFTManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_12

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_5
    const-string v0, "registerCallback"

    return-object v0

    .line 70
    :pswitch_8
    const-string v0, "stopTrace"

    return-object v0

    .line 66
    :pswitch_b
    const-string v0, "startAtrace"

    return-object v0

    .line 62
    :pswitch_e
    const-string v0, "startAtraceAndAnalyze"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 227
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Lcom/sec/android/iaft/IIAFTManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    const-string v0, "com.sec.android.iaft.IIAFTManagerService"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_d
    packed-switch p1, :pswitch_data_54

    .line 101
    packed-switch p1, :pswitch_data_5a

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 131
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/iaft/callback/IIAFTCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/iaft/callback/IIAFTCallback;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Lcom/sec/android/iaft/callback/IIAFTCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Lcom/sec/android/iaft/IIAFTManagerService$Stub;->registerCallback(Lcom/sec/android/iaft/callback/IIAFTCallback;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_52

    .line 124
    .end local v2    # "_arg0":Lcom/sec/android/iaft/callback/IIAFTCallback;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/iaft/IIAFTManagerService$Stub;->stopTrace()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_52

    .line 118
    :pswitch_35
    invoke-virtual {p0}, Lcom/sec/android/iaft/IIAFTManagerService$Stub;->startAtrace()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto :goto_52

    .line 106
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 111
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/iaft/IIAFTManagerService$Stub;->startAtraceAndAnalyze(ILjava/lang/String;I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    nop

    .line 142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_35
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
