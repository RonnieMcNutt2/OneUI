.class public abstract Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintServiceReceiver"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticationFailed:I = 0x5

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final TRANSACTION_onChallengeGenerated:I = 0x8

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onFingerprintDetected:I = 0x4

.field static final TRANSACTION_onRemoved:I = 0x7

.field static final TRANSACTION_onUdfpsPointerDown:I = 0x9

.field static final TRANSACTION_onUdfpsPointerUp:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_24

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_5
    const-string v0, "onUdfpsPointerUp"

    return-object v0

    .line 115
    :pswitch_8
    const-string v0, "onUdfpsPointerDown"

    return-object v0

    .line 111
    :pswitch_b
    const-string v0, "onChallengeGenerated"

    return-object v0

    .line 107
    :pswitch_e
    const-string v0, "onRemoved"

    return-object v0

    .line 103
    :pswitch_11
    const-string v0, "onError"

    return-object v0

    .line 99
    :pswitch_14
    const-string v0, "onAuthenticationFailed"

    return-object v0

    .line 95
    :pswitch_17
    const-string v0, "onFingerprintDetected"

    return-object v0

    .line 91
    :pswitch_1a
    const-string v0, "onAuthenticationSucceeded"

    return-object v0

    .line 87
    :pswitch_1d
    const-string v0, "onAcquired"

    return-object v0

    .line 83
    :pswitch_20
    const-string v0, "onEnrollResult"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
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

    .line 74
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 411
    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const-string v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_d
    packed-switch p1, :pswitch_data_bc

    .line 146
    packed-switch p1, :pswitch_data_c2

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 240
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onUdfpsPointerUp(I)V

    .line 243
    goto/16 :goto_ba

    .line 232
    .end local v2    # "_arg0":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onUdfpsPointerDown(I)V

    .line 235
    goto/16 :goto_ba

    .line 220
    .end local v2    # "_arg0":I
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 225
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onChallengeGenerated(IIJ)V

    .line 227
    goto/16 :goto_ba

    .line 210
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_48
    sget-object v2, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 212
    .local v2, "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 215
    goto :goto_ba

    .line 200
    .end local v2    # "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "_arg1":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onError(II)V

    .line 205
    goto :goto_ba

    .line 194
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6a
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationFailed()V

    .line 195
    goto :goto_ba

    .line 183
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 188
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onFingerprintDetected(IIZ)V

    .line 190
    goto :goto_ba

    .line 171
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_81
    sget-object v2, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 173
    .local v2, "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 176
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    .line 178
    goto :goto_ba

    .line 161
    .end local v2    # "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAcquired(II)V

    .line 166
    goto :goto_ba

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a7
    sget-object v2, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 153
    .local v2, "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 156
    nop

    .line 250
    .end local v2    # "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "_arg1":I
    :goto_ba
    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_98
        :pswitch_81
        :pswitch_6e
        :pswitch_6a
        :pswitch_5b
        :pswitch_48
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
