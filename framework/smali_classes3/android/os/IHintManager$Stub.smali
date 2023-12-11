.class public abstract Landroid/os/IHintManager$Stub;
.super Landroid/os/Binder;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IHintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createHintSession:I = 0x1

.field static final TRANSACTION_getHintSessionPreferredRate:I = 0x2

.field static final TRANSACTION_getHintSessionThreadIds:I = 0x4

.field static final TRANSACTION_setHintSessionThreads:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.os.IHintManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.os.IHintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IHintManager;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/os/IHintManager;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/os/IHintManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_12

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 79
    :pswitch_5
    const-string v0, "getHintSessionThreadIds"

    return-object v0

    .line 75
    :pswitch_8
    const-string/jumbo v0, "setHintSessionThreads"

    return-object v0

    .line 71
    :pswitch_c
    const-string v0, "getHintSessionPreferredRate"

    return-object v0

    .line 67
    :pswitch_f
    const-string v0, "createHintSession"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 253
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 90
    invoke-static {p1}, Landroid/os/IHintManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const-string v0, "android.os.IHintManager"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    packed-switch p1, :pswitch_data_6e

    .line 106
    packed-switch p1, :pswitch_data_74

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 102
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 143
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Landroid/os/IHintSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$Stub;->getHintSessionThreadIds(Landroid/os/IHintSession;)[I

    move-result-object v3

    .line 146
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 148
    goto :goto_6d

    .line 132
    .end local v2    # "_arg0":Landroid/os/IHintSession;
    .end local v3    # "_result":[I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":Landroid/os/IHintSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 135
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2, v3}, Landroid/os/IHintManager$Stub;->setHintSessionThreads(Landroid/os/IHintSession;[I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_6d

    .line 124
    .end local v2    # "_arg0":Landroid/os/IHintSession;
    .end local v3    # "_arg1":[I
    :pswitch_48
    invoke-virtual {p0}, Landroid/os/IHintManager$Stub;->getHintSessionPreferredRate()J

    move-result-wide v2

    .line 125
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    goto :goto_6d

    .line 111
    .end local v2    # "_result":J
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 115
    .restart local v3    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 116
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IHintManager$Stub;->createHintSession(Landroid/os/IBinder;[IJ)Landroid/os/IHintSession;

    move-result-object v6

    .line 118
    .local v6, "_result":Landroid/os/IHintSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 120
    nop

    .line 155
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Landroid/os/IHintSession;
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_53
        :pswitch_48
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
