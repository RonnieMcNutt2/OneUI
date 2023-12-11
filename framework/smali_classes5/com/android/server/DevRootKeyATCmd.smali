.class public Lcom/android/server/DevRootKeyATCmd;
.super Ljava/lang/Object;
.source "DevRootKeyATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field protected static final AT_COMMAND_DEVROOTK:Ljava/lang/String; = "DEVROOTK"

.field protected static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field protected static final MODE_MNFR_ALLOW_ATCMD:I = 0x1c

.field protected static final TAG:Ljava/lang/String; = "DEVROOT#ATCmd(1.0.0)"

.field protected static final VERSION:Ljava/lang/String; = "1.0.0"

.field static getKeyWaitTime:I

.field protected static final isSupportnewSAKatcmd:Z


# instance fields
.field protected isJDMProductNotInHouse:Z

.field protected mContext:Landroid/content/Context;

.field private mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field private mTlvKeyBlob:Ljava/lang/String;

.field private mTlvKeyBlobCounter:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 112
    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x21

    if-le v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sput-boolean v0, Lcom/android/server/DevRootKeyATCmd;->isSupportnewSAKatcmd:Z

    .line 115
    const-string v0, "_nativeJni.dk.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 641
    const/16 v0, 0x32

    sput v0, Lcom/android/server/DevRootKeyATCmd;->getKeyWaitTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevRootKeyATCmd;->isJDMProductNotInHouse:Z

    .line 120
    iput-object p1, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 122
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 128
    new-instance v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "deviceIDProvisionManager":Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->provision()V

    .line 132
    :cond_28
    return-void
.end method

