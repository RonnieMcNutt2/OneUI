.class public abstract Lcom/android/internal/telephony/ISemTelephony$Stub;
.super Landroid/os/Binder;
.source "ISemTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ISemTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISemTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_NSRI_requestProc:I = 0x2b

.field static final TRANSACTION_changeIccSimPersoPassword:I = 0x1a

.field static final TRANSACTION_changeIccSimPersoPasswordForSubId:I = 0x1b

.field static final TRANSACTION_checkCallControl:I = 0x21

.field static final TRANSACTION_checkNSRIUSIMstate_int:I = 0x2a

.field static final TRANSACTION_dialForSubscriber:I = 0x3

.field static final TRANSACTION_getActivationDay:I = 0xc

.field static final TRANSACTION_getAllCellInfoBySubId:I = 0x2

.field static final TRANSACTION_getAtr:I = 0x20

.field static final TRANSACTION_getCdmaMinForOtasp:I = 0x1f

.field static final TRANSACTION_getCellLocationBySubId:I = 0x1

.field static final TRANSACTION_getCurrentUATI:I = 0x2e

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x2c

.field static final TRANSACTION_getDisable2g:I = 0x8

.field static final TRANSACTION_getEuimid:I = 0x1e

.field static final TRANSACTION_getFDNavailable:I = 0x22

.field static final TRANSACTION_getIccUsimPersoEnabled:I = 0x18

.field static final TRANSACTION_getIccUsimPersoEnabledForSubId:I = 0x19

.field static final TRANSACTION_getIpAddressFromLinkProp:I = 0x30

.field static final TRANSACTION_getMobileQualityInformation:I = 0x2f

.field static final TRANSACTION_getNetworkStatusDisplayOption:I = 0xd

.field static final TRANSACTION_getNrMode:I = 0x32

.field static final TRANSACTION_getSdnAvailable:I = 0x10

.field static final TRANSACTION_getSecondaryImei:I = 0x25

.field static final TRANSACTION_getServiceStateForPhoneId:I = 0xf

.field static final TRANSACTION_getSimPinRetryForSubscriber:I = 0x16

.field static final TRANSACTION_getSimPukRetryForSubscriber:I = 0x17

.field static final TRANSACTION_getSupportedNrca:I = 0x38

.field static final TRANSACTION_getUaUap:I = 0x26

.field static final TRANSACTION_getVendorConfigState:I = 0x35

.field static final TRANSACTION_getVoNRMode:I = 0x34

.field static final TRANSACTION_invokeOemRilRequestRawForSubscriber:I = 0x23

.field static final TRANSACTION_isEmergencyNumberBySubId:I = 0x4

.field static final TRANSACTION_isMmiForSubscriber:I = 0xe

.field static final TRANSACTION_isSimFDNEnabledForSubscriber:I = 0x15

.field static final TRANSACTION_isSupportLteCapaOptionC:I = 0x39

.field static final TRANSACTION_isVideoCall:I = 0x7

.field static final TRANSACTION_reloadTestEmergencyNumber:I = 0x5

.field static final TRANSACTION_requestModemActivityInfo:I = 0x37

.field static final TRANSACTION_sendRequestToRIL:I = 0x11

.field static final TRANSACTION_sendVolteState:I = 0x36

.field static final TRANSACTION_setAllowDataDuringCall:I = 0x6

.field static final TRANSACTION_setDisable2g:I = 0x9

.field static final TRANSACTION_setEPSLOCI:I = 0x14

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x2d

.field static final TRANSACTION_setIccSimPersoEnabled:I = 0x1c

.field static final TRANSACTION_setIccSimPersoEnabledForSubId:I = 0x1d

.field static final TRANSACTION_setNrMode:I = 0x31

.field static final TRANSACTION_setSimOnOffForSlot:I = 0x24

.field static final TRANSACTION_setTransmitPowerExt:I = 0xb

.field static final TRANSACTION_setTransmitPowerWithFlag:I = 0xa

.field static final TRANSACTION_setVoNRMode:I = 0x33

.field static final TRANSACTION_sms_NSRI_decryptsms:I = 0x28

.field static final TRANSACTION_sms_NSRI_decryptsmsintxside:I = 0x29

.field static final TRANSACTION_sms_NSRI_encryptsms:I = 0x27

.field static final TRANSACTION_supplyPerso:I = 0x12

