.class public abstract Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteLockMonitorCallback.java"

# interfaces
.implements Lcom/android/internal/widget/IRemoteLockMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IRemoteLockMonitorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeRemoteLockState:I = 0x1

.field static final TRANSACTION_checkRemoteLockPassword:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.android.internal.widget.IRemoteLockMonitorCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    const-string v0, "com.android.internal.widget.IRemoteLockMonitorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    if-eqz v1, :cond_14

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 54
    packed-switch p0, :pswitch_data_c

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_5
    const-string v0, "checkRemoteLockPassword"

    return-object v0

    .line 58
    :pswitch_8
    const-string v0, "changeRemoteLockState"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 73
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 77
    const-string v0, "com.android.internal.widget.IRemoteLockMonitorCallback"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    packed-switch p1, :pswitch_data_3e

    .line 89
    packed-switch p1, :pswitch_data_44

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 102
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 103
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->checkRemoteLockPassword([B)I

    move-result v3

    .line 105
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    goto :goto_3d

    .line 94
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":I
    :pswitch_2e
    sget-object v2, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RemoteLockInfo;

    .line 95
    .local v2, "_arg0":Lcom/android/internal/widget/RemoteLockInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V

    .line 97
    nop

    .line 114
    .end local v2    # "_arg0":Lcom/android/internal/widget/RemoteLockInfo;
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
