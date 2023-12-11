.class public abstract Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IBiometricServiceReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAcquired:I = 0x4

.field static final TRANSACTION_onAuthenticationFailed:I = 0x2

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x1

.field static final TRANSACTION_onDialogDismissed:I = 0x5

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onSemAuthenticationSucceeded:I = 0x7

.field static final TRANSACTION_onSystemEvent:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_22

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string/jumbo v0, "onSemAuthenticationSucceeded"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "onSystemEvent"

    return-object v0

    .line 99
    :pswitch_d
    const-string/jumbo v0, "onDialogDismissed"

    return-object v0

    .line 95
    :pswitch_11
    const-string/jumbo v0, "onAcquired"

    return-object v0

    .line 91
    :pswitch_15
    const-string/jumbo v0, "onError"

    return-object v0

    .line 87
    :pswitch_19
    const-string/jumbo v0, "onAuthenticationFailed"

    return-object v0

    .line 83
    :pswitch_1d
    const-string/jumbo v0, "onAuthenticationSucceeded"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
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

    .line 74
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 329
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    packed-switch p1, :pswitch_data_78

    .line 134
    packed-switch p1, :pswitch_data_7e

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 190
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 195
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onSemAuthenticationSucceeded(II[B)V

    .line 197
    goto :goto_76

    .line 182
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onSystemEvent(I)V

    .line 185
    goto :goto_76

    .line 174
    .end local v2    # "_arg0":I
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onDialogDismissed(I)V

    .line 177
    goto :goto_76

    .line 164
    .end local v2    # "_arg0":I
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAcquired(ILjava/lang/String;)V

    .line 169
    goto :goto_76

    .line 152
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 157
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onError(III)V

    .line 159
    goto :goto_76

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_67
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAuthenticationFailed()V

    .line 147
    goto :goto_76

    .line 139
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAuthenticationSucceeded(I)V

    .line 142
    nop

    .line 204
    .end local v2    # "_arg0":I
    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_67
        :pswitch_54
        :pswitch_45
        :pswitch_3a
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
