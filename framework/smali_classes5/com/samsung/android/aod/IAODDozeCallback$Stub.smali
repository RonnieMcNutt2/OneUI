.class public abstract Lcom/samsung/android/aod/IAODDozeCallback$Stub;
.super Landroid/os/Binder;
.source "IAODDozeCallback.java"

# interfaces
.implements Lcom/samsung/android/aod/IAODDozeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAODDozeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODDozeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAODToastRequested:I = 0x3

.field static final TRANSACTION_onDozeAcquired:I = 0x1

.field static final TRANSACTION_onDozeReleased:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.samsung.android.aod.IAODDozeCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.samsung.android.aod.IAODDozeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/aod/IAODDozeCallback;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/aod/IAODDozeCallback;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/samsung/android/aod/IAODDozeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_12

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :pswitch_5
    const-string/jumbo v0, "onAODToastRequested"

    return-object v0

    .line 63
    :pswitch_9
    const-string/jumbo v0, "onDozeReleased"

    return-object v0

    .line 59
    :pswitch_d
    const-string/jumbo v0, "onDozeAcquired"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 177
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 78
    invoke-static {p1}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 82
    const-string v0, "com.samsung.android.aod.IAODDozeCallback"

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_d
    packed-switch p1, :pswitch_data_34

    .line 94
    packed-switch p1, :pswitch_data_3a

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 109
    :pswitch_1c
    sget-object v2, Lcom/samsung/android/aod/AODToast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/aod/AODToast;

    .line 110
    .local v2, "_arg0":Lcom/samsung/android/aod/AODToast;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V

    .line 112
    goto :goto_33

    .line 103
    .end local v2    # "_arg0":Lcom/samsung/android/aod/AODToast;
    :pswitch_2b
    invoke-virtual {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->onDozeReleased()V

    .line 104
    goto :goto_33

    .line 98
    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->onDozeAcquired()V

    .line 99
    nop

    .line 119
    :goto_33
    return v1

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
