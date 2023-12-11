.class public abstract Landroid/service/assist/classification/IFieldClassificationCallback$Stub;
.super Landroid/os/Binder;
.source "IFieldClassificationCallback.java"

# interfaces
.implements Landroid/service/assist/classification/IFieldClassificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/IFieldClassificationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancel:I = 0x5

.field static final TRANSACTION_isCompleted:I = 0x4

.field static final TRANSACTION_onCancellable:I = 0x1

.field static final TRANSACTION_onFailure:I = 0x3

.field static final TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/assist/classification/IFieldClassificationCallback;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/service/assist/classification/IFieldClassificationCallback;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_18

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_5
    const-string v0, "cancel"

    return-object v0

    .line 82
    :pswitch_8
    const-string/jumbo v0, "isCompleted"

    return-object v0

    .line 78
    :pswitch_c
    const-string/jumbo v0, "onFailure"

    return-object v0

    .line 74
    :pswitch_10
    const-string/jumbo v0, "onSuccess"

    return-object v0

    .line 70
    :pswitch_14
    const-string/jumbo v0, "onCancellable"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 258
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 97
    invoke-static {p1}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 101
    const-string v0, "android.service.assist.classification.IFieldClassificationCallback"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_d
    packed-switch p1, :pswitch_data_5a

    .line 113
    packed-switch p1, :pswitch_data_60

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 109
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 148
    :pswitch_1c
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->cancel()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_59

    .line 141
    :pswitch_23
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->isCompleted()Z

    move-result v2

    .line 142
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 144
    goto :goto_59

    .line 135
    .end local v2    # "_result":Z
    :pswitch_2e
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onFailure()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_59

    .line 127
    :pswitch_35
    sget-object v2, Landroid/service/assist/classification/FieldClassificationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/assist/classification/FieldClassificationResponse;

    .line 128
    .local v2, "_arg0":Landroid/service/assist/classification/FieldClassificationResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_59

    .line 118
    .end local v2    # "_arg0":Landroid/service/assist/classification/FieldClassificationResponse;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->onCancellable(Landroid/os/ICancellationSignal;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    nop

    .line 157
    .end local v2    # "_arg0":Landroid/os/ICancellationSignal;
    :goto_59
    return v1

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_47
        :pswitch_35
        :pswitch_2e
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
