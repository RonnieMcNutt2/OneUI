.class public abstract Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;
.super Landroid/os/Binder;
.source "ITransportSelectorCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/ITransportSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITransportSelectorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITransportSelectorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCreated:I = 0x1

.field static final TRANSACTION_onSelectionTerminated:I = 0x5

.field static final TRANSACTION_onWlanSelected:I = 0x2

.field static final TRANSACTION_onWwanSelected:I = 0x3

.field static final TRANSACTION_onWwanSelectedAsync:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.android.internal.telephony.ITransportSelectorCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITransportSelectorCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.android.internal.telephony.ITransportSelectorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITransportSelectorCallback;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITransportSelectorCallback;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_1a

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "onSelectionTerminated"

    return-object v0

    .line 77
    :pswitch_9
    const-string/jumbo v0, "onWwanSelectedAsync"

    return-object v0

    .line 73
    :pswitch_d
    const-string/jumbo v0, "onWwanSelected"

    return-object v0

    .line 69
    :pswitch_11
    const-string/jumbo v0, "onWlanSelected"

    return-object v0

    .line 65
    :pswitch_15
    const-string/jumbo v0, "onCreated"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 56
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 245
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "com.android.internal.telephony.ITransportSelectorCallback"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_5c

    .line 108
    packed-switch p1, :pswitch_data_62

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 144
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onSelectionTerminated(I)V

    .line 147
    goto :goto_5b

    .line 136
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITransportSelectorResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITransportSelectorResultCallback;

    move-result-object v2

    .line 137
    .local v2, "_arg0":Lcom/android/internal/telephony/ITransportSelectorResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onWwanSelectedAsync(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    .line 139
    goto :goto_5b

    .line 128
    .end local v2    # "_arg0":Lcom/android/internal/telephony/ITransportSelectorResultCallback;
    :pswitch_36
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onWwanSelected()Lcom/android/internal/telephony/IWwanSelectorCallback;

    move-result-object v2

    .line 129
    .local v2, "_result":Lcom/android/internal/telephony/IWwanSelectorCallback;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 131
    goto :goto_5b

    .line 121
    .end local v2    # "_result":Lcom/android/internal/telephony/IWwanSelectorCallback;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 122
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onWlanSelected(Z)V

    .line 124
    goto :goto_5b

    .line 113
    .end local v2    # "_arg0":Z
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IDomainSelector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IDomainSelector;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Lcom/android/internal/telephony/IDomainSelector;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onCreated(Lcom/android/internal/telephony/IDomainSelector;)V

    .line 116
    nop

    .line 154
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IDomainSelector;
    :goto_5b
    return v1

    :pswitch_data_5c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