.field static final TRANSACTION_supplyPersoForSubId:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 353
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 354
    const-string v0, "com.android.internal.telephony.ISemTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 362
    if-nez p0, :cond_4

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_4
    const-string v0, "com.android.internal.telephony.ISemTelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 366
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISemTelephony;

    if-eqz v1, :cond_14

    .line 367
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISemTelephony;

    return-object v1

    .line 369
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 378
    packed-switch p0, :pswitch_data_e0

    .line 610
    const/4 v0, 0x0

    return-object v0

    .line 606
    :pswitch_5
    const-string/jumbo v0, "isSupportLteCapaOptionC"

    return-object v0

    .line 602
    :pswitch_9
    const-string/jumbo v0, "getSupportedNrca"

    return-object v0

    .line 598
    :pswitch_d
    const-string/jumbo v0, "requestModemActivityInfo"

    return-object v0

    .line 594
    :pswitch_11
    const-string/jumbo v0, "sendVolteState"

    return-object v0

    .line 590
    :pswitch_15
    const-string/jumbo v0, "getVendorConfigState"

    return-object v0

    .line 586
    :pswitch_19
    const-string/jumbo v0, "getVoNRMode"

    return-object v0

    .line 582
    :pswitch_1d
    const-string/jumbo v0, "setVoNRMode"

    return-object v0

    .line 578
    :pswitch_21
    const-string/jumbo v0, "getNrMode"

    return-object v0

    .line 574
    :pswitch_25
    const-string/jumbo v0, "setNrMode"

    return-object v0

    .line 570
    :pswitch_29
    const-string/jumbo v0, "getIpAddressFromLinkProp"

    return-object v0

    .line 566
    :pswitch_2d
    const-string/jumbo v0, "getMobileQualityInformation"

    return-object v0

    .line 562
    :pswitch_31
    const-string/jumbo v0, "getCurrentUATI"

    return-object v0

    .line 558
    :pswitch_35
    const-string/jumbo v0, "setGbaBootstrappingParams"

    return-object v0

    .line 554
    :pswitch_39
    const-string/jumbo v0, "getDataRoamingEnabled"

    return-object v0

    .line 550
    :pswitch_3d
    const-string v0, "NSRI_requestProc"

    return-object v0

    .line 546
    :pswitch_40
    const-string v0, "checkNSRIUSIMstate_int"

    return-object v0

    .line 542
    :pswitch_43
    const-string/jumbo v0, "sms_NSRI_decryptsmsintxside"

    return-object v0

    .line 538
    :pswitch_47
    const-string/jumbo v0, "sms_NSRI_decryptsms"

    return-object v0

    .line 534
    :pswitch_4b
    const-string/jumbo v0, "sms_NSRI_encryptsms"

    return-object v0

    .line 530
    :pswitch_4f
    const-string/jumbo v0, "getUaUap"

    return-object v0

    .line 526
    :pswitch_53
    const-string/jumbo v0, "getSecondaryImei"

    return-object v0

    .line 522
    :pswitch_57
    const-string/jumbo v0, "setSimOnOffForSlot"

    return-object v0

    .line 518
    :pswitch_5b
    const-string/jumbo v0, "invokeOemRilRequestRawForSubscriber"

    return-object v0

    .line 514
    :pswitch_5f
    const-string/jumbo v0, "getFDNavailable"

    return-object v0

    .line 510
    :pswitch_63
    const-string v0, "checkCallControl"

    return-object v0

    .line 506
    :pswitch_66
    const-string v0, "getAtr"

    return-object v0

    .line 502
    :pswitch_69
    const-string/jumbo v0, "getCdmaMinForOtasp"

    return-object v0

    .line 498
    :pswitch_6d
    const-string/jumbo v0, "getEuimid"

    return-object v0

    .line 494
    :pswitch_71
    const-string/jumbo v0, "setIccSimPersoEnabledForSubId"

    return-object v0

    .line 490
    :pswitch_75
    const-string/jumbo v0, "setIccSimPersoEnabled"

    return-object v0

    .line 486
    :pswitch_79
    const-string v0, "changeIccSimPersoPasswordForSubId"

    return-object v0

    .line 482
    :pswitch_7c
    const-string v0, "changeIccSimPersoPassword"

    return-object v0

    .line 478
    :pswitch_7f
    const-string/jumbo v0, "getIccUsimPersoEnabledForSubId"

    return-object v0

    .line 474
    :pswitch_83
    const-string/jumbo v0, "getIccUsimPersoEnabled"

    return-object v0

    .line 470
    :pswitch_87
    const-string/jumbo v0, "getSimPukRetryForSubscriber"

    return-object v0

    .line 466
    :pswitch_8b
    const-string/jumbo v0, "getSimPinRetryForSubscriber"

    return-object v0

    .line 462
    :pswitch_8f
    const-string/jumbo v0, "isSimFDNEnabledForSubscriber"

    return-object v0

    .line 458
    :pswitch_93
    const-string/jumbo v0, "setEPSLOCI"

    return-object v0

    .line 454
    :pswitch_97
    const-string/jumbo v0, "supplyPersoForSubId"

    return-object v0

    .line 450
    :pswitch_9b
    const-string/jumbo v0, "supplyPerso"

    return-object v0

    .line 446
    :pswitch_9f
    const-string/jumbo v0, "sendRequestToRIL"

    return-object v0

    .line 442
    :pswitch_a3
    const-string/jumbo v0, "getSdnAvailable"

    return-object v0

    .line 438
    :pswitch_a7
    const-string/jumbo v0, "getServiceStateForPhoneId"

    return-object v0

    .line 434
    :pswitch_ab
    const-string/jumbo v0, "isMmiForSubscriber"

    return-object v0

    .line 430
    :pswitch_af
    const-string/jumbo v0, "getNetworkStatusDisplayOption"

    return-object v0

    .line 426
    :pswitch_b3
    const-string v0, "getActivationDay"

    return-object v0

    .line 422
    :pswitch_b6
    const-string/jumbo v0, "setTransmitPowerExt"

    return-object v0

    .line 418
    :pswitch_ba
    const-string/jumbo v0, "setTransmitPowerWithFlag"

    return-object v0

    .line 414
    :pswitch_be
    const-string/jumbo v0, "setDisable2g"

    return-object v0

    .line 410
    :pswitch_c2
    const-string/jumbo v0, "getDisable2g"

    return-object v0

    .line 406
    :pswitch_c6
    const-string/jumbo v0, "isVideoCall"

    return-object v0

    .line 402
    :pswitch_ca
    const-string/jumbo v0, "setAllowDataDuringCall"

    return-object v0

    .line 398
    :pswitch_ce
    const-string/jumbo v0, "reloadTestEmergencyNumber"

    return-object v0

    .line 394
    :pswitch_d2
    const-string/jumbo v0, "isEmergencyNumberBySubId"

    return-object v0

    .line 390
    :pswitch_d6
    const-string v0, "dialForSubscriber"

    return-object v0

    .line 386
    :pswitch_d9
    const-string v0, "getAllCellInfoBySubId"

    return-object v0

    .line 382
    :pswitch_dc
    const-string/jumbo v0, "getCellLocationBySubId"

    return-object v0

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 373
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 2499
    const/16 v0, 0x38

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 617
    invoke-static {p1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    const-string v0, "com.android.internal.telephony.ISemTelephony"

    .line 622
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 623
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    :cond_d
    packed-switch p1, :pswitch_data_4bc

    .line 633
    packed-switch p1, :pswitch_data_4c2

    .line 1271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 629
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    return v1

    .line 1262
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1263
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isSupportLteCapaOptionC(I)Z

    move-result v3

    .line 1265
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1267
    goto/16 :goto_4bb

    .line 1252
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1253
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1254
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSupportedNrca(I)Z

    move-result v3

    .line 1255
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1257
    goto/16 :goto_4bb

    .line 1242
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_42
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 1244
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1245
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;Ljava/lang/String;)V

    .line 1247
    goto/16 :goto_4bb

    .line 1231
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1233
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1234
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sendVolteState(IZ)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    goto/16 :goto_4bb

    .line 1221
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getVendorConfigState(I)Landroid/telephony/VendorConfigurationState;

    move-result-object v3

    .line 1224
    .local v3, "_result":Landroid/telephony/VendorConfigurationState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1226
    goto/16 :goto_4bb

    .line 1211
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/VendorConfigurationState;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1212
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getVoNRMode(I)I

    move-result v3

    .line 1214
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    goto/16 :goto_4bb

    .line 1199
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1202
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1203
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setVoNRMode(II)Z

    move-result v4

    .line 1204
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1206
    goto/16 :goto_4bb

    .line 1189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1190
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1191
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNrMode(I)I

    move-result v3

    .line 1192
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    goto/16 :goto_4bb

    .line 1173
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1175
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1177
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1179
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1180
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setNrMode(IIZLjava/lang/String;)Z

    move-result v6

    .line 1182
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1184
    goto/16 :goto_4bb

    .line 1163
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1164
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1168
    goto/16 :goto_4bb

    .line 1149
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1151
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1155
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getMobileQualityInformation(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1156
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1158
    goto/16 :goto_4bb

    .line 1141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCurrentUATI()[B

    move-result-object v2

    .line 1142
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1144
    goto/16 :goto_4bb

    .line 1127
    .end local v2    # "_result":[B
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1129
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1131
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1133
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1134
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    goto/16 :goto_4bb

    .line 1119
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_12d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDataRoamingEnabled()Z

    move-result v2

    .line 1120
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1122
    goto/16 :goto_4bb

    .line 1108
    .end local v2    # "_result":Z
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1110
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1111
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1112
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->NSRI_requestProc(I[B)[B

    move-result-object v4

    .line 1113
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1115
    goto/16 :goto_4bb

    .line 1100
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_150
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->checkNSRIUSIMstate_int()I

    move-result v2

    .line 1101
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    goto/16 :goto_4bb

    .line 1087
    .end local v2    # "_result":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1089
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1092
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object v5

    .line 1094
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1096
    goto/16 :goto_4bb

    .line 1075
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":[B
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1077
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1078
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1079
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_decryptsms(I[B)[B

    move-result-object v4

    .line 1080
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1082
    goto/16 :goto_4bb

    .line 1061
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1063
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1065
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1066
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object v5

    .line 1068
    .restart local v5    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1070
    goto/16 :goto_4bb

    .line 1051
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":[B
    :pswitch_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getUaUap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1054
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1056
    goto/16 :goto_4bb

    .line 1039
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1042
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSecondaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1044
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1046
    goto/16 :goto_4bb

    .line 1027
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_1d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1029
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1030
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setSimOnOffForSlot(II)Z

    move-result v4

    .line 1032
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1034
    goto/16 :goto_4bb

    .line 1007
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1009
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1011
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1012
    .local v4, "_arg2_length":I
    if-gez v4, :cond_1fa

    .line 1013
    const/4 v5, 0x0

    .local v5, "_arg2":[B
    goto :goto_1fc

    .line 1015
    .end local v5    # "_arg2":[B
    :cond_1fa
    new-array v5, v4, [B

    .line 1017
    .restart local v5    # "_arg2":[B
    :goto_1fc
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v6

    .line 1019
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1022
    goto/16 :goto_4bb

    .line 997
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2_length":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_result":I
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 998
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getFDNavailable(I)Z

    move-result v3

    .line 1000
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1002
    goto/16 :goto_4bb

    .line 985
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 987
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 988
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->checkCallControl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 990
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 992
    goto/16 :goto_4bb

    .line 975
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 976
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getAtr(I)[B

    move-result-object v3

    .line 978
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 980
    goto/16 :goto_4bb

    .line 965
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_24b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 966
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCdmaMinForOtasp(I)Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 970
    goto/16 :goto_4bb

    .line 957
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_25e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getEuimid()Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    goto/16 :goto_4bb

    .line 944
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_26a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 946
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 948
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setIccSimPersoEnabledForSubId(IZLjava/lang/String;)Z

    move-result v5

    .line 951
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 953
    goto/16 :goto_4bb

    .line 932
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_285
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 934
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 935
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setIccSimPersoEnabled(ZLjava/lang/String;)Z

    move-result v4

    .line 937
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 939
    goto/16 :goto_4bb

    .line 918
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_29c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 920
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 922
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 923
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->changeIccSimPersoPasswordForSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 925
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 927
    goto/16 :goto_4bb

    .line 906
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_2b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 909
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 911
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 913
    goto/16 :goto_4bb

    .line 896
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 897
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIccUsimPersoEnabledForSubId(I)Z

    move-result v3

    .line 899
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 901
    goto/16 :goto_4bb

    .line 888
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2e1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIccUsimPersoEnabled()Z

    move-result v2

    .line 889
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 891
    goto/16 :goto_4bb

    .line 879
    .end local v2    # "_result":Z
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 880
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSimPukRetryForSubscriber(I)I

    move-result v3

    .line 882
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    goto/16 :goto_4bb

    .line 869
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 870
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSimPinRetryForSubscriber(I)I

    move-result v3

    .line 872
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    goto/16 :goto_4bb

    .line 859
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 860
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isSimFDNEnabledForSubscriber(I)Z

    move-result v3

    .line 862
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 864
    goto/16 :goto_4bb

    .line 850
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_326
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 851
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setEPSLOCI([B)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_4bb

    .line 838
    .end local v2    # "_arg0":[B
    :pswitch_335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 840
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->supplyPersoForSubId(ILjava/lang/String;)Z

    move-result v4

    .line 843
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 845
    goto/16 :goto_4bb

    .line 828
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_34c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 831
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 833
    goto/16 :goto_4bb

    .line 811
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_35f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 813
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 815
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 817
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 818
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sendRequestToRIL([B[BII)I

    move-result v6

    .line 820
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 823
    goto/16 :goto_4bb

    .line 803
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_381
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSdnAvailable()Z

    move-result v2

    .line 804
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 806
    goto/16 :goto_4bb

    .line 790
    .end local v2    # "_result":Z
    :pswitch_38d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 792
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 795
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getServiceStateForPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 797
    .local v5, "_result":Landroid/telephony/ServiceState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 799
    goto/16 :goto_4bb

    .line 778
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/telephony/ServiceState;
    :pswitch_3a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 780
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 781
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isMmiForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 783
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 785
    goto/16 :goto_4bb

    .line 766
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_3bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 769
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNetworkStatusDisplayOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 771
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    goto/16 :goto_4bb

    .line 754
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 756
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 757
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getActivationDay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    goto/16 :goto_4bb

    .line 742
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_3ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 744
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 745
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setTransmitPowerExt(JZ)Z

    move-result v5

    .line 747
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 749
    goto/16 :goto_4bb

    .line 730
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":Z
    :pswitch_404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 733
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setTransmitPowerWithFlag(IZ)Z

    move-result v4

    .line 735
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 737
    goto/16 :goto_4bb

    .line 720
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_41b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 721
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setDisable2g(I)Z

    move-result v3

    .line 723
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    goto/16 :goto_4bb

    .line 712
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_42e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDisable2g()I

    move-result v2

    .line 713
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    goto/16 :goto_4bb

    .line 705
    .end local v2    # "_result":I
    :pswitch_43a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isVideoCall()Z

    move-result v2

    .line 706
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 708
    goto/16 :goto_4bb

    .line 697
    .end local v2    # "_result":Z
    :pswitch_446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 698
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setAllowDataDuringCall(I)V

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    goto :goto_4bb

    .line 690
    .end local v2    # "_arg0":I
    :pswitch_454
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->reloadTestEmergencyNumber()V

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto :goto_4bb

    .line 677
    :pswitch_45b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 682
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isEmergencyNumberBySubId(ILjava/lang/String;Z)Z

    move-result v5

    .line 684
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 686
    goto :goto_4bb

    .line 666
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 669
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->dialForSubscriber(ILjava/lang/String;)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto :goto_4bb

    .line 652
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 656
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getAllCellInfoBySubId(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 659
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 661
    goto :goto_4bb

    .line 638
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_4a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 642
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 643
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 645
    .local v5, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 647
    nop

    .line 1274
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/telephony/CellIdentity;
    :goto_4bb
    return v1

    :pswitch_data_4bc
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4c2
    .packed-switch 0x1
        :pswitch_4a1
        :pswitch_487
        :pswitch_475
        :pswitch_45b
        :pswitch_454
        :pswitch_446
        :pswitch_43a
        :pswitch_42e
        :pswitch_41b
        :pswitch_404
        :pswitch_3ed
        :pswitch_3d6
        :pswitch_3bf
        :pswitch_3a8
        :pswitch_38d
        :pswitch_381
        :pswitch_35f
        :pswitch_34c
        :pswitch_335
        :pswitch_326
        :pswitch_313
        :pswitch_300
        :pswitch_2ed
        :pswitch_2e1
        :pswitch_2ce
        :pswitch_2b7
        :pswitch_29c
        :pswitch_285
        :pswitch_26a
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_221
        :pswitch_20e
        :pswitch_1ea
        :pswitch_1d3
        :pswitch_1bc
        :pswitch_1a9
        :pswitch_18e
        :pswitch_177
        :pswitch_15c
        :pswitch_150
        :pswitch_139
        :pswitch_12d
        :pswitch_112
        :pswitch_106
        :pswitch_eb
        :pswitch_d8
        :pswitch_b9
        :pswitch_a6
        :pswitch_8f
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
