.class public abstract Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;
.super Landroid/os/Binder;
.source "IFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/IFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/IFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createSession:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSensorProps:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->markVintfStability()V

    .line 47
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/IFingerprint;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    sparse-switch p0, :sswitch_data_12

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 83
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 87
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 79
    :sswitch_b
    const-string v0, "createSession"

    return-object v0

    .line 75
    :sswitch_e
    const-string v0, "getSensorProps"

    return-object v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 258
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    sparse-switch p1, :sswitch_data_5c

    .line 126
    packed-switch p1, :pswitch_data_6a

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 115
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v1

    .line 121
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 138
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    move-result-object v4

    .line 143
    .local v4, "_arg2":Landroid/hardware/biometrics/fingerprint/ISessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v5

    .line 145
    .local v5, "_result":Landroid/hardware/biometrics/fingerprint/ISession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 147
    goto :goto_5b

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/biometrics/fingerprint/ISessionCallback;
    .end local v5    # "_result":Landroid/hardware/biometrics/fingerprint/ISession;
    :pswitch_50
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object v2

    .line 131
    .local v2, "_result":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 133
    nop

    .line 154
    .end local v2    # "_result":[Landroid/hardware/biometrics/fingerprint/SensorProps;
    :goto_5b
    return v1

    :sswitch_data_5c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_50
        :pswitch_32
    .end packed-switch
.end method
