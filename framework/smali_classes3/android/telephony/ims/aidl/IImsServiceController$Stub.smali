.class public abstract Landroid/telephony/ims/aidl/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsServiceController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addFeatureStatusCallback:I = 0x7

.field static final TRANSACTION_createEmergencyOnlyMmTelFeature:I = 0x3

.field static final TRANSACTION_createMmTelFeature:I = 0x2

.field static final TRANSACTION_createRcsFeature:I = 0x4

.field static final TRANSACTION_disableIms:I = 0xf

.field static final TRANSACTION_enableIms:I = 0xe

.field static final TRANSACTION_getConfig:I = 0xb

.field static final TRANSACTION_getImsServiceCapabilities:I = 0x6

.field static final TRANSACTION_getRegistration:I = 0xc

.field static final TRANSACTION_getSipTransport:I = 0xd

.field static final TRANSACTION_notifyImsServiceReadyForFeatureCreation:I = 0x9

.field static final TRANSACTION_querySupportedImsFeatures:I = 0x5

.field static final TRANSACTION_removeFeatureStatusCallback:I = 0x8

.field static final TRANSACTION_removeImsFeature:I = 0xa

.field static final TRANSACTION_resetIms:I = 0x10

.field static final TRANSACTION_setListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz v1, :cond_14

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsServiceController;

    return-object v1

    .line 97
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 106
    packed-switch p0, :pswitch_data_3e

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 170
    :pswitch_5
    const-string/jumbo v0, "resetIms"

    return-object v0

    .line 166
    :pswitch_9
    const-string v0, "disableIms"

    return-object v0

    .line 162
    :pswitch_c
    const-string v0, "enableIms"

    return-object v0

    .line 158
    :pswitch_f
    const-string/jumbo v0, "getSipTransport"

    return-object v0

    .line 154
    :pswitch_13
    const-string/jumbo v0, "getRegistration"

    return-object v0

    .line 150
    :pswitch_17
    const-string v0, "getConfig"

    return-object v0

    .line 146
    :pswitch_1a
    const-string/jumbo v0, "removeImsFeature"

    return-object v0

    .line 142
    :pswitch_1e
    const-string/jumbo v0, "notifyImsServiceReadyForFeatureCreation"

    return-object v0

    .line 138
    :pswitch_22
    const-string/jumbo v0, "removeFeatureStatusCallback"

    return-object v0

    .line 134
    :pswitch_26
    const-string v0, "addFeatureStatusCallback"

    return-object v0

    .line 130
    :pswitch_29
    const-string v0, "getImsServiceCapabilities"

    return-object v0

    .line 126
    :pswitch_2c
    const-string/jumbo v0, "querySupportedImsFeatures"

    return-object v0

    .line 122
    :pswitch_30
    const-string v0, "createRcsFeature"

    return-object v0

    .line 118
    :pswitch_33
    const-string v0, "createEmergencyOnlyMmTelFeature"

    return-object v0

    .line 114
    :pswitch_36
    const-string v0, "createMmTelFeature"

    return-object v0

    .line 110
    :pswitch_39
    const-string/jumbo v0, "setListener"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 673
    const/16 v0, 0xf

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 181
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 185
    const-string v0, "android.telephony.ims.aidl.IImsServiceController"

    .line 186
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    :cond_d
    packed-switch p1, :pswitch_data_148

    .line 197
    packed-switch p1, :pswitch_data_14e

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return v1

    .line 358
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 361
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->resetIms(II)V

    .line 363
    goto/16 :goto_147

    .line 348
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->disableIms(II)V

    .line 353
    goto/16 :goto_147

    .line 338
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->enableIms(II)V

    .line 343
    goto/16 :goto_147

    .line 328
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v3

    .line 331
    .local v3, "_result":Landroid/telephony/ims/aidl/ISipTransport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 333
    goto/16 :goto_147

    .line 316
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/aidl/ISipTransport;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 318
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    .line 321
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 323
    goto/16 :goto_147

    .line 304
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 307
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    .line 309
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 311
    goto/16 :goto_147

    .line 291
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 295
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 296
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->removeImsFeature(IIZ)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_147

    .line 284
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_a4
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->notifyImsServiceReadyForFeatureCreation()V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    goto/16 :goto_147

    .line 272
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 277
    .local v4, "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto/16 :goto_147

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 263
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 264
    .restart local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_147

    .line 251
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_e1
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->getImsServiceCapabilities()J

    move-result-wide v2

    .line 252
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 254
    goto :goto_147

    .line 244
    .end local v2    # "_result":J
    :pswitch_ec
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v2

    .line 245
    .local v2, "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    goto :goto_147

    .line 233
    .end local v2    # "_result":Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 236
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v4

    .line 238
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 240
    goto :goto_147

    .line 223
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v3

    .line 226
    .local v3, "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 228
    goto :goto_147

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 214
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v4

    .line 216
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 218
    goto :goto_147

    .line 202
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsMmTelFeature;
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsServiceControllerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    move-result-object v2

    .line 203
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    nop

    .line 370
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsServiceControllerListener;
    :goto_147
    return v1

    :pswitch_data_148
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_135
        :pswitch_11f
        :pswitch_10d
        :pswitch_f7
        :pswitch_ec
        :pswitch_e1
        :pswitch_c7
        :pswitch_ac
        :pswitch_a4
        :pswitch_8d
        :pswitch_76
        :pswitch_5f
        :pswitch_4c
        :pswitch_3c
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