.method private native generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private native installDeviceBoundCertificate(I[B)I
.end method

.method private native installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native installDeviceUnboundKey(I[B)I
.end method

.method private native isExistDRK(I)I
.end method

.method private isPropertyEmptyOrUnknown(Ljava/lang/String;)Z
    .registers 3
    .param p1, "property"    # Ljava/lang/String;

    .line 952
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method private native isSupportedDrkV2()Z
.end method

.method private native readDrkUID(I)Ljava/lang/String;
.end method

.method private native readKeyInfo(I)[B
.end method

.method private native validateDeviceKey(I)I
.end method


# virtual methods
.method protected appendKeyBlob(ILjava/lang/String;)Z
    .registers 6
    .param p1, "sequenceNo"    # I
    .param p2, "keyBlob"    # Ljava/lang/String;

    .line 603
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 605
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 606
    iput-object p2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    goto :goto_24

    .line 611
    :cond_8
    iget v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_25

    .line 613
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 622
    :goto_24
    return v0

    .line 618
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method protected checkKeyValidity(I)I
    .registers 15
    .param p1, "keyType"    # I

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "ret":I
    const/4 v1, 0x1

    .line 646
    .local v1, "isSupportSKeymaster":Z
    const/4 v2, 0x1

    .line 647
    .local v2, "isSupportStrongboxKeymaster":Z
    nop

    .line 648
    const-string/jumbo v3, "ro.product.first_api_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x21

    if-lt v3, v6, :cond_17

    move v3, v5

    goto :goto_18

    :cond_17
    move v3, v4

    .line 649
    .local v3, "isSystemFirstApiLevelMoreThanT":Z
    :goto_18
    nop

    .line 650
    const-string/jumbo v7, "ro.vendor.build.version.sdk"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v8, v6, :cond_28

    move v6, v5

    goto :goto_29

    :cond_28
    move v6, v4

    .line 651
    .local v6, "isVendorFirstApiLevelMoreThanT":Z
    :goto_29
    nop

    .line 652
    const-string/jumbo v8, "ro.build.flavor"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "a14m"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 653
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "a14xm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 654
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "a24"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 655
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a34x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_60

    goto :goto_62

    :cond_60
    move v8, v4

    goto :goto_63

    :cond_62
    :goto_62
    move v8, v5

    .line 657
    .local v8, "isExceptionHandlingGrfSModules":Z
    :goto_63
    if-eqz v3, :cond_6a

    if-nez v6, :cond_69

    if-eqz v8, :cond_6a

    :cond_69
    move v4, v5

    .line 660
    .local v4, "isSupportIDAttestation":Z
    :cond_6a
    const-string/jumbo v9, "validateDeviceKey failed"

    const/4 v10, 0x4

    const-string v11, "DEVROOT#ATCmd(1.0.0)"

    if-nez v2, :cond_90

    .line 661
    if-ne v10, p1, :cond_90

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v12, 0x22

    if-ne v7, v12, :cond_90

    .line 662
    invoke-direct {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v0

    .line 663
    if-eqz v0, :cond_8a

    .line 664
    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v0

    .line 667
    :cond_8a
    const-string v5, "U os pass"

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v0

    .line 672
    :cond_90
    if-eqz v1, :cond_ab

    .line 673
    if-eqz v4, :cond_a1

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->installDeviceID(I)I

    move-result v0

    .line 675
    if-eqz v0, :cond_a1

    .line 676
    const-string/jumbo v5, "installDeviceID failed"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return v0

    .line 681
    :cond_a1
    invoke-direct {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v0

    .line 682
    if-eqz v0, :cond_ab

    .line 683
    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v0

    .line 688
    :cond_ab
    if-eq p1, v5, :cond_b1

    if-ne p1, v10, :cond_be

    if-eqz v2, :cond_be

    .line 689
    :cond_b1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKeyFromKeystore(IZ)I

    move-result v0

    .line 690
    if-eqz v0, :cond_be

    .line 691
    const-string/jumbo v5, "validateDeviceKeyFromKeystore failed"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return v0

    .line 696
    :cond_be
    return v0
.end method

.method public generateCertWithTlv(Z)Ljava/lang/String;
    .registers 9
    .param p1, "tlv"    # Z

    .line 472
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_4e

    .line 475
    .local v1, "tlvTestExponent":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_54

    .line 478
    .local v0, "tlvTestKeyUsage":[B
    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_5a

    .line 485
    .local v2, "tlvTestSubjectAlterName":[B
    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_78

    .line 487
    .local v3, "tlbTestHashAlgo":[B
    const/4 v4, 0x1

    if-eqz p1, :cond_3a

    .line 488
    new-instance v5, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v5}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 489
    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 490
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 491
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/16 v6, 0x1d

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 492
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    goto :goto_3d

    .line 494
    :cond_3a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 497
    :goto_3d
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v6, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    .line 500
    .local v4, "serviceCert":[B
    if-eqz v4, :cond_4a

    .line 501
    const-string v5, "OK"

    return-object v5

    .line 503
    :cond_4a
    const-string v5, "NG_FAIL"

    return-object v5

    nop

    :array_4e
    .array-data 1
        0x2t
        0x2t
        0x1et
        -0x11t
    .end array-data

    :array_54
    .array-data 1
        0x3t
        0x2t
        0x2t
        -0x4t
    .end array-data

    :array_5a
    .array-data 1
        0x30t
        0x30t
        -0x7at
        0x2et
        0x54t
        0x68t
        0x69t
        0x73t
        0x20t
        0x69t
        0x73t
        0x20t
        0x73t
        0x75t
        0x62t
        0x6at
        0x65t
        0x63t
        0x74t
        0x20t
        0x61t
        0x6ct
        0x74t
        0x65t
        0x72t
        0x6et
        0x61t
        0x74t
        0x69t
        0x76t
        0x65t
        0x20t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x20t
        0x66t
        0x69t
        0x65t
        0x6ct
        0x64t
        0x20t
        0x74t
        0x65t
        0x73t
        0x74t
        0x2et
        0x2dt
        0x5ft
    .end array-data

    nop

    :array_78
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
    .end array-data
.end method

.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 136
    const-string v0, "DEVROOTK"

    return-object v0
.end method

.method protected getKeyBlobIndex()I
    .registers 2

    .line 632
    iget v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    return v0
.end method

.method protected getTotalKeyBlob()[B
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected initTlvKeyBlob()V
    .registers 2

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 638
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 639
    return-void
.end method

.method protected installDeviceID(I)I
    .registers 19
    .param p1, "keyType"    # I

    .line 700
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 705
    .local v12, "telephonyService":Landroid/telephony/TelephonyManager;
    sget-object v0, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/server/DevRootKeyATCmd;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 706
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_1b

    :cond_19
    sget-object v0, Landroid/os/Build;->BRAND_FOR_ATTESTATION:Ljava/lang/String;

    :goto_1b
    move-object v2, v0

    .line 707
    .local v2, "brand":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/server/DevRootKeyATCmd;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 708
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_29

    :cond_27
    sget-object v0, Landroid/os/Build;->DEVICE_FOR_ATTESTATION:Ljava/lang/String;

    :goto_29
    move-object v3, v0

    .line 709
    .local v3, "device":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/server/DevRootKeyATCmd;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 710
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_37

    :cond_35
    sget-object v0, Landroid/os/Build;->PRODUCT_FOR_ATTESTATION:Ljava/lang/String;

    :goto_37
    move-object v4, v0

    .line 711
    .local v4, "produt":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/server/DevRootKeyATCmd;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 712
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_45

    :cond_43
    sget-object v0, Landroid/os/Build;->MANUFACTURER_FOR_ATTESTATION:Ljava/lang/String;

    :goto_45
    move-object v9, v0

    .line 713
    .local v9, "manufacturer":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/server/DevRootKeyATCmd;->isPropertyEmptyOrUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 714
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_53

    :cond_51
    sget-object v0, Landroid/os/Build;->MODEL_FOR_ATTESTATION:Ljava/lang/String;

    :goto_53
    move-object v10, v0

    .line 716
    .local v10, "model":Ljava/lang/String;
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v13

    .line 717
    .local v13, "serial":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v14

    .line 718
    .local v14, "imei1":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v15

    .line 719
    .local v15, "imei2":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v16

    .line 721
    .local v16, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v10}, Lcom/android/server/DevRootKeyATCmd;->installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z
    .registers 8
    .param p1, "rootCert"    # Ljava/security/cert/Certificate;
    .param p2, "keyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 725
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 726
    .local v0, "X509RootCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 727
    .local v1, "pubkey":Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 729
    .local v2, "pubkeyEncoded":[B
    const/4 v3, 0x1

    if-eq p2, v3, :cond_11

    const/4 v4, 0x4

    if-ne p2, v4, :cond_22

    .line 730
    :cond_11
    sget-object v4, Lcom/android/server/SecureKeyConst;->GoogleRootPubKey:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_24

    sget-object v4, Lcom/android/server/SecureKeyConst;->GoogleDevRootPubKey:[B

    .line 731
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_24

    .line 736
    :cond_22
    const/4 v3, 0x0

    return v3

    .line 732
    :cond_24
    :goto_24
    return v3
.end method

.method protected isValidEM()Z
    .registers 6

    .line 925
    sget-boolean v0, Lcom/android/server/SecureKeyConst;->isJDM:Z

    const/4 v1, 0x1

    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    if-nez v0, :cond_d

    .line 926
    const-string v0, "It is not a JDM project"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return v1

    .line 930
    :cond_d
    sget-object v0, Lcom/android/server/SecureKeyConst;->isDevDevice:Ljava/lang/String;

    const-string v3, "0x1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 931
    const-string v0, "It is not A User Product Device"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return v1

    .line 935
    :cond_1d
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v3, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 937
    .local v0, "EMMgr":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_35

    .line 938
    const-string v1, "Failed to connect to em service"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return v4

    .line 942
    :cond_35
    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v3

    if-ne v3, v1, :cond_43

    .line 943
    const-string v3, "EM Status : Permitted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return v1

    .line 947
    :cond_43
    const-string v1, "EM Status : Not Permitted"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return v4
.end method

.method protected parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 586
    const/4 v0, 0x0

    .line 589
    .local v0, "result":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 596
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_17

    .line 592
    :catch_12
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 595
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 598
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "cmd"    # Ljava/lang/String;

    .line 141
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ProcessCmd ["

    const-string v3, "DEVROOT#ATCmd(1.0.0)"

    const/4 v4, 0x0

    .line 143
    .local v4, "ret":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 145
    .local v5, "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevRootKeyATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "params":[Ljava/lang/String;
    const-string v7, "NG_FAIL(INVALID_PARAM)"

    if-nez v6, :cond_17

    .line 148
    return-object v7

    .line 150
    :cond_17
    array-length v8, v6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1c

    .line 151
    return-object v7

    .line 154
    :cond_1c
    :try_start_1c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] start"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v11, v6, v10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 158
    aget-object v8, v6, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_53} :catch_744

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v8, :cond_63

    :try_start_57
    aget-object v8, v6, v10

    .line 159
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_60

    if-ne v8, v11, :cond_7f

    goto :goto_63

    .line 462
    :catch_60
    move-exception v0

    goto/16 :goto_747

    .line 161
    :cond_63
    :goto_63
    :try_start_63
    aget-object v8, v6, v12

    const-string v13, "0"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6b} :catch_744

    if-nez v8, :cond_7f

    .line 163
    :try_start_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7e} :catch_60

    .line 164
    .end local v5    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 168
    .end local v0    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_7f
    :try_start_7f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v6, v10

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v13, v6, v11

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_98} :catch_744

    const-string v14, "01"

    const-string v15, " TB-"

    const-string v9, "NG_FAIL(DATA MISSED) SN-"

    const-string v13, "_"

    const-string v10, "FFF"

    const-string v11, "NG_FAIL"

    const-string v16, "NG_FAIL(NO_TOKEN)"

    const-string v12, "NG_FAIL "

    move/from16 v17, v4

    .end local v4    # "ret":I
    .local v17, "ret":I
    const-string v4, "OK"

    packed-switch v8, :pswitch_data_766

    .line 457
    :pswitch_af
    move-object/from16 v18, v3

    :try_start_b1
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_6ed

    .line 412
    :pswitch_b5
    const/4 v8, 0x2

    aget-object v11, v6, v8

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "strSequenceNo":Ljava/lang/String;
    aget-object v11, v6, v8

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_721

    .line 421
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_e2
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_f3

    .line 424
    .end local v2    # "sequenceNo":I
    :cond_ef
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 426
    .restart local v2    # "sequenceNo":I
    :goto_f3
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v11, v6, v7

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    add-int/2addr v11, v13

    aget-object v7, v6, v7

    .line 427
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 426
    invoke-virtual {v8, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 427
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-virtual {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13a

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_721

    .line 433
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_13a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_190

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_169

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v7

    .end local v17    # "ret":I
    .local v7, "ret":I
    goto :goto_172

    .line 441
    .end local v7    # "ret":I
    .restart local v17    # "ret":I
    :cond_169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v7
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_172} :catch_6e7

    .line 444
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :goto_172
    :try_start_172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 447
    if-eqz v7, :cond_192

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_721

    .line 433
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_190
    move/from16 v7, v17

    .line 453
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_1a3} :catch_3ad

    .line 454
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_721

    .line 372
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_1a7
    move-object/from16 v18, v3

    const/4 v2, 0x2

    :try_start_1aa
    aget-object v3, v6, v2

    const/4 v8, 0x5

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 374
    .restart local v3    # "strSequenceNo":Ljava/lang/String;
    aget-object v8, v6, v2

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d4

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_721

    .line 381
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1d4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_1e5

    .line 384
    .end local v2    # "sequenceNo":I
    :cond_1e1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 386
    .restart local v2    # "sequenceNo":I
    :goto_1e5
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v11, v6, v7

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    add-int/2addr v11, v13

    aget-object v7, v6, v7

    .line 387
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 386
    invoke-virtual {v8, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 387
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 386
    invoke-virtual {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_22c

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_721

    .line 393
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_22c
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_259

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v7
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_23b} :catch_6e7

    .line 398
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :try_start_23b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 401
    if-eqz v7, :cond_25b

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 404
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_721

    .line 393
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_259
    move/from16 v7, v17

    .line 407
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_25b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_26c} :catch_3ad

    .line 408
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_721

    .line 355
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_270
    move-object/from16 v18, v3

    const/4 v2, 0x2

    :try_start_273
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_293

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_721

    .line 361
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_293
    const/4 v2, 0x2

    aget-object v3, v6, v2

    .line 362
    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v2, v6, v2

    .line 363
    const/16 v7, 0x11

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 361
    const/4 v4, 0x3

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 365
    .local v2, "retBytes":[B
    if-eqz v2, :cond_2c7

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 368
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_2c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_721

    .line 312
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_2dd
    move-object/from16 v18, v3

    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/4 v8, 0x5

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "strSequenceNo":Ljava/lang/String;
    aget-object v8, v6, v2

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30a

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_721

    .line 321
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_30a
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_317

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_31b

    .line 324
    .end local v2    # "sequenceNo":I
    :cond_317
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 326
    .restart local v2    # "sequenceNo":I
    :goto_31b
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v11, v6, v7

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    add-int/2addr v11, v13

    aget-object v13, v6, v7

    .line 327
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    .line 326
    invoke-virtual {v8, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 327
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 326
    invoke-virtual {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_362

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_721

    .line 333
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_362
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_396

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v7

    if-nez v7, :cond_36f

    .line 336
    return-object v16

    .line 339
    :cond_36f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v7
    :try_end_378
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_378} :catch_6e7

    .line 342
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :try_start_378
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 345
    if-eqz v7, :cond_398

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_721

    .line 333
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_396
    move/from16 v7, v17

    .line 351
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_398
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3a9
    .catch Ljava/lang/Exception; {:try_start_378 .. :try_end_3a9} :catch_3ad

    .line 352
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_721

    .line 462
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_3ad
    move-exception v0

    move-object/from16 v2, p1

    move v4, v7

    goto/16 :goto_747

    .line 291
    .end local v7    # "ret":I
    .restart local v17    # "ret":I
    :pswitch_3b3
    move-object/from16 v18, v3

    :try_start_3b5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_3bc

    .line 292
    return-object v16

    .line 295
    :cond_3bc
    const/4 v2, 0x2

    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3dd

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_721

    .line 301
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_3dd
    const/4 v2, 0x2

    aget-object v3, v6, v2

    .line 302
    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v7, v6, v2

    .line 303
    const/16 v8, 0x11

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 305
    .local v2, "retBytes":[B
    if-eqz v2, :cond_410

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 308
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_721

    .line 258
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_426
    move-object/from16 v18, v3

    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 261
    .local v2, "strSequenceNo":Ljava/lang/String;
    const-string v3, "FF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_480

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v3

    if-nez v3, :cond_440

    .line 264
    return-object v16

    .line 267
    :cond_440
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v1, v7, v3}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v3
    :try_end_449
    .catch Ljava/lang/Exception; {:try_start_3b5 .. :try_end_449} :catch_6e7

    .line 270
    .end local v17    # "ret":I
    .local v3, "ret":I
    if-nez v3, :cond_45e

    .line 271
    :try_start_44b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_474

    .line 273
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_45e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 276
    :goto_474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V
    :try_end_477
    .catch Ljava/lang/Exception; {:try_start_44b .. :try_end_477} :catch_47a

    move v4, v3

    goto/16 :goto_721

    .line 462
    .end local v2    # "strSequenceNo":Ljava/lang/String;
    :catch_47a
    move-exception v0

    move-object/from16 v2, p1

    move v4, v3

    goto/16 :goto_747

    .line 280
    .end local v3    # "ret":I
    .restart local v2    # "strSequenceNo":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_480
    :try_start_480
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 282
    .local v3, "sequenceNo":I
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v10, v6, v7

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aget-object v7, v6, v7

    .line 283
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 282
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 283
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v1, v3, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b9

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 286
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_4b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_721

    .line 250
    .end local v2    # "strSequenceNo":Ljava/lang/String;
    .end local v3    # "sequenceNo":I
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_4e1
    move-object/from16 v18, v3

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->readKeyInfo(I)[B

    move-result-object v2

    .line 251
    .local v2, "retBytes":[B
    if-eqz v2, :cond_505

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 254
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_721

    .line 239
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_51b
    move-object/from16 v18, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_524

    .line 240
    return-object v16

    .line 243
    :cond_524
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v2

    if-eqz v2, :cond_540

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 246
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_721

    .line 227
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_556
    move-object/from16 v18, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_55f

    .line 228
    return-object v16

    .line 230
    :cond_55f
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->readDrkUID(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "Uid":Ljava/lang/String;
    if-eqz v2, :cond_57c

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 235
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_57c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_721

    .line 219
    .end local v2    # "Uid":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_592
    move-object/from16 v18, v3

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v2
    :try_end_599
    .catch Ljava/lang/Exception; {:try_start_480 .. :try_end_599} :catch_6e7

    .line 220
    .end local v17    # "ret":I
    .local v2, "ret":I
    if-nez v2, :cond_5b0

    .line 221
    :try_start_59b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 223
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5b0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5c5
    .catch Ljava/lang/Exception; {:try_start_59b .. :try_end_5c5} :catch_637

    .line 224
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_721

    .line 211
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_5c9
    move-object/from16 v18, v3

    const/4 v2, 0x1

    :try_start_5cc
    invoke-virtual {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v2
    :try_end_5d0
    .catch Ljava/lang/Exception; {:try_start_5cc .. :try_end_5d0} :catch_6e7

    .line 212
    .end local v17    # "ret":I
    .restart local v2    # "ret":I
    if-nez v2, :cond_5e7

    .line 213
    :try_start_5d2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 215
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5e7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5fc
    .catch Ljava/lang/Exception; {:try_start_5d2 .. :try_end_5fc} :catch_637

    .line 216
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_721

    .line 203
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_600
    move-object/from16 v18, v3

    const/4 v2, 0x3

    :try_start_603
    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v2
    :try_end_607
    .catch Ljava/lang/Exception; {:try_start_603 .. :try_end_607} :catch_6e7

    .line 204
    .end local v17    # "ret":I
    .restart local v2    # "ret":I
    if-nez v2, :cond_61e

    .line 205
    :try_start_609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 207
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_61e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_633
    .catch Ljava/lang/Exception; {:try_start_609 .. :try_end_633} :catch_637

    .line 208
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_721

    .line 462
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_637
    move-exception v0

    move v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_747

    .line 199
    .end local v2    # "ret":I
    .restart local v17    # "ret":I
    :pswitch_63d
    move-object/from16 v18, v3

    :try_start_63f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_721

    .line 172
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_657
    move-object/from16 v18, v3

    const-string v2, "factory"

    const-string/jumbo v3, "ro.factory.factory_binary"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69d

    .line 173
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->isExistDRK(I)I

    move-result v2
    :try_end_66d
    .catch Ljava/lang/Exception; {:try_start_63f .. :try_end_66d} :catch_6e7

    .line 174
    .end local v17    # "ret":I
    .local v2, "ret":I
    if-nez v2, :cond_684

    .line 175
    :try_start_66f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 177
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_699
    .catch Ljava/lang/Exception; {:try_start_66f .. :try_end_699} :catch_637

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_721

    .line 179
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_69d
    :try_start_69d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_6a4

    .line 180
    return-object v16

    .line 183
    :cond_6a4
    iget-object v2, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v2, :cond_6ab

    .line 184
    const-string v0, "NG_FAIL(INSTANCE ERROR)"

    return-object v0

    .line 186
    :cond_6ab
    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v2

    if-nez v2, :cond_6b4

    .line 187
    const-string v0, "NG_FAIL(FAILED CONNECTION)"

    return-object v0

    .line 189
    :cond_6b4
    iget-object v2, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-eqz v2, :cond_6d2

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    goto :goto_721

    .line 192
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_6d2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto :goto_721

    .line 462
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_6e7
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v4, v17

    goto :goto_747

    .line 457
    :goto_6ed
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v6, v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/DevRootKeyATCmd;->processTestCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_71e
    .catch Ljava/lang/Exception; {:try_start_69d .. :try_end_71e} :catch_6e7

    move-object v5, v2

    move/from16 v4, v17

    .line 460
    .end local v17    # "ret":I
    .local v4, "ret":I
    :goto_721
    :try_start_721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_72a
    .catch Ljava/lang/Exception; {:try_start_721 .. :try_end_72a} :catch_740

    move-object/from16 v2, p1

    :try_start_72c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73f
    .catch Ljava/lang/Exception; {:try_start_72c .. :try_end_73f} :catch_60

    .line 466
    goto :goto_765

    .line 462
    :catch_740
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_747

    :catch_744
    move-exception v0

    move/from16 v17, v4

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    :goto_747
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_765
    return-object v5

    :pswitch_data_766
    .packed-switch 0x0
        :pswitch_657
        :pswitch_63d
        :pswitch_657
        :pswitch_600
        :pswitch_5c9
        :pswitch_592
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_556
        :pswitch_63d
        :pswitch_51b
        :pswitch_4e1
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_426
        :pswitch_63d
        :pswitch_3b3
        :pswitch_2dd
        :pswitch_270
        :pswitch_1a7
        :pswitch_b5
        :pswitch_b5
    .end packed-switch
.end method

.method public processTestCmd(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "cmd"    # I
    .param p2, "subData"    # Ljava/lang/String;

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "tmpResult":[B
    const/4 v1, 0x0

    .line 512
    .local v1, "tmpStrResult":Ljava/lang/String;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 513
    const-string v2, "NG_FAIL(UNIMPLEMENTED_CMD)"

    return-object v2

    .line 516
    :cond_f
    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v2, :cond_16

    .line 517
    const-string v2, "NG_FAIL(INSTANCE ERROR)"

    return-object v2

    .line 521
    :cond_16
    const/4 v3, 0x1

    const-string v4, "NG_FAIL"

    const-string v5, "OK"

    packed-switch p1, :pswitch_data_92

    .line 571
    :try_start_1e
    const-string v2, "NG_FAIL(INVALID_PARAM)"

    goto/16 :goto_75

    .line 564
    :pswitch_22
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    move-result-object v2

    .line 565
    .local v2, "dInfo":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    if-nez v2, :cond_2d

    .line 566
    move-object v3, v4

    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_76

    .line 568
    .end local v3    # "result":Ljava/lang/String;
    :cond_2d
    move-object v3, v5

    .line 569
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_76

    .line 561
    .end local v2    # "dInfo":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_30
    invoke-virtual {p0, v3}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 562
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 558
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_36
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 559
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 549
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyCertificate(I)[B

    move-result-object v2

    move-object v0, v2

    .line 552
    if-nez v0, :cond_46

    .line 553
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 555
    .end local v3    # "result":Ljava/lang/String;
    :cond_46
    move-object v3, v5

    .line 556
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 541
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_48
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 543
    if-nez v1, :cond_51

    .line 544
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 546
    .end local v3    # "result":Ljava/lang/String;
    :cond_51
    move-object v3, v5

    .line 547
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 535
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_53
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 536
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 538
    .end local v3    # "result":Ljava/lang/String;
    :cond_5b
    move-object v3, v5

    .line 539
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 529
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_5d
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 530
    move-object v3, v5

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 532
    .end local v3    # "result":Ljava/lang/String;
    :cond_65
    move-object v3, v4

    .line 533
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 574
    .end local v3    # "result":Ljava/lang/String;
    :catch_67
    move-exception v2

    goto :goto_77

    .line 523
    :pswitch_69
    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v2

    if-nez v2, :cond_73

    .line 524
    const-string v2, "NG_FAIL(FAILED CONNECTION)"
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_71} :catch_67

    move-object v3, v2

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 526
    .end local v3    # "result":Ljava/lang/String;
    :cond_73
    move-object v3, v5

    .line 527
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 571
    .end local v3    # "result":Ljava/lang/String;
    :goto_75
    move-object v3, v2

    .line 578
    .restart local v3    # "result":Ljava/lang/String;
    :goto_76
    goto :goto_91

    .line 576
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :goto_77
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/lang/String;
    :goto_91
    return-object v3

    :pswitch_data_92
    .packed-switch 0x5a
        :pswitch_69
        :pswitch_5d
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_36
        :pswitch_30
        :pswitch_22
    .end packed-switch
.end method

.method protected validateDeviceKeyFromKeystore(IZ)I
    .registers 32
    .param p1, "keyType"    # I
    .param p2, "isSupportIDAttestation"    # Z

    .line 740
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "gak_rsa_alias"

    const-string v4, "UTF-8"

    const-string v5, "SHA-256"

    const-string v6, "gak_ec_alias"

    const-string v7, "AndroidKeyStore"

    const/4 v8, 0x0

    .line 741
    .local v8, "ret":Z
    const-string v9, "gak_ec_alias"

    .line 742
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    const-string v10, "gak_ec_challenge"

    .line 743
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    const-string v11, "gak_rsa_alias"

    .line 744
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    const-string v12, "gak_rsa_challenge"

    .line 750
    .local v12, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :try_start_17
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    .line 751
    .local v14, "keyStore":Ljava/security/KeyStore;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 754
    new-instance v15, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v13, 0xc

    invoke-direct {v15, v6, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 755
    .local v15, "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/16 v13, 0x100

    invoke-virtual {v15, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/NoSuchProviderException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/KeyStoreException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/ProviderException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/SignatureException; {:try_start_17 .. :try_end_2b} :catch_268
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_2b} :catch_268

    .line 756
    const/4 v13, 0x2

    move/from16 v17, v8

    .end local v8    # "ret":Z
    .local v17, "ret":Z
    :try_start_2e
    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v8, v13

    const-string v19, "NONE"

    const/4 v13, 0x1

    aput-object v19, v8, v13

    invoke-virtual {v15, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 757
    const-string v8, "gak_ec_challenge"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/NoSuchProviderException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/KeyStoreException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/cert/CertificateException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/ProviderException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/SignatureException; {:try_start_2e .. :try_end_48} :catch_25d
    .catch Ljava/security/InvalidKeyException; {:try_start_2e .. :try_end_48} :catch_25d

    .line 758
    const-string/jumbo v13, "phone"

    if-eqz p2, :cond_fb

    .line 759
    :try_start_4d
    iget-object v8, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 760
    .local v8, "telephonyService":Landroid/telephony/TelephonyManager;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 761
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v21
    :try_end_60
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/NoSuchProviderException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/KeyStoreException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/cert/CertificateException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/ProviderException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/SignatureException; {:try_start_4d .. :try_end_60} :catch_25d
    .catch Ljava/security/InvalidKeyException; {:try_start_4d .. :try_end_60} :catch_25d

    .line 762
    .local v21, "serial":Ljava/lang/String;
    move-object/from16 v23, v9

    const/4 v9, 0x0

    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .local v23, "GAK_EC_ALIAS":Ljava/lang/String;
    :try_start_63
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v24, v20

    .line 763
    .local v24, "imei":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v25
    :try_end_6d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/NoSuchProviderException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/KeyStoreException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/cert/CertificateException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/ProviderException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/lang/NullPointerException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/SignatureException; {:try_start_63 .. :try_end_6d} :catch_f1
    .catch Ljava/security/InvalidKeyException; {:try_start_63 .. :try_end_6d} :catch_f1

    move-object/from16 v9, v25

    .line 765
    .local v9, "meid":Ljava/lang/String;
    if-eqz v21, :cond_99

    :try_start_71
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_99

    .line 766
    move-object/from16 v25, v8

    const/16 v19, 0x1

    .end local v8    # "telephonyService":Landroid/telephony/TelephonyManager;
    .local v25, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_7f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/NoSuchProviderException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/KeyStoreException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/cert/CertificateException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/ProviderException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/lang/NullPointerException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/SignatureException; {:try_start_71 .. :try_end_7f} :catch_8f
    .catch Ljava/security/InvalidKeyException; {:try_start_71 .. :try_end_7f} :catch_8f

    move-object/from16 v26, v10

    move-object/from16 v10, v22

    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v26, "GAK_EC_CHALLENGE":Ljava/lang/String;
    :try_start_83
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/NoSuchProviderException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/KeyStoreException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/cert/CertificateException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/ProviderException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/SignatureException; {:try_start_83 .. :try_end_86} :catch_87
    .catch Ljava/security/InvalidKeyException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_9f

    .line 853
    .end local v9    # "meid":Ljava/lang/String;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    .end local v25    # "telephonyService":Landroid/telephony/TelephonyManager;
    :catch_87
    move-exception v0

    move-object v3, v0

    move-object/from16 v22, v11

    move/from16 v8, v17

    goto/16 :goto_272

    .end local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    :catch_8f
    move-exception v0

    move-object/from16 v26, v10

    move-object v3, v0

    move-object/from16 v22, v11

    move/from16 v8, v17

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    goto/16 :goto_272

    .line 765
    .end local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v8    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v9    # "meid":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .restart local v21    # "serial":Ljava/lang/String;
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "imei":Ljava/lang/String;
    :cond_99
    move-object/from16 v25, v8

    move-object/from16 v26, v10

    move-object/from16 v10, v22

    .line 767
    .end local v8    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    :goto_9f
    if-eqz v24, :cond_ba

    :try_start_a1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_a5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/NoSuchProviderException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/KeyStoreException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/cert/CertificateException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/ProviderException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/lang/NullPointerException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/SignatureException; {:try_start_a1 .. :try_end_a5} :catch_b2
    .catch Ljava/security/InvalidKeyException; {:try_start_a1 .. :try_end_a5} :catch_b2

    if-eqz v8, :cond_ba

    .line 768
    move-object/from16 v22, v11

    const/4 v8, 0x2

    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v22, "GAK_RSA_ALIAS":Ljava/lang/String;
    :try_start_aa
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 853
    .end local v9    # "meid":Ljava/lang/String;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    .end local v25    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_b2
    move-exception v0

    move-object/from16 v22, v11

    move-object v3, v0

    move/from16 v8, v17

    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto/16 :goto_272

    .line 767
    .end local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v9    # "meid":Ljava/lang/String;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .restart local v21    # "serial":Ljava/lang/String;
    .restart local v24    # "imei":Ljava/lang/String;
    .restart local v25    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_ba
    move-object/from16 v22, v11

    .line 769
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :goto_bc
    if-eqz v9, :cond_cc

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_cc

    .line 770
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_cc
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [I

    .line 773
    .local v8, "idTypes":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d3
    move-object/from16 v27, v9

    .end local v9    # "meid":Ljava/lang/String;
    .local v27, "meid":Ljava/lang/String;
    array-length v9, v8

    if-ge v11, v9, :cond_e9

    .line 774
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v8, v11

    .line 773
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v27

    goto :goto_d3

    .line 776
    .end local v11    # "i":I
    :cond_e9
    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 777
    invoke-virtual {v15, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_101

    .line 853
    .end local v8    # "idTypes":[I
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    .end local v25    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v27    # "meid":Ljava/lang/String;
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_f1
    move-exception v0

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object v3, v0

    move/from16 v8, v17

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    goto/16 :goto_272

    .line 758
    .end local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_fb
    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    .line 779
    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    :goto_101
    const/4 v8, 0x4

    if-ne v2, v8, :cond_108

    .line 780
    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 782
    :cond_108
    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v9

    .line 783
    .local v9, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v10, "EC"

    invoke-static {v10, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v10

    .line 784
    .local v10, "kpGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v10, v9}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 785
    invoke-virtual {v10}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 788
    invoke-virtual {v14, v6}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 789
    .local v6, "gakEcCertChain":[Ljava/security/cert/Certificate;
    invoke-virtual {v1, v6}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v11
    :try_end_120
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/NoSuchProviderException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/KeyStoreException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/cert/CertificateException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/ProviderException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/lang/IllegalArgumentException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/lang/NullPointerException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/SignatureException; {:try_start_aa .. :try_end_120} :catch_258
    .catch Ljava/security/InvalidKeyException; {:try_start_aa .. :try_end_120} :catch_258

    .line 790
    .end local v17    # "ret":Z
    .local v11, "ret":Z
    if-nez v11, :cond_125

    .line 791
    const/16 v3, -0x2cf6

    return v3

    .line 794
    :cond_125
    const/16 v17, 0x0

    :try_start_127
    aget-object v21, v6, v17

    check-cast v21, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v21

    .line 795
    .local v17, "appEcCert":Ljava/security/cert/X509Certificate;
    const/16 v19, 0x1

    aget-object v21, v6, v19

    check-cast v21, Ljava/security/cert/X509Certificate;

    .line 796
    .local v21, "gakEcCert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    move-object/from16 v25, v9

    move-object/from16 v9, v17

    .end local v17    # "appEcCert":Ljava/security/cert/X509Certificate;
    .local v9, "appEcCert":Ljava/security/cert/X509Certificate;
    .local v25, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {v9, v8}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 799
    array-length v8, v6

    const/16 v17, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-virtual {v1, v8, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v8

    const/16 v17, -0x2cf7

    if-nez v8, :cond_14e

    .line 800
    return v17

    .line 804
    :cond_14e
    new-instance v8, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-object/from16 v27, v6

    const/16 v6, 0xc

    .end local v6    # "gakEcCertChain":[Ljava/security/cert/Certificate;
    .local v27, "gakEcCertChain":[Ljava/security/cert/Certificate;
    invoke-direct {v8, v3, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    move-object v6, v8

    .line 805
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .local v6, "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/16 v8, 0x800

    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 806
    const/4 v8, 0x2

    new-array v15, v8, [Ljava/lang/String;

    const-string v8, "PSS"

    const/16 v16, 0x0

    aput-object v8, v15, v16

    const-string v8, "PKCS1"

    const/16 v16, 0x1

    aput-object v8, v15, v16

    invoke-virtual {v6, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 807
    const/4 v8, 0x2

    new-array v15, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v15, v8

    const-string v5, "SHA-1"

    const/4 v8, 0x1

    aput-object v5, v15, v8

    invoke-virtual {v6, v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 808
    const-string v5, "gak_rsa_challenge"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 809
    if-eqz p2, :cond_208

    .line 810
    iget-object v4, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 811
    .local v4, "telephonyService":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    .line 813
    .local v8, "serial":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v15

    .line 814
    .local v15, "imei":Ljava/lang/String;
    invoke-virtual {v4, v13}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, v16

    .line 816
    .local v13, "meid":Ljava/lang/String;
    if-eqz v8, :cond_1bc

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1bc

    .line 817
    move-object/from16 v28, v4

    const/16 v16, 0x1

    .end local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    .local v28, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1be

    .line 816
    .end local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_1bc
    move-object/from16 v28, v4

    .line 818
    .end local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    :goto_1be
    if-eqz v15, :cond_1ce

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1ce

    .line 819
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_1ce
    if-eqz v13, :cond_1de

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1de

    .line 821
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_1de
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 824
    .local v4, "idTypes":[I
    const/16 v16, 0x0

    move-object/from16 v18, v8

    move/from16 v8, v16

    .local v8, "i":I
    .local v18, "serial":Ljava/lang/String;
    :goto_1ea
    move-object/from16 v16, v9

    .end local v9    # "appEcCert":Ljava/security/cert/X509Certificate;
    .local v16, "appEcCert":Ljava/security/cert/X509Certificate;
    array-length v9, v4

    if-ge v8, v9, :cond_200

    .line 825
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v4, v8

    .line 824
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v16

    goto :goto_1ea

    .line 827
    .end local v8    # "i":I
    :cond_200
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 828
    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_20a

    .line 809
    .end local v4    # "idTypes":[I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "meid":Ljava/lang/String;
    .end local v15    # "imei":Ljava/lang/String;
    .end local v16    # "appEcCert":Ljava/security/cert/X509Certificate;
    .end local v18    # "serial":Ljava/lang/String;
    .end local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v9    # "appEcCert":Ljava/security/cert/X509Certificate;
    :cond_208
    move-object/from16 v16, v9

    .line 830
    .end local v9    # "appEcCert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "appEcCert":Ljava/security/cert/X509Certificate;
    :goto_20a
    const/4 v4, 0x4

    if-ne v2, v4, :cond_211

    .line 831
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 833
    :cond_211
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 834
    .end local v25    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v5, "RSA"

    invoke-static {v5, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    .line 835
    .end local v10    # "kpGenerator":Ljava/security/KeyPairGenerator;
    .local v5, "kpGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v5, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 836
    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 839
    invoke-virtual {v14, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 840
    .local v3, "gakRsaCertChain":[Ljava/security/cert/Certificate;
    invoke-virtual {v1, v3}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v7
    :try_end_229
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/NoSuchProviderException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/KeyStoreException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/cert/CertificateException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/ProviderException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/lang/IllegalArgumentException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/lang/NullPointerException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/SignatureException; {:try_start_127 .. :try_end_229} :catch_254
    .catch Ljava/security/InvalidKeyException; {:try_start_127 .. :try_end_229} :catch_254

    move v8, v7

    .line 841
    .end local v11    # "ret":Z
    .local v8, "ret":Z
    if-nez v8, :cond_22f

    .line 842
    const/16 v7, -0x2cf6

    return v7

    .line 845
    :cond_22f
    const/4 v7, 0x0

    :try_start_230
    aget-object v9, v3, v7

    check-cast v9, Ljava/security/cert/X509Certificate;

    move-object v7, v9

    .line 846
    .local v7, "appRsaCert":Ljava/security/cert/X509Certificate;
    const/4 v9, 0x1

    aget-object v10, v3, v9

    check-cast v10, Ljava/security/cert/X509Certificate;

    move-object v9, v10

    .line 847
    .local v9, "gakRsaCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 850
    array-length v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v10, v3, v10

    invoke-virtual {v1, v10, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v10
    :try_end_24b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/NoSuchProviderException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/KeyStoreException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/cert/CertificateException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/io/IOException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/ProviderException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/lang/IllegalArgumentException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/lang/NullPointerException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/SignatureException; {:try_start_230 .. :try_end_24b} :catch_251
    .catch Ljava/security/InvalidKeyException; {:try_start_230 .. :try_end_24b} :catch_251

    if-nez v10, :cond_24e

    .line 851
    return v17

    .line 859
    .end local v3    # "gakRsaCertChain":[Ljava/security/cert/Certificate;
    .end local v7    # "appRsaCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "gakRsaCert":Ljava/security/cert/X509Certificate;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v16    # "appEcCert":Ljava/security/cert/X509Certificate;
    .end local v21    # "gakEcCert":Ljava/security/cert/X509Certificate;
    .end local v27    # "gakEcCertChain":[Ljava/security/cert/Certificate;
    :cond_24e
    nop

    .line 861
    const/4 v3, 0x0

    return v3

    .line 853
    .end local v4    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v5    # "kpGenerator":Ljava/security/KeyPairGenerator;
    .end local v6    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :catch_251
    move-exception v0

    move-object v3, v0

    goto :goto_272

    .end local v8    # "ret":Z
    .restart local v11    # "ret":Z
    :catch_254
    move-exception v0

    move-object v3, v0

    move v8, v11

    goto :goto_272

    .end local v11    # "ret":Z
    .local v17, "ret":Z
    :catch_258
    move-exception v0

    move-object v3, v0

    move/from16 v8, v17

    goto :goto_272

    .end local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_25d
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object v3, v0

    move/from16 v8, v17

    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    goto :goto_272

    .end local v17    # "ret":Z
    .end local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v8    # "ret":Z
    .restart local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_268
    move-exception v0

    move/from16 v17, v8

    move-object/from16 v23, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v11

    move-object v3, v0

    .line 857
    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v22    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v26    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    :goto_272
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 858
    const/16 v4, -0x2cf6

    return v4
.end method

.method protected verifyCertChains(Ljava/util/List;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 883
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 884
    .local v1, "len":I
    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    const/4 v3, 0x0

    if-nez v1, :cond_11

    .line 885
    const-string v4, "certification chain size is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return v3

    .line 889
    :cond_11
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 890
    .local v4, "rootCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 891
    .local v5, "finalCert":Ljava/security/cert/X509Certificate;
    new-instance v6, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v6, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 892
    .local v6, "ccsp":Ljava/security/cert/CollectionCertStoreParameters;
    const-string v7, "Collection"

    invoke-static {v7, v6}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v7

    .line 896
    .local v7, "store":Ljava/security/cert/CertStore;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 897
    .local v8, "validDate":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 898
    const/4 v9, 0x5

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 901
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v9, "certchain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_40
    add-int/lit8 v11, v1, -0x1

    if-ge v10, v11, :cond_50

    .line 903
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    .line 906
    .end local v10    # "i":I
    :cond_50
    const-string v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v10

    .line 907
    .local v10, "cp":Ljava/security/cert/CertPath;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 908
    .local v11, "trust":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    new-instance v12, Ljava/security/cert/TrustAnchor;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 909
    const-string v12, "PKIX"

    invoke-static {v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v12

    .line 910
    .local v12, "cpv":Ljava/security/cert/CertPathValidator;
    new-instance v13, Ljava/security/cert/PKIXParameters;

    invoke-direct {v13, v11}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 911
    .local v13, "param":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v13, v7}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 912
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 913
    invoke-virtual {v13, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 914
    invoke-virtual {v12, v10, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v14

    check-cast v14, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 915
    .local v14, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    invoke-virtual {v14}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    .line 917
    .local v15, "subjectPublicKey":Ljava/security/PublicKey;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 918
    const-string/jumbo v3, "wrong public key returned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v2, 0x0

    return v2

    .line 921
    :cond_9c
    const/4 v2, 0x1

    return v2
.end method

.method protected verifyCertChains([Ljava/security/cert/Certificate;)Z
    .registers 7
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 867
    const/4 v0, 0x1

    .line 868
    .local v0, "finalIdx":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v1, "x509Certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    array-length v2, p1

    .line 871
    .local v2, "len":I
    move v3, v0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_14

    .line 872
    aget-object v4, p1, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 873
    .local v4, "x509Cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    .end local v4    # "x509Cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 876
    .end local v3    # "i":I
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains(Ljava/util/List;)Z

    move-result v3

    return v3
.end method
