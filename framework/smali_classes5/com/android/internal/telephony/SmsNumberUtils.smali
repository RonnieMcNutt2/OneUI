.class public Lcom/android/internal/telephony/SmsNumberUtils;
.super Ljava/lang/Object;
.source "SmsNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field private static final CDMA_HOME_NETWORK:I = 0x1

.field private static final CDMA_ROAMING_NETWORK:I = 0x2

.field private static final DBG:Z

.field private static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_CC_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SmsNumberUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    sput-boolean v1, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .param p3, "homeIDD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 413
    .local p2, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 414
    .local v0, "number":Ljava/lang/String;
    const/4 v1, -0x1

    .line 416
    .local v1, "countryCode":I
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 418
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "numberNoNBPCD":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 421
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move v1, v4

    if-lez v4, :cond_2a

    .line 423
    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 424
    const/16 v4, 0x64

    return v4

    .line 422
    .end local v3    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_2a
    goto :goto_37

    .line 426
    :cond_2b
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    move v1, v3

    if-lez v3, :cond_37

    .line 427
    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 428
    const/16 v3, 0x66

    return v3

    .line 426
    :cond_37
    :goto_37
    nop

    .line 431
    .end local v2    # "numberNoNBPCD":Ljava/lang/String;
    goto :goto_95

    :cond_39
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 433
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    move v1, v3

    if-lez v3, :cond_53

    .line 435
    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 436
    const/16 v3, 0x65

    return v3

    .line 438
    .end local v2    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_53
    goto :goto_95

    .line 439
    :cond_54
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    .local v3, "exitCode":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 441
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "numberNoIDD":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    move v1, v5

    if-lez v5, :cond_80

    .line 443
    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 444
    iput-object v3, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 445
    const/16 v2, 0x67

    return v2

    .line 448
    .end local v3    # "exitCode":Ljava/lang/String;
    .end local v4    # "numberNoIDD":Ljava/lang/String;
    :cond_80
    goto :goto_58

    .line 450
    :cond_81
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move v1, v2

    if-lez v2, :cond_95

    .line 451
    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 452
    const/16 v2, 0x68

    return v2

    .line 455
    :cond_95
    :goto_95
    const/4 v2, 0x0

    return v2
.end method

.method private static checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I
    .registers 11
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 302
    .local p1, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 303
    .local v0, "isNANP":Z
    iget-object v1, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 305
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x7

    if-ne v2, v5, :cond_30

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 308
    .local v2, "firstChar":C
    const/16 v6, 0x32

    if-lt v2, v6, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    .line 309
    const/4 v0, 0x1

    .line 310
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1a
    if-ge v6, v5, :cond_2b

    .line 311
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 312
    .local v7, "c":C
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v8

    if-nez v8, :cond_28

    .line 313
    const/4 v0, 0x0

    .line 314
    goto :goto_2b

    .line 310
    .end local v7    # "c":C
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 318
    .end local v6    # "i":I
    :cond_2b
    :goto_2b
    if-eqz v0, :cond_2e

    .line 319
    return v4

    .line 321
    .end local v2    # "firstChar":C
    :cond_2e
    goto/16 :goto_bb

    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xa

    if-ne v2, v5, :cond_40

    .line 323
    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 324
    const/4 v2, 0x2

    return v2

    .line 326
    :cond_40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x3

    const/16 v6, 0xb

    if-ne v2, v6, :cond_50

    .line 329
    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 330
    return v5

    .line 332
    :cond_50
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 333
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_6a

    .line 337
    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 338
    const/4 v2, 0x4

    return v2

    .line 340
    :cond_6a
    const-string v2, "011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xe

    if-ne v2, v4, :cond_bb

    .line 343
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 345
    const/4 v2, 0x6

    return v2

    .line 350
    :cond_86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 351
    .local v5, "idd":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 352
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "number2":Ljava/lang/String;
    if-eqz v6, :cond_ba

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 354
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 355
    iput-object v5, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 356
    const/4 v2, 0x5

    return v2

    .line 360
    .end local v5    # "idd":Ljava/lang/String;
    .end local v6    # "number2":Ljava/lang/String;
    :cond_ba
    goto :goto_8a

    .line 363
    :cond_bb
    :goto_bb
    return v3
