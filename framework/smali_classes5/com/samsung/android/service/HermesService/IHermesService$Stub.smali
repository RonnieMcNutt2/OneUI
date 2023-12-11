.class public abstract Lcom/samsung/android/service/HermesService/IHermesService$Stub;
.super Landroid/os/Binder;
.source "IHermesService.java"

# interfaces
.implements Lcom/samsung/android/service/HermesService/IHermesService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/HermesService/IHermesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/HermesService/IHermesService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_hermesGetSecureHWInfo:I = 0x4

.field static final TRANSACTION_hermesProvisioning:I = 0x2

.field static final TRANSACTION_hermesSelftest:I = 0x1

.field static final TRANSACTION_hermesTerminateService:I = 0x5

.field static final TRANSACTION_hermesUpdateCryptoFW:I = 0x6

.field static final TRANSACTION_hermesVerifyProvisioning:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.samsung.android.service.HermesService.IHermesService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "com.samsung.android.service.HermesService.IHermesService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/service/HermesService/IHermesService;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/service/HermesService/IHermesService;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Lcom/samsung/android/service/HermesService/IHermesService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_1e

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string/jumbo v0, "hermesUpdateCryptoFW"

    return-object v0

    .line 93
    :pswitch_9
    const-string/jumbo v0, "hermesTerminateService"

    return-object v0

    .line 89
    :pswitch_d
    const-string/jumbo v0, "hermesGetSecureHWInfo"

    return-object v0

    .line 85
    :pswitch_11
    const-string/jumbo v0, "hermesVerifyProvisioning"

    return-object v0

    .line 81
    :pswitch_15
    const-string/jumbo v0, "hermesProvisioning"

    return-object v0

    .line 77
    :pswitch_19
    const-string/jumbo v0, "hermesSelftest"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
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

    .line 68
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 302
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    const-string v0, "com.samsung.android.service.HermesService.IHermesService"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    packed-switch p1, :pswitch_data_60

    .line 124
    packed-switch p1, :pswitch_data_66

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 163
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesUpdateCryptoFW()[B

    move-result-object v2

    .line 164
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 166
    goto :goto_5e

    .line 156
    .end local v2    # "_result":[B
    :pswitch_27
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesTerminateService()I

    move-result v2

    .line 157
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    goto :goto_5e

    .line 149
    .end local v2    # "_result":I
    :pswitch_32
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesGetSecureHWInfo()[B

    move-result-object v2

    .line 150
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 152
    goto :goto_5e

    .line 142
    .end local v2    # "_result":[B
    :pswitch_3d
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesVerifyProvisioning()I

    move-result v2

    .line 143
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_5e

    .line 135
    .end local v2    # "_result":I
    :pswitch_48
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesProvisioning()I

    move-result v2

    .line 136
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_5e

    .line 128
    .end local v2    # "_result":I
    :pswitch_53
    invoke-virtual {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->hermesSelftest()[B

    move-result-object v2

    .line 129
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 131
    nop

    .line 173
    .end local v2    # "_result":[B
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
