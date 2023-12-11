.class public Lcom/android/internal/telephony/SemTelephonyUtils;
.super Ljava/lang/Object;
.source "SemTelephonyUtils.java"


# static fields
.field public static final ASR_CARRIER_ID:I = 0x599

.field public static final ATT_CARRIER_ID:I = 0x4a3

.field public static final AU_CARRIER_ID:I = 0x62d

.field public static final CCT_CARRIER_ID:I = 0x7f0

.field public static final CELLCOM_CARRIER_ID:I = 0x70a

.field public static final CHA_CARRIER_ID:I = 0x84e

.field public static final CRICKET_CARRIER_ID:I = 0x6f3

.field public static final CSPIRE_CARRIER_ID:I = 0x72c

.field private static final FACTORY_SIM_IMSI:[Ljava/lang/String;

.field public static final FKR_CARRIER_ID:I = 0x862

.field public static final JIO_CARRIER_ID:I = 0x7e2

.field private static final KOR_DOMESTIC_PROP_FOR_DS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SemTelephonyUtils"

.field public static final MTR_CARRIER_ID:I = 0x797

.field private static final NTCTYPE_COUNTRY:I = 0x3

.field private static final NTCTYPE_LENGTH:I = 0xf

.field private static final NTCTYPE_MAINOPERATOR:I = 0x0

.field private static final NTCTYPE_MAX:I = 0x3

.field private static final NTCTYPE_OPERATORTYPE:I = 0x2

.field private static final NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final ONEUI_VERSION:Ljava/lang/String;

.field public static final POVO_CARRIER_ID:I = 0x9d2

.field public static final RAKUTEN_MNO_CARRIER_ID:I = 0x97d

.field public static final SHIP_BUILD:Z

.field public static final TMO_CARRIER_ID:I = 0x1

.field public static final UNION_CARRIER_ID:I = 0x6f5

.field public static final UQM_CARRIER_ID:I = 0x83e

.field public static final USC_CARRIER_ID:I = 0x7a0

.field public static final VIAERO_CARRIER_ID:I = 0x4a9

.field public static final VZW_CARRIER_ID:I = 0x72f


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 78
    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    .line 79
    const-string/jumbo v0, "ro.build.version.oneui"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->ONEUI_VERSION:Ljava/lang/String;

    .line 158
    const-string v0, "520360110000010"

    const-string v1, "512010123456789"

    const-string v2, "001010123456789"

    const-string v3, "999999999999999"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->FACTORY_SIM_IMSI:[Ljava/lang/String;

    .line 361
    const-string/jumbo v0, "ril.simtype"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->KOR_DOMESTIC_PROP_FOR_DS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callStateListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CallState;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 347
    .local p0, "callStateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CallState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallState;

    .line 349
    .local v2, "callState":Landroid/telephony/CallState;
    const-string v3, "[imsCallId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string/jumbo v3, "networkType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CallState;->getNetworkType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v3, "callType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string/jumbo v3, "serviceType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CallState;->getImsCallServiceType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v3, "callState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v3, "classification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallClassification()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .end local v2    # "callState":Landroid/telephony/CallState;
    goto :goto_c

    .line 356
    :cond_85
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static emergencyControlCommandToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "emergencyControlCommand"    # I

    .line 272
    packed-switch p0, :pswitch_data_48

    .line 283
    const/16 v0, 0xc8

    const-string v1, ")"

    if-lt p0, v0, :cond_30

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :pswitch_21
    const-string v0, "FAILED(4)"

    return-object v0

    .line 276
    :pswitch_24
    const-string v0, "FINISHED_WITH_ECM(3)"

    return-object v0

    .line 275
    :pswitch_27
    const-string v0, "FINISHED(2)"

    return-object v0

    .line 274
    :pswitch_2a
    const-string v0, "CONNECTED(1)"

    return-object v0

    .line 273
    :pswitch_2d
    const-string v0, "DIALED(0)"

    return-object v0

    .line 287
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public static emergencySearchResultToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "emergencySearchResult"    # I

    .line 259
    packed-switch p0, :pswitch_data_30

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :pswitch_1d
    const-string v0, "NR(6)"

    return-object v0

    .line 265
    :pswitch_20
    const-string v0, "IGNORE(5)"

    return-object v0

    .line 264
    :pswitch_23
    const-string v0, "NONE(4)"

    return-object v0

    .line 263
    :pswitch_26
    const-string v0, "IWLAN(3)"

    return-object v0

    .line 261
    :pswitch_29
    const-string v0, "LTE(2)"

    return-object v0

    .line 260
    :pswitch_2c
    const-string v0, "CS(1)"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKorDomesticPropForDS(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 366
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->KOR_DOMESTIC_PROP_FOR_DS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 367
    if-gtz p1, :cond_12

    move-object v0, p0

    goto :goto_23

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    .line 369
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMainOperator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "ntcType"    # I

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "---"

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_22

    const/4 v0, 0x3

    if-le p1, v0, :cond_14

    goto :goto_22

    .line 89
    :cond_14
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "ntcValue":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1f

    .line 91
    return-object v1

    .line 94
    :cond_1f
    aget-object v1, v0, p1

    return-object v1

    .line 86
    .end local v0    # "ntcValue":[Ljava/lang/String;
    :cond_22
    :goto_22
    return-object v1
.end method

.method public static getOperatorType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubOperator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getNetworkTypeCapability(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 374
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getKorDomesticPropForDS(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "convertedProp":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 375
    invoke-static {v1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 377
    :cond_c
    invoke-static {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static internalAttributeToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "internalAttribute"    # I

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 294
    const-string v1, "ON_EMERGENCY_SEARCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_11
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 297
    const-string v1, "SKIP_EMERGENCY_SEARCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_1b
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_26

    .line 300
    const-string v1, "START_DURING_VOLTE_ENABLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_26
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_31

    .line 303
    const-string v1, "TRIGGER_E911_START_DAN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_31
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3c

    .line 306
    const-string v1, "PREPARE_CS_ONLY_DAN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_3c
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_47

    .line 309
    const-string v1, "MIGRATE_FROM_IMSPHONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_47
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_52

    .line 312
    const-string v1, "USE_ASSISTED_DIALING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_52
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_5d

    .line 315
    const-string v1, "FALLBACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_5d
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_68

    .line 318
    const-string v1, "IS_MULTIPARTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_68
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isChnGlobalModel(Ljava/lang/String;)Z
    .registers 4
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->isGlobalModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "HKG"

    const-string v1, "TPE"

    const-string v2, "CHN"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->isCountrySpecific(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static varargs isCountrySpecific(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "countries"    # [Ljava/lang/String;

    .line 140
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "countryName":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 143
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 144
    const/4 v1, 0x1

    return v1

    .line 142
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 147
    :cond_16
    return v2
.end method

.method public static isFactorySim(Ljava/lang/String;)Z
    .registers 2
    .param p0, "imsi"    # Ljava/lang/String;

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/internal/telephony/SemTelephonyUtils;->FACTORY_SIM_IMSI:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 167
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static isGlobalModel(Ljava/lang/String;)Z
    .registers 3
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 136
    const-string v0, "GLB"

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getOperatorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs isMainOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "mainOperators"    # [Ljava/lang/String;

    .line 114
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "mainOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 117
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 118
    const/4 v1, 0x1

    return v1

    .line 116
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 121
    :cond_16
    return v2
.end method

.method public static isSilentRedial(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "intentExtras"    # Landroid/os/Bundle;

    .line 234
    if-eqz p0, :cond_1b

    .line 235
    const-string/jumbo v0, "latestDomain"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "callDomain":Ljava/lang/String;
    const-string v1, "PS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "CS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 237
    :cond_19
    const/4 v1, 0x1

    return v1

    .line 240
    .end local v0    # "callDomain":Ljava/lang/String;
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static isSilentRedialFromCs(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "intentExtras"    # Landroid/os/Bundle;

    .line 251
    if-eqz p0, :cond_13

    const-string/jumbo v0, "latestDomain"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 252
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static isSilentRedialFromPs(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "intentExtras"    # Landroid/os/Bundle;

    .line 244
    if-eqz p0, :cond_13

    const-string/jumbo v0, "latestDomain"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 245
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs isSubOperatorSpecific(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "networkTypeCapability"    # Ljava/lang/String;
    .param p1, "subOperators"    # [Ljava/lang/String;

    .line 125
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getSubOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "subOperator":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 128
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 129
    const/4 v1, 0x1

    return v1

    .line 127
    .end local v4    # "x":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 132
    :cond_16
    return v2
.end method

.method public static isUsaGlobalModel(Ljava/lang/String;)Z
    .registers 3
    .param p0, "networkTypeCapability"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->isGlobalModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "USA"

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static maskPii(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "pii"    # Ljava/lang/Object;

    .line 177
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v0, :cond_7

    const-string v0, "<MASKED>"

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static maskPiiFromCellIdentity(I)Ljava/lang/String;
    .registers 2
    .param p0, "pii"    # I

    .line 195
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_15

    if-eqz p0, :cond_15

    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_c

    goto :goto_15

    .line 196
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_15
    :goto_15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static maskPiiFromCellIdentity(J)Ljava/lang/String;
    .registers 4
    .param p0, "pii"    # J

    .line 203
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_14

    goto :goto_1d

    .line 204
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromNumber(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_1d
    :goto_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static maskPiiFromNumber(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "pii"    # Ljava/lang/Object;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "num":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 218
    .local v1, "numLen":I
    const/4 v2, 0x5

    if-le v1, v2, :cond_13

    const/4 v2, 0x3

    goto :goto_15

    :cond_13
    div-int/lit8 v2, v1, 0x2

    .line 219
    .local v2, "remainLen":I
    :goto_15
    div-int/lit8 v3, v2, 0x2

    .line 221
    .local v3, "startRemainLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 223
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_2d

    .line 224
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 226
    .end local v5    # "i":I
    :cond_2d
    sub-int v5, v2, v3

    sub-int v5, v1, v5

    invoke-virtual {v4, v0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 230
    .end local v1    # "numLen":I
    .end local v2    # "remainLen":I
    .end local v3    # "startRemainLen":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_39
    return-object v0
.end method

.method public static maskPiiFromVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "voiceMailNumber"    # Ljava/lang/String;

    .line 184
    move-object v0, p0

    .line 185
    .local v0, "number":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v1, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "*86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_2b
    return-object v0
.end method

.method public static preciseCallStateToString(Landroid/telephony/PreciseCallState;)Ljava/lang/String;
    .registers 6
    .param p0, "preciseCallState"    # Landroid/telephony/PreciseCallState;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getRingingCallState()I

    move-result v1

    const-string v2, " "

    if-lez v1, :cond_21

    .line 327
    const-string v1, "RingingCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getRingingCallState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_21
    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v1

    if-lez v1, :cond_38

    .line 330
    const-string v1, "ForegroundCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_38
    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result v1

    if-lez v1, :cond_4f

    .line 333
    const-string v1, "BackgroundCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_4f
    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getDisconnectCause()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_67

    .line 336
    const-string v1, "DisconnectCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getDisconnectCause()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_67
    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getPreciseDisconnectCause()I

    move-result v1

    if-eq v1, v3, :cond_7e

    .line 339
    const-string v1, "PreciseDisconnectCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getPreciseDisconnectCause()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_7e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
