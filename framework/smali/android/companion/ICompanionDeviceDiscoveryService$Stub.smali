.class public abstract Landroid/companion/ICompanionDeviceDiscoveryService$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceDiscoveryService.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceDiscoveryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceDiscoveryService"

.field static final TRANSACTION_onAssociationCreated:I = 0x2

.field static final TRANSACTION_startDiscovery:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.companion.ICompanionDeviceDiscoveryService"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceDiscoveryService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "android.companion.ICompanionDeviceDiscoveryService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/ICompanionDeviceDiscoveryService;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Landroid/companion/ICompanionDeviceDiscoveryService;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 52
    packed-switch p0, :pswitch_data_e

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 60
    :pswitch_5
    const-string/jumbo v0, "onAssociationCreated"

    return-object v0

    .line 56
    :pswitch_9
    const-string/jumbo v0, "startDiscovery"

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

    .line 47
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 71
    invoke-static {p1}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 75
    const-string v0, "android.companion.ICompanionDeviceDiscoveryService"

    .line 76
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_d
    packed-switch p1, :pswitch_data_44

    .line 87
    packed-switch p1, :pswitch_data_4a

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 105
    :pswitch_1c
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->onAssociationCreated()V

    .line 106
    goto :goto_43

    .line 92
    :pswitch_20
    sget-object v2, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationRequest;

    .line 94
    .local v2, "_arg0":Landroid/companion/AssociationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object v4

    .line 98
    .local v4, "_arg2":Landroid/companion/IAssociationRequestCallback;
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 99
    .local v5, "_arg3":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IAssociationRequestCallback;Lcom/android/internal/infra/AndroidFuture;)V

    .line 101
    nop

    .line 113
    .end local v2    # "_arg0":Landroid/companion/AssociationRequest;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/companion/IAssociationRequestCallback;
    .end local v5    # "_arg3":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
