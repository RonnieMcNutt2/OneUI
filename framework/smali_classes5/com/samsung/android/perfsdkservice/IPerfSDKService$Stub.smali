.class public abstract Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;
.super Landroid/os/Binder;
.source "IPerfSDKService.java"

# interfaces
.implements Lcom/samsung/android/perfsdkservice/IPerfSDKService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/perfsdkservice/IPerfSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_connectionRequest:I = 0xa

.field static final TRANSACTION_getAllowedPkgName:I = 0x2

.field static final TRANSACTION_getChangedForegroundPackagename:I = 0x7

.field static final TRANSACTION_getForegroundPackagename:I = 0x6

.field static final TRANSACTION_getHighBoostingLevel:I = 0x3

.field static final TRANSACTION_getLowBoostingLevel:I = 0x4

.field static final TRANSACTION_getThermalTable:I = 0x5

.field static final TRANSACTION_initPerfSDK:I = 0x1

.field static final TRANSACTION_removeSessionKey:I = 0x9

.field static final TRANSACTION_setSessionKey:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.samsung.android.perfsdkservice.IPerfSDKService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/perfsdkservice/IPerfSDKService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "com.samsung.android.perfsdkservice.IPerfSDKService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/perfsdkservice/IPerfSDKService;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_2c

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_5
    const-string v0, "connectionRequest"

    return-object v0

    .line 123
    :pswitch_8
    const-string/jumbo v0, "removeSessionKey"

    return-object v0

    .line 119
    :pswitch_c
    const-string/jumbo v0, "setSessionKey"

    return-object v0

    .line 115
    :pswitch_10
    const-string/jumbo v0, "getChangedForegroundPackagename"

    return-object v0

    .line 111
    :pswitch_14
    const-string/jumbo v0, "getForegroundPackagename"

    return-object v0

    .line 107
    :pswitch_18
    const-string/jumbo v0, "getThermalTable"

    return-object v0

    .line 103
    :pswitch_1c
    const-string/jumbo v0, "getLowBoostingLevel"

    return-object v0

    .line 99
    :pswitch_20
    const-string/jumbo v0, "getHighBoostingLevel"

    return-object v0

    .line 95
    :pswitch_24
    const-string v0, "getAllowedPkgName"

    return-object v0

    .line 91
    :pswitch_27
    const-string/jumbo v0, "initPerfSDK"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 82
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 445
    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 138
    invoke-static {p1}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 142
    const-string v0, "com.samsung.android.perfsdkservice.IPerfSDKService"

    .line 143
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_d
    packed-switch p1, :pswitch_data_a2

    .line 154
    packed-switch p1, :pswitch_data_a8

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 230
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->connectionRequest()I

    move-result v2

    .line 231
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    goto/16 :goto_a0

    .line 221
    .end local v2    # "_result":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->removeSessionKey(Ljava/lang/String;)I

    move-result v3

    .line 224
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    goto :goto_a0

    .line 211
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->setSessionKey(Ljava/lang/String;)I

    move-result v3

    .line 214
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    goto :goto_a0

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_4c
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getChangedForegroundPackagename()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    goto :goto_a0

    .line 196
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_57
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getForegroundPackagename()Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    goto :goto_a0

    .line 189
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_62
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getThermalTable()[I

    move-result-object v2

    .line 190
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 192
    goto :goto_a0

    .line 182
    .end local v2    # "_result":[I
    :pswitch_6d
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getLowBoostingLevel()[I

    move-result-object v2

    .line 183
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 185
    goto :goto_a0

    .line 175
    .end local v2    # "_result":[I
    :pswitch_78
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getHighBoostingLevel()[I

    move-result-object v2

    .line 176
    .restart local v2    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 178
    goto :goto_a0

    .line 168
    .end local v2    # "_result":[I
    :pswitch_83
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->getAllowedPkgName()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    goto :goto_a0

    .line 159
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;->initPerfSDK(Ljava/lang/String;)I

    move-result v3

    .line 162
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    nop

    .line 240
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :goto_a0
    return v1

    nop

    :pswitch_data_a2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_83
        :pswitch_78
        :pswitch_6d
        :pswitch_62
        :pswitch_57
        :pswitch_4c
        :pswitch_3a
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
