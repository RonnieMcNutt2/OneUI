.class public abstract Lcom/android/internal/telephony/INumberVerificationCallback$Stub;
.super Landroid/os/Binder;
.source "INumberVerificationCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/INumberVerificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/INumberVerificationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/INumberVerificationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCallReceived:I = 0x1

.field static final TRANSACTION_onVerificationFailed:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.android.internal.telephony.INumberVerificationCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/INumberVerificationCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_4
    const-string v0, "com.android.internal.telephony.INumberVerificationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/INumberVerificationCallback;

    if-eqz v1, :cond_14

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/INumberVerificationCallback;

    return-object v1

    .line 42
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/INumberVerificationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 51
    packed-switch p0, :pswitch_data_e

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 59
    :pswitch_5
    const-string/jumbo v0, "onVerificationFailed"

    return-object v0

    .line 55
    :pswitch_9
    const-string/jumbo v0, "onCallReceived"

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

    .line 46
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 70
    invoke-static {p1}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const-string v0, "com.android.internal.telephony.INumberVerificationCallback"

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_d
    packed-switch p1, :pswitch_data_34

    .line 86
    packed-switch p1, :pswitch_data_3a

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 82
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 99
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->onVerificationFailed(I)V

    .line 102
    goto :goto_32

    .line 91
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->onCallReceived(Ljava/lang/String;)V

    .line 94
    nop

    .line 109
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_32
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