.end method

.method public static filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "destAddr"    # Ljava/lang/String;

    .line 568
    sget-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const-string v1, "\""

    const-string v2, "SmsNumberUtils"

    if-eqz v0, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter filterDestAddr. destAddr=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_26
    if-eqz p2, :cond_b8

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_b8

    .line 576
    :cond_30
    nop

    .line 577
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 578
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "networkOperator":Ljava/lang/String;
    const/4 v5, 0x0

    .line 581
    .local v5, "result":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->needToConvert(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 582
    invoke-static {v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getNetworkType(Landroid/telephony/TelephonyManager;)I

    move-result v6

    .line 583
    .local v6, "networkType":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 584
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 585
    .local v7, "networkMcc":Ljava/lang/String;
    if-eqz v7, :cond_6c

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6c

    .line 586
    invoke-static {p0, p2, v7, v6}, Lcom/android/internal/telephony/SmsNumberUtils;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 591
    .end local v6    # "networkType":I
    .end local v7    # "networkMcc":Ljava/lang/String;
    :cond_6c
    if-eqz v0, :cond_b2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destAddr is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_7e

    const-string v6, "formatted."

    goto :goto_81

    :cond_7e
    const-string/jumbo v6, "not formatted."

    :goto_81
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "leave filterDestAddr, new destAddr=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_9f

    invoke-static {v2, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a3

    .line 594
    :cond_9f
    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_a3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_b2
    if-eqz v5, :cond_b6

    move-object v0, v5

    goto :goto_b7

    :cond_b6
    move-object v0, p2

    :goto_b7
    return-object v0

    .line 571
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v4    # "networkOperator":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    :cond_b8
    :goto_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destAddr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a global phone number! Nothing changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-object p2
.end method

.method private static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "activeMcc"    # Ljava/lang/String;
    .param p3, "networkType"    # I

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-eqz p1, :cond_175

    .line 136
    if-eqz v1, :cond_16d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16d

    .line 140
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "networkPortionNumber":Ljava/lang/String;
    if-eqz v3, :cond_165

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_165

    .line 145
    new-instance v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;-><init>(Ljava/lang/String;)V

    .line 146
    .local v4, "numberEntry":Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 149
    .local v5, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I

    move-result v6

    .line 150
    .local v6, "nanpState":I
    sget-boolean v7, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const-string v8, "SmsNumberUtils"

    if-eqz v7, :cond_4d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NANP type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_4d
    const/4 v9, 0x1

    if-eq v6, v9, :cond_164

    const/4 v10, 0x2

    if-eq v6, v10, :cond_164

    const/4 v11, 0x3

    if-ne v6, v11, :cond_58

    goto/16 :goto_164

    .line 156
    :cond_58
    const/4 v11, 0x4

    if-ne v6, v11, :cond_66

    .line 157
    if-eq v2, v9, :cond_61

    if-ne v2, v10, :cond_60

    goto :goto_61

    .line 162
    :cond_60
    return-object v3

    .line 160
    :cond_61
    :goto_61
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 164
    :cond_66
    const/4 v11, 0x5

    const-string v12, "+"

    const/4 v13, 0x0

    if-ne v6, v11, :cond_a4

    .line 165
    if-ne v2, v9, :cond_6f

    .line 166
    return-object v3

    .line 167
    :cond_6f
    if-nez v2, :cond_92

    .line 169
    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v7, :cond_7b

    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    :cond_7b
    move v7, v13

    .line 170
    .local v7, "iddLength":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 171
    .end local v7    # "iddLength":I
    :cond_92
    if-ne v2, v10, :cond_a4

    .line 173
    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v7, :cond_9e

    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    :cond_9e
    move v7, v13

    .line 174
    .restart local v7    # "iddLength":I
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 178
    .end local v7    # "iddLength":I
    :cond_a4
    const-string v11, "011"

    invoke-static {v0, v4, v5, v11}, Lcom/android/internal/telephony/SmsNumberUtils;->checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v14

    .line 180
    .local v14, "internationalState":I
    if-eqz v7, :cond_c6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "International type: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v14}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_c6
    const/4 v7, 0x0

    .line 183
    .local v7, "returnNumber":Ljava/lang/String;
    packed-switch v14, :pswitch_data_17e

    .line 221
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_160

    if-eq v2, v9, :cond_13e

    if-ne v2, v10, :cond_160

    goto/16 :goto_13e

    .line 205
    :pswitch_d6
    iget v8, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 207
    .local v8, "countryCode":I
    invoke-static {v4}, Lcom/android/internal/telephony/SmsNumberUtils;->inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z

    move-result v10

    if-nez v10, :cond_160

    .line 208
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v12, 0xb

    if-lt v10, v12, :cond_160

    if-eq v8, v9, :cond_160

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    .line 197
    .end local v8    # "countryCode":I
    :pswitch_fa
    if-eqz v2, :cond_fe

    if-ne v2, v10, :cond_160

    .line 198
    :cond_fe
    iget-object v8, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_108

    iget-object v8, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    :cond_108
    move v8, v13

    .line 200
    .local v8, "iddLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 201
    .end local v8    # "iddLength":I
    goto :goto_160

    .line 193
    :pswitch_11f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    goto :goto_160

    .line 215
    :pswitch_135
    move-object v7, v3

    .line 216
    goto :goto_160

    .line 185
    :pswitch_137
    if-nez v2, :cond_160

    .line 187
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    .line 223
    :cond_13e
    :goto_13e
    const-string v8, "+011"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 225
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    .line 228
    :cond_14b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 233
    :cond_160
    :goto_160
    if-nez v7, :cond_163

    .line 234
    move-object v7, v3

    .line 236
    :cond_163
    return-object v7

    .line 155
    .end local v7    # "returnNumber":Ljava/lang/String;
    .end local v14    # "internationalState":I
    :cond_164
    :goto_164
    return-object v3

    .line 142
    .end local v4    # "numberEntry":Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .end local v5    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "nanpState":I
    :cond_165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Number is invalid!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v3    # "networkPortionNumber":Ljava/lang/String;
    :cond_16d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "activeMcc is null or empty!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_175
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "number is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_17e
    .packed-switch 0x64
        :pswitch_137
        :pswitch_135
        :pswitch_11f
        :pswitch_fa
        :pswitch_d6
    .end packed-switch
.end method

.method private static getAllCountryCodes(Landroid/content/Context;)[I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 493
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_5

    .line 494
    return-object v0

    .line 497
    :cond_5
    const/4 v0, 0x0

    .line 499
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_7
    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "Country_Code"

    const/4 v8, 0x0

    aput-object v1, v4, v8

    .line 500
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 503
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4f

    .line 504
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, "i":I
    :goto_2b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 507
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 508
    .local v2, "countryCode":I
    sget-object v3, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput v2, v3, v1

    .line 509
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 510
    .local v1, "length":I
    sget v3, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v1, v3, :cond_4d

    .line 511
    sput v1, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I
    :try_end_4d
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_4d} :catch_57
    .catchall {:try_start_7 .. :try_end_4d} :catchall_55

    .line 513
    .end local v1    # "length":I
    .end local v2    # "countryCode":I
    :cond_4d
    move v1, v5

    goto :goto_2b

    .line 518
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_4f
    if-eqz v0, :cond_63

    .line 519
    :goto_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_63

    .line 518
    :catchall_55
    move-exception v1

    goto :goto_66

    .line 515
    :catch_57
    move-exception v1

    .line 516
    .local v1, "e":Landroid/database/SQLException;
    :try_start_58
    const-string v2, "SmsNumberUtils"

    const-string v3, "Can\'t access HbpcdLookup database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_55

    .line 518
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    if-eqz v0, :cond_63

    .line 519
    goto :goto_51

    .line 522
    :cond_63
    :goto_63
    sget-object v1, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    return-object v1

    .line 518
    :goto_66
    if-eqz v0, :cond_6b

    .line 519
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_6b
    throw v1
.end method

.method private static getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    const-string v0, "SmsNumberUtils"

    sget-object v1, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 249
    .local v1, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_d

    .line 250
    return-object v1

    .line 252
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 255
    const-string v2, "IDD"

    const-string v3, "MCC"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 260
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x0

    .line 261
    .local v3, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_26

    .line 262
    const-string v2, "MCC=?"

    .line 263
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 266
    :cond_26
    const/4 v10, 0x0

    .line 268
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v10, v4

    .line 270
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_50

    .line 271
    :goto_3b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 272
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "idd":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 274
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_4f} :catch_58
    .catchall {:try_start_27 .. :try_end_4f} :catchall_56

    .line 276
    .end local v4    # "idd":Ljava/lang/String;
    :cond_4f
    goto :goto_3b

    .line 281
    :cond_50
    if-eqz v10, :cond_62

    .line 282
    :goto_52
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_62

    .line 281
    :catchall_56
    move-exception v0

    goto :goto_8c

    .line 278
    :catch_58
    move-exception v4

    .line 279
    .local v4, "e":Landroid/database/SQLException;
    :try_start_59
    const-string v5, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_56

    .line 281
    nop

    .end local v4    # "e":Landroid/database/SQLException;
    if-eqz v10, :cond_62

    .line 282
    goto :goto_52

    .line 286
    :cond_62
    :goto_62
    sget-object v4, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_8b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", all IDDs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_8b
    return-object v1

    .line 281
    :goto_8c
    if-eqz v10, :cond_91

    .line 282
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_91
    throw v0
.end method

.method private static getCountryCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 462
    const/4 v0, -0x1

    .line 463
    .local v0, "countryCode":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_5b

    .line 465
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllCountryCodes(Landroid/content/Context;)[I

    move-result-object v1

    .line 466
    .local v1, "allCCs":[I
    if-nez v1, :cond_10

    .line 467
    return v0

    .line 470
    :cond_10
    sget v2, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v2, v2, [I

    .line 471
    .local v2, "ccArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    sget v4, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v4, :cond_29

    .line 472
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 475
    .end local v3    # "i":I
    :cond_29
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a
    array-length v4, v1

    if-ge v3, v4, :cond_5b

    .line 476
    aget v4, v1, v3

    .line 477
    .local v4, "tempCC":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_30
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v5, v6, :cond_58

    .line 478
    aget v6, v2, v5

    if-ne v4, v6, :cond_55

    .line 479
    sget-boolean v6, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v6, :cond_54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Country code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SmsNumberUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_54
    return v4

    .line 477
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 475
    .end local v4    # "tempCC":I
    .end local v5    # "j":I
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 486
    .end local v1    # "allCCs":[I
    .end local v2    # "ccArray":[I
    .end local v3    # "i":I
    :cond_5b
    return v0
.end method

.method private static getNetworkType(Landroid/telephony/TelephonyManager;)I
    .registers 5
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .line 603
    const/4 v0, -0x1

    .line 604
    .local v0, "networkType":I
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 606
    .local v1, "phoneType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 607
    const/4 v0, 0x0

    goto :goto_34

    .line 608
    :cond_a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 609
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isInternationalRoaming(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 610
    const/4 v0, 0x2

    goto :goto_34

    .line 612
    :cond_15
    const/4 v0, 0x1

    goto :goto_34

    .line 615
    :cond_17
    sget-boolean v2, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "warning! unknown mPhoneType value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsNumberUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_34
    :goto_34
    return v0
.end method

.method private static getNumberPlanType(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number Plan type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "numberPlanType":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1f

    .line 537
    const-string v0, "NP_NANP_LOCAL"

    goto :goto_62

    .line 538
    :cond_1f
    const/4 v1, 0x2

    if-ne p0, v1, :cond_25

    .line 539
    const-string v0, "NP_NANP_AREA_LOCAL"

    goto :goto_62

    .line 540
    :cond_25
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2b

    .line 541
    const-string v0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_62

    .line 542
    :cond_2b
    const/4 v1, 0x4

    if-ne p0, v1, :cond_31

    .line 543
    const-string v0, "NP_NANP_NBPCD_CC_AREA_LOCAL"

    goto :goto_62

    .line 544
    :cond_31
    const/4 v1, 0x5

    if-ne p0, v1, :cond_37

    .line 545
    const-string v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_62

    .line 546
    :cond_37
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3d

    .line 547
    const-string v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_62

    .line 548
    :cond_3d
    const/16 v1, 0x64

    if-ne p0, v1, :cond_44

    .line 549
    const-string v0, "NP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_62

    .line 550
    :cond_44
    const/16 v1, 0x65

    if-ne p0, v1, :cond_4b

    .line 551
    const-string v0, "NP_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_62

    .line 552
    :cond_4b
    const/16 v1, 0x66

    if-ne p0, v1, :cond_52

    .line 553
    const-string v0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_62

    .line 554
    :cond_52
    const/16 v1, 0x67

    if-ne p0, v1, :cond_59

    .line 555
    const-string v0, "NP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_62

    .line 556
    :cond_59
    const/16 v1, 0x68

    if-ne p0, v1, :cond_60

    .line 557
    const-string v0, "NP_CC_AREA_LOCAL"

    goto :goto_62

    .line 559
    :cond_60
    const-string v0, "Unknown type"

    .line 561
    :goto_62
    return-object v0
.end method

.method private static inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z
    .registers 4
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    .line 526
    iget v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 527
    .local v0, "countryCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1d

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 530
    .local v1, "result":Z
    :goto_1e
    return v1
.end method

.method private static isInternationalRoaming(Landroid/telephony/TelephonyManager;)Z
    .registers 8
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .line 622
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "operatorIsoCountry":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "simIsoCountry":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    .line 625
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 626
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 627
    .local v2, "internationalRoaming":Z
    :goto_1e
    if-eqz v2, :cond_3f

    .line 628
    const-string/jumbo v4, "us"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "vi"

    if-eqz v5, :cond_33

    .line 629
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    move v2, v3

    goto :goto_3f

    .line 630
    :cond_33
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 631
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    move v2, v3

    .line 634
    :cond_3f
    :goto_3f
    return v2
.end method

.method private static isNANP(Ljava/lang/String;)Z
    .registers 6
    .param p0, "number"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "retVal":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    if-eq v1, v3, :cond_19

    .line 374
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_4d

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 376
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_24

    .line 377
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 380
    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 381
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 382
    const/4 v0, 0x1

    .line 383
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_3c
    if-ge v1, v3, :cond_4d

    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 385
    .local v2, "c":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 386
    const/4 v0, 0x0

    .line 387
    goto :goto_4d

    .line 383
    .end local v2    # "c":C
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 392
    .end local v1    # "i":I
    :cond_4d
    :goto_4d
    return v0
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 396
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 397
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static needToConvert(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 642
    .local v0, "identity":J
    :try_start_4
    const-string v2, "carrier_config"

    .line 643
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 644
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v2, :cond_1f

    .line 645
    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 646
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_1f

    .line 647
    const-string/jumbo v4, "sms_requires_destination_number_conversion_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_25

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    return v4

    .line 652
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "bundle":Landroid/os/PersistableBundle;
    :cond_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    nop

    .line 655
    const/4 v2, 0x0

    return v2

    .line 652
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    throw v2
.end method

.method private static pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "pii"    # Ljava/lang/Object;

    .line 666
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "val":Ljava/lang/String;
    if-eqz p1, :cond_36

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_36

    .line 670
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SmsNumberUtils;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 668
    :cond_36
    :goto_36
    return-object v0
.end method

.method private static secureHash([B)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # [B

    .line 681
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-eqz v0, :cond_7

    .line 682
    const-string v0, "****"

    return-object v0

    .line 688
    :cond_7
    :try_start_7
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_19

    .line 691
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 693
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 694
    .local v1, "result":[B
    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 689
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "result":[B
    :catch_19
    move-exception v0

    .line 690
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "####"

    return-object v1
.end method
