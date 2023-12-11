.class public abstract Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;
.super Landroid/os/Binder;
.source "IBiometricSysuiReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricSysuiReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricSysuiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeviceCredentialPressed:I = 0x3

.field static final TRANSACTION_onDialogAnimatedIn:I = 0x5

.field static final TRANSACTION_onDialogDismissed:I = 0x1

.field static final TRANSACTION_onStartFingerprintNow:I = 0x6

.field static final TRANSACTION_onSystemEvent:I = 0x4

.field static final TRANSACTION_onTryAgainPressed:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.hardware.biometrics.IBiometricSysuiReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricSysuiReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_1e

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string/jumbo v0, "onStartFingerprintNow"

    return-object v0

    .line 93
    :pswitch_9
    const-string/jumbo v0, "onDialogAnimatedIn"

    return-object v0

    .line 89
    :pswitch_d
    const-string/jumbo v0, "onSystemEvent"

    return-object v0

    .line 85
    :pswitch_11
    const-string/jumbo v0, "onDeviceCredentialPressed"

    return-object v0

    .line 81
    :pswitch_15
    const-string/jumbo v0, "onTryAgainPressed"

    return-object v0

    .line 77
    :pswitch_19
    const-string/jumbo v0, "onDialogDismissed"

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

    .line 68
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 275
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 112
    const-string v0, "android.hardware.biometrics.IBiometricSysuiReceiver"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    packed-switch p1, :pswitch_data_4e

    .line 124
    packed-switch p1, :pswitch_data_54

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 164
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onStartFingerprintNow()V

    .line 165
    goto :goto_4d

    .line 157
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 158
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onDialogAnimatedIn(Z)V

    .line 160
    goto :goto_4d

    .line 149
    .end local v2    # "_arg0":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onSystemEvent(I)V

    .line 152
    goto :goto_4d

    .line 143
    .end local v2    # "_arg0":I
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onDeviceCredentialPressed()V

    .line 144
    goto :goto_4d

    .line 138
    :pswitch_3a
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onTryAgainPressed()V

    .line 139
    goto :goto_4d

    .line 129
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 132
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onDialogDismissed(I[B)V

    .line 134
    nop

    .line 172
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_2b
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
