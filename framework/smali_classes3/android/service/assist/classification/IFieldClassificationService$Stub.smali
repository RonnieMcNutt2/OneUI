.class public abstract Landroid/service/assist/classification/IFieldClassificationService$Stub;
.super Landroid/os/Binder;
.source "IFieldClassificationService.java"

# interfaces
.implements Landroid/service/assist/classification/IFieldClassificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/assist/classification/IFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onDisconnected:I = 0x2

.field static final TRANSACTION_onFieldClassificationRequest:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    invoke-virtual {p0, p0, v0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/assist/classification/IFieldClassificationService;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/service/assist/classification/IFieldClassificationService;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_12

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string/jumbo v0, "onFieldClassificationRequest"

    return-object v0

    .line 67
    :pswitch_9
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 63
    :pswitch_d
    const-string/jumbo v0, "onConnected"

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

    .line 54
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 191
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    const-string v0, "android.service.assist.classification.IFieldClassificationService"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    packed-switch p1, :pswitch_data_48

    .line 98
    packed-switch p1, :pswitch_data_4e

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 118
    :pswitch_1c
    sget-object v2, Landroid/service/assist/classification/FieldClassificationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/assist/classification/FieldClassificationRequest;

    .line 120
    .local v2, "_arg0":Landroid/service/assist/classification/FieldClassificationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/assist/classification/IFieldClassificationCallback;

    move-result-object v3

    .line 121
    .local v3, "_arg1":Landroid/service/assist/classification/IFieldClassificationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2, v3}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    .line 123
    goto :goto_46

    .line 112
    .end local v2    # "_arg0":Landroid/service/assist/classification/FieldClassificationRequest;
    .end local v3    # "_arg1":Landroid/service/assist/classification/IFieldClassificationCallback;
    :pswitch_33
    invoke-virtual {p0}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onDisconnected()V

    .line 113
    goto :goto_46

    .line 103
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 105
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 106
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2, v3}, Landroid/service/assist/classification/IFieldClassificationService$Stub;->onConnected(ZZ)V

    .line 108
    nop

    .line 130
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
