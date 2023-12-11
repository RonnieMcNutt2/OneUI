.class public abstract Lcom/samsung/android/cover/ICoverService$Stub;
.super Landroid/os/Binder;
.source "ICoverService.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ICoverService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCoverAppCovered:I = 0x3

.field static final TRANSACTION_onSystemReady:I = 0x1

.field static final TRANSACTION_onUpdateCoverState:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.samsung.android.cover.ICoverService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cover/ICoverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_4
    const-string v0, "com.samsung.android.cover.ICoverService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/cover/ICoverService;

    if-eqz v1, :cond_14

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cover/ICoverService;

    return-object v1

    .line 47
    :cond_14
    new-instance v1, Lcom/samsung/android/cover/ICoverService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/ICoverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_12

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_5
    const-string/jumbo v0, "onCoverAppCovered"

    return-object v0

    .line 64
    :pswitch_9
    const-string/jumbo v0, "onUpdateCoverState"

    return-object v0

    .line 60
    :pswitch_d
    const-string/jumbo v0, "onSystemReady"

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

    .line 51
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 190
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Lcom/samsung/android/cover/ICoverService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 83
    const-string v0, "com.samsung.android.cover.ICoverService"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_d
    packed-switch p1, :pswitch_data_42

    .line 95
    packed-switch p1, :pswitch_data_48

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 113
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 114
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverService$Stub;->onCoverAppCovered(Z)I

    move-result v3

    .line 116
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    goto :goto_41

    .line 105
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_2e
    sget-object v2, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverState;

    .line 106
    .local v2, "_arg0":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Lcom/samsung/android/cover/ICoverService$Stub;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 108
    goto :goto_41

    .line 99
    .end local v2    # "_arg0":Lcom/samsung/android/cover/CoverState;
    :pswitch_3d
    invoke-virtual {p0}, Lcom/samsung/android/cover/ICoverService$Stub;->onSystemReady()V

    .line 100
    nop

    .line 125
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
