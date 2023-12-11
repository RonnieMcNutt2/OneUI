.class public abstract Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;
.super Landroid/os/Binder;
.source "IDomainSelectionServiceController.java"

# interfaces
.implements Lcom/android/internal/telephony/IDomainSelectionServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IDomainSelectionServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_selectDomain:I = 0x1

.field static final TRANSACTION_updateBarringInfo:I = 0x3

.field static final TRANSACTION_updateServiceState:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.android.internal.telephony.IDomainSelectionServiceController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IDomainSelectionServiceController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    const-string v0, "com.android.internal.telephony.IDomainSelectionServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IDomainSelectionServiceController;

    if-eqz v1, :cond_14

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IDomainSelectionServiceController;

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 54
    packed-switch p0, :pswitch_data_12

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string/jumbo v0, "updateBarringInfo"

    return-object v0

    .line 62
    :pswitch_9
    const-string/jumbo v0, "updateServiceState"

    return-object v0

    .line 58
    :pswitch_d
    const-string/jumbo v0, "selectDomain"

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

    .line 49
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 199
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 77
    invoke-static {p1}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 81
    const-string v0, "com.android.internal.telephony.IDomainSelectionServiceController"

    .line 82
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    packed-switch p1, :pswitch_data_62

    .line 93
    packed-switch p1, :pswitch_data_68

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 89
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v1

    .line 120
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 124
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/BarringInfo;

    .line 125
    .local v4, "_arg2":Landroid/telephony/BarringInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;->updateBarringInfo(IILandroid/telephony/BarringInfo;)V

    .line 127
    goto :goto_61

    .line 108
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/BarringInfo;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ServiceState;

    .line 113
    .local v4, "_arg2":Landroid/telephony/ServiceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;->updateServiceState(IILandroid/telephony/ServiceState;)V

    .line 115
    goto :goto_61

    .line 98
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ServiceState;
    :pswitch_4a
    sget-object v2, Landroid/telephony/DomainSelectionService$SelectionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/DomainSelectionService$SelectionAttributes;

    .line 100
    .local v2, "_arg0":Landroid/telephony/DomainSelectionService$SelectionAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITransportSelectorCallback;

    move-result-object v3

    .line 101
    .local v3, "_arg1":Lcom/android/internal/telephony/ITransportSelectorCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IDomainSelectionServiceController$Stub;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V

    .line 103
    nop

    .line 134
    .end local v2    # "_arg0":Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/ITransportSelectorCallback;
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
