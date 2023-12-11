.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;,
        Landroid/telephony/PhoneNumberUtils$BcdExtendType;
    }
.end annotation


# static fields
.field private static final BCD_CALLED_PARTY_EXTENDED:Ljava/lang/String; = "*#abc"

.field private static final BCD_EF_ADN_EXTENDED:Ljava/lang/String; = "*#,N;"

.field public static final BCD_EXTENDED_TYPE_CALLED_PARTY:I = 0x2

.field public static final BCD_EXTENDED_TYPE_EF_ADN:I = 0x1

.field private static final CCC_LENGTH:I

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "JP"

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field private static final OTALOOKUP_INDEX_AREA_CITY_CODE:I = 0x8

.field private static final OTALOOKUP_INDEX_COUNTRY_CODE:I = 0x6

.field private static final OTALOOKUP_INDEX_COUNTRY_NAME:I = 0x1

.field private static final OTALOOKUP_INDEX_IDD:I = 0x3

.field private static final OTALOOKUP_INDEX_MCC:I = 0x2

.field private static final OTALOOKUP_INDEX_NANP:I = 0x5

.field private static final OTALOOKUP_INDEX_NATIONAL_NUMBER_LENGTH:I = 0x9

.field private static final OTALOOKUP_INDEX_NBPCD:I = 0x7

.field private static final OTALOOKUP_INDEX_NDD:I = 0x4

.field public static final OTA_COUNTRY_MCC_KEY:Ljava/lang/String; = "otaCountryMccKey"

.field private static final OTA_COUNTRY_URI:Landroid/net/Uri;

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field public static isAssistedDialingNumber:Z

.field private static isCDMARegistered:Z

.field private static isGSMRegistered:Z

.field private static isNANPCountry:Z

.field private static isNetRoaming:Z

.field private static isOTANANPCountry:Z

.field private static mCursor:Landroid/database/Cursor;

.field private static mCursorCountry:Landroid/database/Cursor;

.field private static numberLength:I

.field private static otaCountryCountryCode:Ljava/lang/String;

.field private static otaCountryIDDPrefix:Ljava/lang/String;

.field private static otaCountryMCC:Ljava/lang/String;

.field private static otaCountryNDDPrefix:Ljava/lang/String;

.field private static otaCountryName:Ljava/lang/String;

.field private static refCountryAreaCode:Ljava/lang/String;

.field private static refCountryCountryCode:Ljava/lang/String;

.field private static refCountryIDDPrefix:Ljava/lang/String;

.field private static refCountryMCC:Ljava/lang/String;

.field private static refCountryNDDPrefix:Ljava/lang/String;

.field private static refCountryName:Ljava/lang/String;

.field private static refCountryNationalNumberLength:I

.field private static sConvertToEmergencyMap:[Ljava/lang/String;

.field private static sMinMatch:I


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 121
    nop

    .line 122
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 173
    const/4 v0, 0x0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 1317
    const-string v1, "US"

    const-string v2, "CA"

    const-string v3, "AS"

    const-string v4, "AI"

    const-string v5, "AG"

    const-string v6, "BS"

    const-string v7, "BB"

    const-string v8, "BM"

    const-string v9, "VG"

    const-string v10, "KY"

    const-string v11, "DM"

    const-string v12, "DO"

    const-string v13, "GD"

    const-string v14, "GU"

    const-string v15, "JM"

    const-string v16, "PR"

    const-string v17, "MS"

    const-string v18, "MP"

    const-string v19, "KN"

    const-string v20, "LC"

    const-string v21, "VC"

    const-string v22, "TT"

    const-string v23, "TC"

    const-string v24, "VI"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2427
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2429
    const/16 v2, 0x61

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x62

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2430
    const/16 v2, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x42

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x43

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2432
    const/16 v2, 0x64

    const/16 v3, 0x33

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x65

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x66

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2433
    const/16 v4, 0x44

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x45

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x46

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2435
    const/16 v3, 0x67

    const/16 v4, 0x34

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x68

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x69

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2436
    const/16 v3, 0x47

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x48

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x49

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2438
    const/16 v3, 0x6a

    const/16 v4, 0x35

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6b

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6c

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2439
    const/16 v3, 0x4a

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4b

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4c

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2441
    const/16 v3, 0x6d

    const/16 v4, 0x36

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6e

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x6f

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2442
    const/16 v3, 0x4d

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4e

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x4f

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2444
    const/16 v3, 0x70

    const/16 v4, 0x37

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x71

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x72

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x73

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2445
    const/16 v3, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x51

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x52

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x53

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2447
    const/16 v3, 0x74

    const/16 v4, 0x38

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x75

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x76

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2448
    const/16 v3, 0x54

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x55

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x56

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2450
    const/16 v3, 0x77

    const/16 v4, 0x39

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x78

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x79

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x7a

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2451
    const/16 v3, 0x57

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x58

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x59

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0x5a

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3192
    new-array v1, v2, [Z

    fill-array-data v1, :array_1ac

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3204
    array-length v1, v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    .line 3388
    const/4 v1, 0x0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    .line 3506
    const-string v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 3507
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 3508
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 3509
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 3510
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 3511
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 3513
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 3515
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 3516
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 3519
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 3520
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 3521
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 3522
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 3523
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 3524
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 3525
    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    .line 3527
    sput v0, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 3529
    const-string v1, "content://assisteddialing/refcountry"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 3530
    const-string v1, "content://assisteddialing/mcc_otalookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    .line 3531
    const-string v1, "content://assisteddialing/ota_country"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    .line 3534
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    .line 3535
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    return-void

    nop

    :array_1ac
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 21
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .line 3582
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3583
    .local v1, "numberLenReal":I
    move v2, v1

    .line 3584
    .local v2, "numberLenEffective":I
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v4, v7, :cond_14

    move v4, v6

    goto :goto_15

    :cond_14
    move v4, v5

    .line 3585
    .local v4, "hasPlus":Z
    :goto_15
    const/16 v8, 0x23

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v7, :cond_1f

    move v8, v6

    goto :goto_20

    :cond_1f
    move v8, v5

    .line 3586
    .local v8, "hasSharp":Z
    :goto_20
    const/16 v9, 0x2a

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v7, :cond_2a

    move v7, v6

    goto :goto_2b

    :cond_2a
    move v7, v5

    .line 3588
    .local v7, "hasStar":Z
    :goto_2b
    if-eqz v4, :cond_2f

    add-int/lit8 v2, v2, -0x1

    .line 3590
    :cond_2f
    if-nez v2, :cond_33

    const/4 v3, 0x0

    return-object v3

    .line 3592
    :cond_33
    add-int/lit8 v9, v2, 0x1

    div-int/lit8 v9, v9, 0x2

    .line 3593
    .local v9, "resultLen":I
    const/4 v10, 0x1

    .line 3594
    .local v10, "extraBytes":I
    if-eqz p1, :cond_3c

    add-int/lit8 v10, v10, 0x1

    .line 3595
    :cond_3c
    add-int/2addr v9, v10

    .line 3597
    new-array v11, v9, [B

    .line 3599
    .local v11, "result":[B
    const/4 v12, 0x0

    .line 3600
    .local v12, "digitCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_41
    if-ge v13, v1, :cond_6c

    .line 3601
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 3602
    .local v14, "c":C
    if-ne v14, v3, :cond_4a

    goto :goto_67

    .line 3603
    :cond_4a
    and-int/lit8 v15, v12, 0x1

    if-ne v15, v6, :cond_50

    const/4 v15, 0x4

    goto :goto_51

    :cond_50
    move v15, v5

    .line 3604
    .local v15, "shift":I
    :goto_51
    shr-int/lit8 v16, v12, 0x1

    add-int v16, v10, v16

    aget-byte v17, v11, v16

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v18

    and-int/lit8 v18, v18, 0xf

    shl-int v3, v18, v15

    int-to-byte v3, v3

    or-int v3, v17, v3

    int-to-byte v3, v3

    aput-byte v3, v11, v16

    .line 3605
    add-int/lit8 v12, v12, 0x1

    .line 3600
    .end local v14    # "c":C
    .end local v15    # "shift":I
    :goto_67
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x2b

    goto :goto_41

    .line 3609
    .end local v13    # "i":I
    :cond_6c
    and-int/lit8 v3, v12, 0x1

    if-ne v3, v6, :cond_7a

    shr-int/lit8 v3, v12, 0x1

    add-int/2addr v3, v10

    aget-byte v5, v11, v3

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 3611
    :cond_7a
    const/4 v3, 0x0

    .line 3612
    .local v3, "offset":I
    if-eqz p1, :cond_85

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "offset":I
    .local v5, "offset":I
    add-int/lit8 v6, v9, -0x1

    int-to-byte v6, v6

    aput-byte v6, v11, v3

    move v3, v5

    .line 3613
    .end local v5    # "offset":I
    .restart local v3    # "offset":I
    :cond_85
    if-eqz v4, :cond_8a

    const/16 v5, 0x91

    goto :goto_8c

    :cond_8a
    const/16 v5, 0x81

    :goto_8c
    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 3616
    if-nez v8, :cond_93

    if-eqz v7, :cond_9a

    .line 3617
    :cond_93
    aget-byte v5, v11, v3

    and-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, v11, v3

    .line 3621
    :cond_9a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TOA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v11, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3623
    return-object v11
.end method

.method private static adLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4003
    const-string v0, "AssistedDialing"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    return-void
.end method

.method public static addTtsSpan(Landroid/text/Spannable;II)V
    .registers 5
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .line 2700
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2704
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .line 3052
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_16

    .line 3053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3054
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3056
    .local v0, "retStr":Ljava/lang/String;
    goto :goto_1f

    .line 3059
    .end local v0    # "retStr":Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3060
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 3062
    .local v0, "retStr":Ljava/lang/String;
    :goto_1f
    return-object v0
.end method

.method public static areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 3475
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 3479
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p2, :cond_c

    .line 3480
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3484
    :cond_c
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0, p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 3485
    .local v2, "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3
    :try_end_15
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_d .. :try_end_15} :catch_44

    .line 3488
    .local v3, "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    nop

    .line 3490
    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v4

    .line 3491
    .local v4, "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_43

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_24

    goto :goto_43

    .line 3494
    :cond_24
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_42

    .line 3495
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-nez v5, :cond_40

    .line 3496
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v7

    if-ne v5, v7, :cond_40

    move v1, v6

    goto :goto_41

    :cond_40
    nop

    .line 3495
    :goto_41
    return v1

    .line 3498
    :cond_42
    return v1

    .line 3493
    :cond_43
    :goto_43
    return v6

    .line 3486
    .end local v2    # "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :catch_44
    move-exception v2

    .line 3487
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1
.end method

.method private static bcdToChar(BI)C
    .registers 5
    .param p0, "b"    # B
    .param p1, "bcdExtType"    # I

    .line 1107
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1108
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    .line 1111
    :cond_8
    const/4 v0, 0x0

    .line 1112
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_f

    .line 1113
    const-string v0, "*#,N;"

    goto :goto_14

    .line 1114
    :cond_f
    const/4 v1, 0x2

    if-ne v1, p1, :cond_14

    .line 1115
    const-string v0, "*#abc"

    .line 1117
    :cond_14
    :goto_14
    if-eqz v0, :cond_26

    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1f

    goto :goto_26

    .line 1121
    :cond_1f
    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 1118
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1088
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calledPartyBCDFragmentToString([BIII)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1098
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 1099
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 920
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calledPartyBCDToString([BIII)Ljava/lang/String;
    .registers 16
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, "prependPlus":Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 944
    .local v1, "ret":Ljava/lang/StringBuilder;
    const-string v2, ""

    const/4 v4, 0x2

    if-ge p2, v4, :cond_10

    .line 945
    return-object v2

    .line 949
    :cond_10
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_19

    .line 950
    const/4 v0, 0x1

    .line 953
    :cond_19
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v1, p0, v5, v6, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 956
    if-eqz v0, :cond_29

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_29

    .line 958
    return-object v2

    .line 961
    :cond_29
    if-eqz v0, :cond_e5

    .line 987
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 988
    .local v5, "retString":Ljava/lang/String;
    const-string v6, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 989
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 990
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const/4 v9, 0x4

    const-string v10, "+"

    const/4 v11, 0x3

    if-eqz v8, :cond_a1

    .line 991
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x5

    if-eqz v2, :cond_74

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 996
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 1005
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 1006
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 1014
    :cond_a1
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1015
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1016
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 1021
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 1022
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 1029
    :cond_d7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 1030
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "retString":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_e5
    :goto_e5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2491
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 2497
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2499
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2508
    if-eqz p2, :cond_32

    .line 2509
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 2510
    .local v0, "currIso":Ljava/lang/String;
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultIso":Ljava/lang/String;
    goto :goto_42

    .line 2512
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_32
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2513
    .restart local v0    # "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2516
    .restart local v1    # "defaultIso":Ljava/lang/String;
    :goto_42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 2517
    nop

    .line 2518
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    .line 2523
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    .line 2517
    invoke-static {p0, v2, v3, p1, p2}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2528
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_5c
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .line 2582
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIILandroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I
    .param p3, "phoneId"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 2588
    move-object v0, p0

    .line 2590
    .local v0, "retStr":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, p2, :cond_8

    if-ne p1, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 2593
    .local v2, "useNanp":Z
    :goto_9
    if-eqz p4, :cond_17

    invoke-static {p3, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2594
    const-string v3, "Change useNanp for international dialing feature"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2595
    const/4 v2, 0x1

    .line 2600
    :cond_17
    if-eqz p0, :cond_85

    .line 2601
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_85

    .line 2604
    const/4 v3, 0x0

    .line 2605
    .local v3, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2608
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2617
    :cond_25
    if-eqz v2, :cond_2c

    .line 2618
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "networkDialStr":Ljava/lang/String;
    goto :goto_30

    .line 2620
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_2c
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2628
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :goto_30
    if-eqz p4, :cond_3d

    invoke-static {p3, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 2629
    invoke-static {v5, p3, p4}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeForSpr(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_41

    .line 2631
    :cond_3d
    invoke-static {v5, v2}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2636
    :goto_41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 2637
    if-nez v0, :cond_4b

    .line 2638
    move-object v0, v5

    goto :goto_4f

    .line 2640
    :cond_4b
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2649
    :goto_4f
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2650
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 2651
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v6

    .line 2654
    .local v6, "dialableIndex":I
    if-lt v6, v1, :cond_68

    .line 2655
    invoke-static {v6, v0, v3}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2658
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_72

    .line 2663
    :cond_68
    if-gez v6, :cond_6c

    .line 2664
    const-string v3, ""

    .line 2666
    :cond_6c
    const-string/jumbo v7, "wrong postDialStr="

    invoke-static {v7, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    .end local v5    # "networkDialStr":Ljava/lang/String;
    .end local v6    # "dialableIndex":I
    :cond_72
    :goto_72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_85

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_85

    .line 2646
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :cond_7f
    const-string v1, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    return-object p0

    .line 2672
    .end local v3    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_85
    :goto_85
    return-object v0
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2540
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2542
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2543
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2544
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2545
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2549
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    :cond_2e
    return-object p0
.end method

.method private static charToBCD(C)I
    .registers 4
    .param p0, "c"    # C

    .line 3562
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 3563
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 3564
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 3565
    const/16 v0, 0xa

    return v0

    .line 3566
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 3567
    const/16 v0, 0xb

    return v0

    .line 3568
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 3569
    const/16 v0, 0xc

    return v0

    .line 3570
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 3571
    const/16 v0, 0xd

    return v0

    .line 3572
    :cond_27
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_2e

    .line 3573
    const/16 v0, 0xe

    return v0

    .line 3575
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static charToBCD(CI)I
    .registers 6
    .param p0, "c"    # C
    .param p1, "bcdExtType"    # I

    .line 1125
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1126
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1129
    :cond_b
    const/4 v0, 0x0

    .line 1130
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_12

    .line 1131
    const-string v0, "*#,N;"

    goto :goto_17

    .line 1132
    :cond_12
    const/4 v1, 0x2

    if-ne v1, p1, :cond_17

    .line 1133
    const-string v0, "*#abc"

    .line 1135
    :cond_17
    :goto_17
    if-eqz v0, :cond_27

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 1138
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    return v1

    .line 1136
    :cond_27
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid char for BCD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .line 3355
    const/4 v0, 0x0

    .line 3356
    .local v0, "trunk_prefix_was_read":Z
    :goto_1
    if-lt p2, p1, :cond_21

    .line 3357
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_13

    .line 3358
    if-eqz v0, :cond_11

    .line 3361
    return v2

    .line 3364
    :cond_11
    const/4 v0, 0x1

    goto :goto_1e

    .line 3366
    :cond_13
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3368
    return v2

    .line 3370
    :cond_1e
    :goto_1e
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 3373
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 502
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 489
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .line 510
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_b
    return v0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "numNonDialableCharsInA":I
    const/4 v1, 0x0

    .line 539
    .local v1, "numNonDialableCharsInB":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CallerIdMatchingDigit"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 543
    .local v2, "minMatch":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_af

    if-nez p1, :cond_15

    goto/16 :goto_af

    .line 545
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_ae

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_ae

    .line 549
    :cond_23
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 550
    .local v5, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v6

    .line 551
    .local v6, "ib":I
    const/4 v7, 0x0

    .line 553
    .local v7, "matched":I
    :goto_2c
    if-ltz v5, :cond_61

    if-ltz v6, :cond_61

    .line 555
    const/4 v8, 0x0

    .line 557
    .local v8, "skipCmp":Z
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 559
    .local v9, "ca":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_40

    .line 560
    add-int/lit8 v5, v5, -0x1

    .line 561
    const/4 v8, 0x1

    .line 562
    add-int/lit8 v0, v0, 0x1

    .line 565
    :cond_40
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 567
    .local v10, "cb":C
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 568
    add-int/lit8 v6, v6, -0x1

    .line 569
    const/4 v8, 0x1

    .line 570
    add-int/lit8 v1, v1, 0x1

    .line 573
    :cond_4f
    if-nez v8, :cond_60

    .line 574
    if-eq v10, v9, :cond_5a

    const/16 v11, 0x4e

    if-eq v9, v11, :cond_5a

    if-eq v10, v11, :cond_5a

    .line 575
    goto :goto_61

    .line 577
    :cond_5a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    .line 579
    .end local v8    # "skipCmp":Z
    .end local v9    # "ca":C
    .end local v10    # "cb":C
    :cond_60
    goto :goto_2c

    .line 581
    :cond_61
    :goto_61
    if-ge v7, v2, :cond_73

    .line 582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    .line 583
    .local v8, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    .line 588
    .local v9, "effectiveBLen":I
    if-ne v8, v9, :cond_72

    if-ne v8, v7, :cond_72

    .line 589
    return v4

    .line 592
    :cond_72
    return v3

    .line 596
    .end local v8    # "effectiveALen":I
    .end local v9    # "effectiveBLen":I
    :cond_73
    if-lt v7, v2, :cond_7a

    if-ltz v5, :cond_79

    if-gez v6, :cond_7a

    .line 597
    :cond_79
    return v4

    .line 609
    :cond_7a
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8b

    add-int/lit8 v8, v6, 0x1

    .line 610
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 612
    return v4

    .line 615
    :cond_8b
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9c

    add-int/lit8 v8, v6, 0x1

    .line 616
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 618
    return v4

    .line 621
    :cond_9c
    add-int/lit8 v8, v6, 0x1

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_ad

    add-int/lit8 v8, v5, 0x1

    .line 622
    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 624
    return v4

    .line 627
    :cond_ad
    return v3

    .line 546
    .end local v5    # "ia":I
    .end local v6    # "ib":I
    .end local v7    # "matched":I
    :cond_ae
    :goto_ae
    return v3

    .line 543
    :cond_af
    :goto_af
    if-ne p0, p1, :cond_b2

    move v3, v4

    :cond_b2
    return v3
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 636
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 21
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_102

    if-nez v1, :cond_f

    move v2, v3

    goto/16 :goto_103

    .line 647
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    .line 648
    return v4

    .line 651
    :cond_1c
    const/4 v5, 0x0

    .line 652
    .local v5, "forwardIndexA":I
    const/4 v6, 0x0

    .line 654
    .local v6, "forwardIndexB":I
    nop

    .line 655
    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 656
    .local v7, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    nop

    .line 657
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v8

    .line 658
    .local v8, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v9, 0x0

    .line 659
    .local v9, "bothHasCountryCallingCode":Z
    const/4 v10, 0x1

    .line 660
    .local v10, "okToIgnorePrefix":Z
    const/4 v11, 0x0

    .line 661
    .local v11, "trunkPrefixIsOmittedA":Z
    const/4 v12, 0x0

    .line 662
    .local v12, "trunkPrefixIsOmittedB":Z
    if-eqz v7, :cond_3e

    if-eqz v8, :cond_3e

    .line 663
    iget v13, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    iget v14, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    if-eq v13, v14, :cond_37

    .line 665
    return v4

    .line 669
    :cond_37
    const/4 v10, 0x0

    .line 670
    const/4 v9, 0x1

    .line 671
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 672
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_5e

    .line 673
    :cond_3e
    if-nez v7, :cond_44

    if-nez v8, :cond_44

    .line 676
    const/4 v10, 0x0

    goto :goto_5e

    .line 678
    :cond_44
    if-eqz v7, :cond_49

    .line 679
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_51

    .line 681
    :cond_49
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 682
    .local v13, "tmp":I
    if-ltz v13, :cond_51

    .line 683
    move v5, v13

    .line 684
    const/4 v11, 0x1

    .line 687
    .end local v13    # "tmp":I
    :cond_51
    :goto_51
    if-eqz v8, :cond_56

    .line 688
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_5e

    .line 690
    :cond_56
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 691
    .restart local v13    # "tmp":I
    if-ltz v13, :cond_5e

    .line 692
    move v6, v13

    .line 693
    const/4 v12, 0x1

    .line 698
    .end local v13    # "tmp":I
    :cond_5e
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v3

    .line 699
    .local v13, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v3

    .line 700
    .local v14, "backwardIndexB":I
    :goto_68
    if-lt v13, v5, :cond_95

    if-lt v14, v6, :cond_95

    .line 701
    const/4 v15, 0x0

    .line 702
    .local v15, "skip_compare":Z
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 703
    .local v3, "chA":C
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 704
    .local v4, "chB":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v17

    if-eqz v17, :cond_7e

    .line 705
    add-int/lit8 v13, v13, -0x1

    .line 706
    const/4 v15, 0x1

    .line 708
    :cond_7e
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v17

    if-eqz v17, :cond_87

    .line 709
    add-int/lit8 v14, v14, -0x1

    .line 710
    const/4 v15, 0x1

    .line 713
    :cond_87
    if-nez v15, :cond_92

    .line 714
    if-eq v3, v4, :cond_8e

    .line 715
    const/16 v16, 0x0

    return v16

    .line 717
    :cond_8e
    add-int/lit8 v13, v13, -0x1

    .line 718
    add-int/lit8 v14, v14, -0x1

    .line 720
    .end local v3    # "chA":C
    .end local v4    # "chB":C
    .end local v15    # "skip_compare":Z
    :cond_92
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_68

    .line 722
    :cond_95
    if-eqz v10, :cond_bf

    .line 723
    if-eqz v11, :cond_9b

    if-le v5, v13, :cond_a1

    .line 724
    :cond_9b
    invoke-static {v0, v5, v13}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 725
    :cond_a1
    if-eqz v2, :cond_a9

    .line 735
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 737
    :cond_a9
    const/4 v3, 0x0

    return v3

    .line 740
    :cond_ab
    if-eqz v12, :cond_af

    if-le v6, v14, :cond_b5

    .line 741
    :cond_af
    invoke-static {v1, v5, v14}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_100

    .line 742
    :cond_b5
    if-eqz v2, :cond_bd

    .line 743
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 745
    :cond_bd
    const/4 v3, 0x0

    return v3

    .line 758
    :cond_bf
    xor-int/lit8 v3, v9, 0x1

    .line 759
    .local v3, "maybeNamp":Z
    :goto_c1
    if-lt v13, v5, :cond_e1

    .line 760
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 761
    .local v4, "chA":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v15

    if-eqz v15, :cond_db

    .line 762
    if-eqz v3, :cond_d9

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v15

    const/4 v2, 0x1

    if-ne v15, v2, :cond_d9

    .line 763
    const/4 v2, 0x0

    move v3, v2

    .end local v3    # "maybeNamp":Z
    .local v2, "maybeNamp":Z
    goto :goto_db

    .line 765
    .end local v2    # "maybeNamp":Z
    .restart local v3    # "maybeNamp":Z
    :cond_d9
    const/4 v2, 0x0

    return v2

    .line 768
    :cond_db
    :goto_db
    nop

    .end local v4    # "chA":C
    add-int/lit8 v13, v13, -0x1

    .line 769
    move/from16 v2, p2

    goto :goto_c1

    .line 770
    :cond_e1
    :goto_e1
    if-lt v14, v6, :cond_100

    .line 771
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 772
    .local v2, "chB":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 773
    if-eqz v3, :cond_f9

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_f9

    .line 774
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_fc

    .line 776
    :cond_f9
    const/4 v4, 0x0

    return v4

    .line 772
    :cond_fb
    const/4 v4, 0x0

    .line 779
    :goto_fc
    nop

    .end local v2    # "chB":C
    add-int/lit8 v14, v14, -0x1

    .line 780
    goto :goto_e1

    .line 783
    .end local v3    # "maybeNamp":Z
    :cond_100
    const/4 v2, 0x1

    return v2

    .line 645
    .end local v5    # "forwardIndexA":I
    .end local v6    # "forwardIndexB":I
    .end local v7    # "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v8    # "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v9    # "bothHasCountryCallingCode":Z
    .end local v10    # "okToIgnorePrefix":Z
    .end local v11    # "trunkPrefixIsOmittedA":Z
    .end local v12    # "trunkPrefixIsOmittedB":Z
    .end local v13    # "backwardIndexA":I
    .end local v14    # "backwardIndexB":I
    :cond_102
    move v2, v3

    .line 646
    :goto_103
    if-ne v0, v1, :cond_107

    move v3, v2

    goto :goto_108

    :cond_107
    move v3, v4

    :goto_108
    return v3
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 382
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .line 2404
    if-nez p0, :cond_3

    .line 2405
    return-object p0

    .line 2407
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2408
    .local v0, "len":I
    if-nez v0, :cond_a

    .line 2409
    return-object p0

    .line 2412
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2414
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1f

    .line 2415
    aget-char v3, v1, v2

    .line 2417
    .local v3, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 2414
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2420
    .end local v2    # "i":I
    :cond_1f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 393
    if-nez p0, :cond_4

    .line 394
    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 397
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2b

    .line 400
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 402
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 403
    const/16 v3, 0x2c

    goto :goto_25

    .line 404
    :cond_1d
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 405
    const/16 v3, 0x3b

    .line 407
    :cond_25
    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 409
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static convertSMSDestinationAddress(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .registers 24
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fixedNetwork"    # I

    .line 3674
    move-object/from16 v1, p1

    const-string v0, "011"

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3675
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 3677
    .local v3, "numberLength":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3678
    .local v5, "c":C
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v6

    const/16 v7, 0x2b

    const-string v8, "PhoneNumberUtils"

    if-nez v6, :cond_35

    if-ne v7, v5, :cond_1e

    goto :goto_35

    .line 3681
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS Destination Number might be email address"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    return-object v2

    .line 3679
    :cond_35
    :goto_35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS Destination Number is OK "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    :try_start_4b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    .line 3687
    .local v6, "subId":I
    const-string/jumbo v9, "phone"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v6}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v9

    .line 3688
    .local v9, "mdn":Ljava/lang/String;
    invoke-static {v6, v2, v9, v1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_63

    .line 3690
    return-object v2

    .line 3693
    :cond_63
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3695
    .local v10, "newPhoneNumber":Ljava/lang/StringBuilder;
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 3696
    .local v11, "numberBeginsWithOTAIDDPrefix":Z
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_79

    move v12, v13

    goto :goto_7a

    :cond_79
    move v12, v4

    .line 3697
    .local v12, "numberBeginsWithNonUSIDDPrefix":Z
    :goto_7a
    const/4 v14, 0x5

    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3699
    .local v14, "debugNumber":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS Destination numberLength: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " numberBeginsWithOTAIDDPrefix: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " numberBeginsWithNonUSIDDPrefix: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " otaCountryIDDPrefix: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v15, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " number : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "**********"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_c5} :catch_2f5

    .line 3706
    packed-switch p2, :pswitch_data_310

    goto :goto_e2

    .line 3720
    :pswitch_c9
    :try_start_c9
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 3721
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    goto :goto_e2

    .line 3715
    :pswitch_ce
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 3716
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 3717
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 3718
    goto :goto_e2

    .line 3710
    :pswitch_d5
    sput-boolean v13, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 3711
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 3712
    sput-boolean v4, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_db} :catch_dc

    .line 3713
    goto :goto_e2

    .line 3869
    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .end local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .end local v11    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v12    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v14    # "debugNumber":Ljava/lang/String;
    :catch_dc
    move-exception v0

    move/from16 v17, v3

    goto/16 :goto_2f8

    .line 3708
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    .restart local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .restart local v11    # "numberBeginsWithOTAIDDPrefix":Z
    .restart local v12    # "numberBeginsWithNonUSIDDPrefix":Z
    .restart local v14    # "debugNumber":Ljava/lang/String;
    :pswitch_e1
    nop

    .line 3728
    :goto_e2
    const/4 v7, 0x0

    .line 3730
    .local v7, "findIDDLen":I
    :try_start_e3
    sget-boolean v15, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e5} :catch_2f5

    const/16 v4, 0x31

    const/16 v13, 0xb

    if-eqz v15, :cond_1f3

    .line 3731
    :try_start_eb
    sget-boolean v15, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v15, :cond_119

    .line 3732
    const-string v15, "Address Rule in VZW Network"

    invoke-static {v8, v15}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v15

    if-eqz v15, :cond_113

    .line 3734
    if-eqz v12, :cond_113

    if-lt v3, v13, :cond_113

    if-ne v3, v13, :cond_102

    if-eq v4, v5, :cond_113

    .line 3735
    :cond_102
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_113

    .line 3736
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3738
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3743
    :cond_113
    const/4 v0, 0x1

    invoke-static {v2, v0, v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3745
    :cond_119
    const-string v15, "Address Rule in CDMA Internatinal Roaming"

    invoke-static {v8, v15}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v15

    if-nez v15, :cond_12f

    const/16 v15, 0x2b

    if-ne v15, v5, :cond_129

    goto :goto_12f

    :cond_129
    move/from16 v18, v6

    move-object/from16 v20, v9

    goto/16 :goto_1f7

    .line 3747
    :cond_12f
    :goto_12f
    if-lt v3, v13, :cond_1ee

    if-ne v3, v13, :cond_13c

    if-eq v4, v5, :cond_136

    goto :goto_13c

    :cond_136
    move/from16 v18, v6

    move-object/from16 v20, v9

    goto/16 :goto_1f7

    .line 3748
    :cond_13c
    :goto_13c
    add-int/lit8 v15, v3, -0xb

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 3749
    .local v15, "nanpStr":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "iddPrefix":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3751
    .local v18, "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v11, :cond_15b

    .line 3752
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v17, v19

    .line 3753
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_15d

    .line 3751
    :cond_15b
    move-object/from16 v4, v18

    .line 3756
    .end local v18    # "numberAfterIDDPrefix":Ljava/lang/String;
    .local v4, "numberAfterIDDPrefix":Ljava/lang/String;
    :goto_15d
    if-eqz v11, :cond_1a4

    .line 3757
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v7, v13

    .line 3758
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3760
    .local v13, "newStr":Ljava/lang/String;
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_180

    move/from16 v18, v6

    .end local v6    # "subId":I
    .local v18, "subId":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v20, v9

    .end local v9    # "mdn":Ljava/lang/String;
    .local v20, "mdn":Ljava/lang/String;
    add-int/lit8 v9, v7, 0xb

    if-ne v6, v9, :cond_184

    .line 3761
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19f

    .line 3760
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_180
    move/from16 v18, v6

    move-object/from16 v20, v9

    .line 3762
    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    :cond_184
    invoke-static {v4, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_197

    .line 3763
    const-string v6, "Found Country Code after IDD"

    invoke-static {v8, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3765
    const/4 v6, 0x0

    invoke-virtual {v10, v6, v7, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19f

    .line 3767
    :cond_197
    const-string v0, "No Condition"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3771
    :goto_19f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3774
    .end local v13    # "newStr":Ljava/lang/String;
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_1a4
    move/from16 v18, v6

    move-object/from16 v20, v9

    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    const/16 v6, 0x2b

    if-ne v6, v5, :cond_1dd

    .line 3775
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3777
    .local v6, "newStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v13, 0xc

    if-ne v9, v13, :cond_1c3

    .line 3778
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d8

    .line 3779
    :cond_1c3
    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    .line 3780
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3781
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d8

    .line 3783
    :cond_1d0
    const-string v0, "1NANP is not matched"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    :goto_1d8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3790
    .end local v6    # "newStr":Ljava/lang/String;
    :cond_1dd
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1f7

    .line 3791
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3792
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3793
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_1ed} :catch_dc

    return-object v0

    .line 3747
    .end local v4    # "numberAfterIDDPrefix":Ljava/lang/String;
    .end local v15    # "nanpStr":Ljava/lang/String;
    .end local v17    # "iddPrefix":Ljava/lang/String;
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .local v6, "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_1ee
    move/from16 v18, v6

    move-object/from16 v20, v9

    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    goto :goto_1f7

    .line 3730
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    .restart local v6    # "subId":I
    .restart local v9    # "mdn":Ljava/lang/String;
    :cond_1f3
    move/from16 v18, v6

    move-object/from16 v20, v9

    .line 3800
    .end local v6    # "subId":I
    .end local v9    # "mdn":Ljava/lang/String;
    .restart local v18    # "subId":I
    .restart local v20    # "mdn":Ljava/lang/String;
    :cond_1f7
    :goto_1f7
    :try_start_1f7
    sget-boolean v4, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v4, :cond_2eb

    .line 3801
    const-string v4, "Address Rule in GSM/UMTS"

    invoke-static {v8, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_20f

    const/16 v4, 0x2b

    if-ne v4, v5, :cond_20b

    goto :goto_20f

    :cond_20b
    move/from16 v17, v3

    goto/16 :goto_2ed

    .line 3804
    :cond_20f
    :goto_20f
    const/16 v4, 0xb

    if-lt v3, v4, :cond_2e8

    if-ne v3, v4, :cond_21e

    const/16 v4, 0x31

    if-eq v4, v5, :cond_21a

    goto :goto_21e

    :cond_21a
    move/from16 v17, v3

    goto/16 :goto_2ed

    .line 3805
    :cond_21e
    :goto_21e
    add-int/lit8 v4, v3, -0xb

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_224} :catch_2f5

    .line 3806
    .local v4, "nanpStr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "iddPrefix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3809
    .local v9, "numberAfterIDDPrefix":Ljava/lang/String;
    if-eqz v11, :cond_238

    .line 3810
    :try_start_228
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object v6, v13

    .line 3811
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_237} :catch_dc

    move-object v9, v13

    .line 3814
    :cond_238
    if-eqz v11, :cond_290

    .line 3817
    :try_start_23a
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move v7, v13

    .line 3818
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3820
    .restart local v13    # "newStr":Ljava/lang/String;
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_269

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_24f} :catch_2f5

    move/from16 v17, v3

    .end local v3    # "numberLength":I
    .local v17, "numberLength":I
    add-int/lit8 v3, v7, 0xb

    if-ne v15, v3, :cond_26b

    .line 3821
    :try_start_255
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3822
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "+"

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v0, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3820
    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :cond_269
    move/from16 v17, v3

    .line 3824
    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    :cond_26b
    invoke-static {v9, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_283

    .line 3825
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3826
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3827
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3829
    :cond_283
    const-string v0, "No condition is matched in IDD"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3836
    .end local v13    # "newStr":Ljava/lang/String;
    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :cond_290
    move/from16 v17, v3

    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    const/16 v3, 0x2b

    if-ne v3, v5, :cond_2d7

    .line 3837
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 3838
    .local v3, "iddStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2ae

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v15, 0xc

    if-ne v13, v15, :cond_2ae

    .line 3840
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d2

    .line 3841
    :cond_2ae
    invoke-static {v3, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2c0

    .line 3843
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3844
    .restart local v13    # "newStr":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3845
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d2

    .line 3846
    .end local v13    # "newStr":Ljava/lang/String;
    :cond_2c0
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ca

    .line 3847
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d2

    .line 3849
    :cond_2ca
    const-string v0, "No condition is matched in \'+\'"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3853
    :goto_2d2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3857
    .end local v3    # "iddStr":Ljava/lang/String;
    :cond_2d7
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2ed

    .line 3858
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3860
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3804
    .end local v4    # "nanpStr":Ljava/lang/String;
    .end local v6    # "iddPrefix":Ljava/lang/String;
    .end local v9    # "numberAfterIDDPrefix":Ljava/lang/String;
    .end local v17    # "numberLength":I
    .local v3, "numberLength":I
    :cond_2e8
    move/from16 v17, v3

    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    goto :goto_2ed

    .line 3800
    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :cond_2eb
    move/from16 v17, v3

    .line 3866
    .end local v3    # "numberLength":I
    .restart local v17    # "numberLength":I
    :cond_2ed
    :goto_2ed
    const-string v0, "Can\'t find any match in this number"

    invoke-static {v8, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_2f2} :catch_2f3

    .line 3867
    return-object v2

    .line 3869
    .end local v7    # "findIDDLen":I
    .end local v10    # "newPhoneNumber":Ljava/lang/StringBuilder;
    .end local v11    # "numberBeginsWithOTAIDDPrefix":Z
    .end local v12    # "numberBeginsWithNonUSIDDPrefix":Z
    .end local v14    # "debugNumber":Ljava/lang/String;
    .end local v18    # "subId":I
    .end local v20    # "mdn":Ljava/lang/String;
    :catch_2f3
    move-exception v0

    goto :goto_2f8

    .end local v17    # "numberLength":I
    .restart local v3    # "numberLength":I
    :catch_2f5
    move-exception v0

    move/from16 v17, v3

    .line 3870
    .end local v3    # "numberLength":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "numberLength":I
    :goto_2f8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot convert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    return-object v2

    nop

    :pswitch_data_310
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_d5
        :pswitch_ce
        :pswitch_c9
    .end packed-switch
.end method

.method public static convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p0, "source"    # Landroid/net/Uri;

    .line 2941
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2943
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2945
    return-object p0

    .line 2948
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2949
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2951
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1c

    .line 2953
    return-object p0

    .line 2955
    :cond_1c
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 2957
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static convertToEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 3401
    if-eqz p0, :cond_84

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_84

    .line 3405
    :cond_a
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3408
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3409
    return-object p1

    .line 3412
    :cond_15
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-nez v1, :cond_26

    .line 3413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    .line 3418
    :cond_26
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-eqz v1, :cond_83

    array-length v2, v1

    if-nez v2, :cond_2e

    goto :goto_83

    .line 3422
    :cond_2e
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_31
    if-ge v4, v2, :cond_82

    aget-object v5, v1, v4

    .line 3424
    .local v5, "convertMap":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3425
    .local v6, "entry":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 3426
    .local v7, "filterNumbers":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3427
    .local v8, "convertedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_44

    .line 3428
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3430
    :cond_44
    if-eqz v6, :cond_5d

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5d

    .line 3431
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 3432
    aget-object v9, v6, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5d

    .line 3433
    aget-object v9, v6, v3

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3437
    :cond_5d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7f

    if-eqz v7, :cond_7f

    array-length v9, v7

    if-nez v9, :cond_69

    .line 3439
    goto :goto_7f

    .line 3442
    :cond_69
    array-length v9, v7

    move v10, v3

    :goto_6b
    if-ge v10, v9, :cond_7f

    aget-object v11, v7, v10

    .line 3445
    .local v11, "filterNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7c

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 3448
    return-object v8

    .line 3442
    .end local v11    # "filterNumber":Ljava/lang/String;
    :cond_7c
    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    .line 3422
    .end local v5    # "convertMap":Ljava/lang/String;
    .end local v6    # "entry":[Ljava/lang/String;
    .end local v7    # "filterNumbers":[Ljava/lang/String;
    .end local v8    # "convertedNumber":Ljava/lang/String;
    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 3452
    :cond_82
    return-object p1

    .line 3419
    :cond_83
    :goto_83
    return-object p1

    .line 3402
    .end local v0    # "normalizedNumber":Ljava/lang/String;
    :cond_84
    :goto_84
    return-object p1
.end method

.method public static createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .registers 6
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .line 2746
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2747
    return-object v0

    .line 2751
    :cond_4
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2752
    .local v1, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 2757
    .local v2, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_9
    invoke-virtual {v1, p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_9 .. :try_end_d} :catch_f

    move-object v2, v0

    .line 2759
    goto :goto_10

    .line 2758
    :catch_f
    move-exception v0

    .line 2762
    :goto_10
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 2763
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v2, :cond_1f

    .line 2766
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_3b

    .line 2768
    :cond_1f
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2769
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2771
    :cond_30
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2773
    :goto_3b
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    return-object v3
.end method

.method public static createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 2683
    if-nez p0, :cond_4

    .line 2684
    const/4 v0, 0x0

    return-object v0

    .line 2686
    :cond_4
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 2687
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2688
    return-object v0
.end method

.method private static displayAssistedParams()V
    .registers 2

    .line 3981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), refCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryAreaCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryNationalNumberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGSMRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCDMARegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isNetRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), otaCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOTANANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3999
    return-void
.end method

.method public static docomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 3633
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3634
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 279
    if-nez p0, :cond_4

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 284
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_57

    .line 287
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 289
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 290
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 292
    :cond_21
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_43

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3f

    const-string v6, "*31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "#31#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 296
    :cond_3f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_42
    goto :goto_54

    :cond_43
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 299
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 300
    :cond_4d
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 301
    goto :goto_57

    .line 286
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 305
    .end local v2    # "i":I
    :cond_57
    :goto_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 319
    if-nez p0, :cond_4

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 324
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 325
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 327
    .local v2, "haveSeenPlus":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_31

    .line 328
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 329
    .local v4, "c":C
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1d

    .line 330
    if-eqz v2, :cond_1c

    .line 331
    goto :goto_2e

    .line 333
    :cond_1c
    const/4 v2, 0x1

    .line 335
    :cond_1d
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 336
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 337
    :cond_27
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 338
    goto :goto_31

    .line 327
    .end local v4    # "c":C
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 342
    .end local v3    # "i":I
    :cond_31
    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 462
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 469
    .local v1, "trimIndex":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 470
    .local v3, "s":I
    :goto_13
    if-ge v2, v3, :cond_25

    .line 472
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 473
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 474
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    .end local v4    # "c":C
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 478
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .param p0, "postDialStr"    # Ljava/lang/String;

    .line 3036
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 3037
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3038
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3039
    return v0

    .line 3036
    .end local v1    # "c":C
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3042
    .end local v0    # "index":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1590
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1591
    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .registers 17
    .param p0, "text"    # Landroid/text/Editable;

    .line 1650
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1653
    .local v1, "length":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1654
    .local v2, "lengthRemovedDash":I
    const/16 v3, 0xc

    if-le v2, v3, :cond_1e

    .line 1656
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1657
    return-void

    .line 1658
    :cond_1e
    const/4 v3, 0x2

    if-ge v1, v3, :cond_22

    .line 1660
    return-void

    .line 1663
    :cond_22
    const/4 v5, 0x5

    .line 1664
    .local v5, "state":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1666
    .local v6, "Digits":Ljava/lang/String;
    const/16 v7, 0x2d

    const/4 v8, 0x6

    if-ge v1, v8, :cond_49

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 1667
    const/4 v3, 0x0

    .line 1668
    .local v3, "p":I
    :goto_33
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 1669
    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_45

    .line 1670
    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_33

    .line 1672
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1675
    :cond_48
    return-void

    .line 1679
    .end local v3    # "p":I
    :cond_49
    const/4 v9, 0x0

    .line 1680
    .local v9, "p":I
    :goto_4a
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v9, v10, :cond_6a

    .line 1681
    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_64

    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_61

    goto :goto_64

    .line 1684
    :cond_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 1682
    :cond_64
    :goto_64
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_4a

    .line 1687
    :cond_6a
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-eq v1, v10, :cond_74

    .line 1688
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1690
    :cond_74
    const/4 v10, 0x1

    if-ge v1, v10, :cond_78

    return-void

    .line 1693
    :cond_78
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/4 v7, 0x4

    if-ne v12, v13, :cond_a4

    .line 1694
    if-ge v1, v3, :cond_87

    return-void

    .line 1695
    :cond_87
    invoke-interface {v0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x32

    if-ne v12, v13, :cond_92

    .line 1696
    const/4 v5, 0x6

    goto/16 :goto_11f

    .line 1698
    :cond_92
    if-ge v1, v15, :cond_95

    return-void

    .line 1699
    :cond_95
    const-string v12, "050"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a1

    .line 1700
    const/16 v5, 0xe

    goto/16 :goto_11f

    .line 1702
    :cond_a1
    const/4 v5, 0x7

    goto/16 :goto_11f

    .line 1705
    :cond_a4
    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2a

    if-ne v12, v13, :cond_dd

    .line 1706
    if-ge v1, v7, :cond_af

    return-void

    .line 1707
    :cond_af
    const-string v12, "*23#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d7

    const-string v12, "*22#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d7

    const-string v12, "*31#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c8

    goto :goto_d7

    .line 1710
    :cond_c8
    const-string v12, "*230#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d6

    .line 1711
    if-le v1, v8, :cond_d3

    return-void

    .line 1712
    :cond_d3
    const/16 v5, 0xb

    goto :goto_11f

    .line 1715
    :cond_d6
    return-void

    .line 1708
    :cond_d7
    :goto_d7
    if-le v1, v14, :cond_da

    return-void

    .line 1709
    :cond_da
    const/16 v5, 0xa

    goto :goto_11f

    .line 1717
    :cond_dd
    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    if-ne v12, v13, :cond_105

    .line 1718
    if-ge v1, v3, :cond_e8

    return-void

    .line 1719
    :cond_e8
    invoke-interface {v0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x39

    if-ne v12, v13, :cond_f6

    .line 1720
    if-le v1, v15, :cond_f3

    return-void

    .line 1721
    :cond_f3
    const/16 v5, 0x8

    goto :goto_11f

    .line 1722
    :cond_f6
    const-string v12, "#31#"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_104

    .line 1723
    if-le v1, v14, :cond_101

    return-void

    .line 1724
    :cond_101
    const/16 v5, 0xa

    goto :goto_11f

    .line 1727
    :cond_104
    return-void

    .line 1729
    :cond_105
    invoke-interface {v0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2b

    const/16 v15, 0xe

    if-ne v12, v13, :cond_118

    .line 1730
    if-lt v1, v8, :cond_117

    if-le v1, v15, :cond_114

    goto :goto_117

    .line 1731
    :cond_114
    const/16 v5, 0x9

    goto :goto_11f

    .line 1730
    :cond_117
    :goto_117
    return-void

    .line 1733
    :cond_118
    if-lt v1, v14, :cond_21f

    if-le v1, v15, :cond_11e

    goto/16 :goto_21f

    .line 1734
    :cond_11e
    const/4 v5, 0x5

    .line 1738
    :goto_11f
    invoke-interface {v0, v11, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1740
    .local v12, "saved":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 1741
    :goto_124
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v13

    if-ge v9, v13, :cond_13b

    .line 1742
    invoke-interface {v0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    const/16 v15, 0x2d

    if-ne v13, v15, :cond_138

    .line 1743
    add-int/lit8 v13, v9, 0x1

    invoke-interface {v0, v9, v13}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_124

    .line 1745
    :cond_138
    add-int/lit8 v9, v9, 0x1

    goto :goto_124

    .line 1749
    :cond_13b
    invoke-interface/range {p0 .. p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1751
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "3003003000"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_151

    .line 1752
    const-string v3, "300-300-3000"

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1753
    return-void

    .line 1759
    :cond_151
    new-array v13, v3, [I

    .line 1760
    .local v13, "dashPositions":[I
    const/4 v15, 0x0

    .line 1763
    .local v15, "numDashes":I
    const/16 v8, 0x8

    packed-switch v5, :pswitch_data_220

    .line 1878
    :pswitch_159
    invoke-interface {v0, v11, v1, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1879
    return-void

    .line 1785
    :pswitch_15d
    if-gt v1, v7, :cond_162

    .line 1786
    const/4 v15, 0x0

    .line 1787
    goto/16 :goto_205

    .line 1788
    :cond_162
    if-gt v1, v8, :cond_169

    .line 1789
    aput v7, v13, v11

    .line 1790
    const/4 v15, 0x1

    .line 1791
    goto/16 :goto_205

    .line 1792
    :cond_169
    const/16 v3, 0xb

    if-le v1, v8, :cond_178

    if-gt v1, v3, :cond_178

    .line 1793
    aput v7, v13, v11

    .line 1794
    add-int/lit8 v3, v1, -0x4

    aput v3, v13, v10

    .line 1795
    const/4 v15, 0x2

    .line 1796
    goto/16 :goto_205

    .line 1797
    :cond_178
    if-le v1, v3, :cond_205

    .line 1798
    aput v7, v13, v11

    .line 1799
    aput v8, v13, v10

    .line 1800
    const/4 v15, 0x2

    goto/16 :goto_205

    .line 1843
    :pswitch_181
    if-gt v1, v14, :cond_186

    .line 1844
    const/4 v15, 0x0

    goto/16 :goto_205

    .line 1846
    :cond_186
    aput v14, v13, v11

    .line 1847
    const/4 v15, 0x1

    .line 1849
    goto/16 :goto_205

    .line 1834
    :pswitch_18b
    if-gt v1, v7, :cond_190

    .line 1835
    const/4 v15, 0x0

    goto/16 :goto_205

    .line 1837
    :cond_190
    aput v7, v13, v11

    .line 1838
    const/4 v15, 0x1

    .line 1840
    goto/16 :goto_205

    .line 1852
    :pswitch_195
    if-gt v1, v8, :cond_19e

    .line 1853
    add-int/lit8 v3, v1, -0x4

    aput v3, v13, v11

    .line 1854
    const/4 v15, 0x1

    .line 1855
    goto/16 :goto_205

    .line 1856
    :cond_19e
    if-le v1, v8, :cond_205

    .line 1857
    aput v7, v13, v11

    .line 1858
    const/4 v15, 0x1

    goto/16 :goto_205

    .line 1825
    :pswitch_1a5
    if-gt v1, v3, :cond_1aa

    .line 1826
    const/4 v15, 0x0

    goto/16 :goto_205

    .line 1828
    :cond_1aa
    aput v3, v13, v11

    .line 1829
    const/4 v15, 0x1

    .line 1831
    goto :goto_205

    .line 1765
    :pswitch_1ae
    const/4 v3, 0x3

    if-gt v1, v3, :cond_1b3

    .line 1766
    const/4 v15, 0x0

    .line 1767
    goto :goto_205

    .line 1768
    :cond_1b3
    const/4 v7, 0x7

    if-gt v1, v7, :cond_1ba

    .line 1769
    aput v3, v13, v11

    .line 1770
    const/4 v15, 0x1

    .line 1771
    goto :goto_205

    .line 1772
    :cond_1ba
    const/16 v8, 0xa

    if-le v1, v7, :cond_1c8

    if-gt v1, v8, :cond_1c8

    .line 1773
    aput v3, v13, v11

    .line 1774
    add-int/lit8 v3, v1, -0x4

    aput v3, v13, v10

    .line 1775
    const/4 v15, 0x2

    .line 1776
    goto :goto_205

    .line 1777
    :cond_1c8
    if-le v1, v8, :cond_205

    .line 1778
    const/4 v3, 0x3

    aput v3, v13, v11

    .line 1779
    const/4 v3, 0x7

    aput v3, v13, v10

    .line 1780
    const/4 v15, 0x2

    goto :goto_205

    .line 1805
    :pswitch_1d2
    if-gt v1, v3, :cond_1d6

    .line 1806
    const/4 v15, 0x0

    .line 1807
    goto :goto_205

    .line 1808
    :cond_1d6
    const/4 v7, 0x6

    if-gt v1, v7, :cond_1dd

    .line 1809
    aput v3, v13, v11

    .line 1810
    const/4 v15, 0x1

    .line 1811
    goto :goto_205

    .line 1812
    :cond_1dd
    const/16 v8, 0x9

    if-le v1, v7, :cond_1eb

    if-gt v1, v8, :cond_1eb

    .line 1813
    aput v3, v13, v11

    .line 1814
    add-int/lit8 v3, v1, -0x4

    aput v3, v13, v10

    .line 1815
    const/4 v15, 0x2

    .line 1816
    goto :goto_205

    .line 1817
    :cond_1eb
    if-le v1, v8, :cond_205

    .line 1818
    aput v3, v13, v11

    .line 1819
    const/4 v3, 0x6

    aput v3, v13, v10

    .line 1820
    const/4 v15, 0x2

    goto :goto_205

    .line 1863
    :pswitch_1f4
    const/4 v3, 0x3

    if-gt v1, v3, :cond_1f9

    .line 1864
    const/4 v15, 0x0

    .line 1865
    goto :goto_205

    .line 1866
    :cond_1f9
    const/4 v8, 0x7

    if-gt v1, v8, :cond_200

    .line 1867
    aput v3, v13, v11

    .line 1868
    const/4 v15, 0x1

    .line 1869
    goto :goto_205

    .line 1870
    :cond_200
    if-le v1, v8, :cond_205

    .line 1871
    aput v7, v13, v11

    .line 1872
    const/4 v15, 0x1

    .line 1883
    :cond_205
    :goto_205
    if-eqz v15, :cond_21e

    .line 1884
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_208
    if-ge v3, v15, :cond_21e

    .line 1885
    aget v7, v13, v3

    .line 1886
    .local v7, "pos":I
    add-int v8, v7, v3

    if-ltz v8, :cond_21b

    add-int v8, v7, v3

    if-gt v8, v1, :cond_21b

    .line 1887
    add-int v8, v7, v3

    add-int v10, v7, v3

    invoke-interface {v0, v8, v10, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1884
    .end local v7    # "pos":I
    :cond_21b
    add-int/lit8 v3, v3, 0x1

    goto :goto_208

    .line 1891
    .end local v3    # "i":I
    :cond_21e
    return-void

    .line 1733
    .end local v12    # "saved":Ljava/lang/CharSequence;
    .end local v13    # "dashPositions":[I
    .end local v15    # "numDashes":I
    :cond_21f
    :goto_21f
    return-void

    :pswitch_data_220
    .packed-switch 0x5
        :pswitch_1f4
        :pswitch_1d2
        :pswitch_1ae
        :pswitch_1a5
        :pswitch_195
        :pswitch_18b
        :pswitch_181
        :pswitch_159
        :pswitch_159
        :pswitch_15d
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 12
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1474
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1475
    .local v0, "length":I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 1477
    return-void

    .line 1478
    :cond_d
    const/4 v1, 0x5

    if-gt v0, v1, :cond_11

    .line 1480
    return-void

    .line 1483
    :cond_11
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1486
    .local v2, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1487
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1492
    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 1493
    .local v4, "dashPositions":[I
    const/4 v5, 0x0

    .line 1495
    .local v5, "numDashes":I
    const/4 v6, 0x1

    .line 1496
    .local v6, "state":I
    const/4 v7, 0x0

    .line 1497
    .local v7, "numDigits":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    if-ge v8, v0, :cond_61

    .line 1498
    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    .line 1499
    .local v9, "c":C
    const/4 v10, 0x2

    packed-switch v9, :pswitch_data_90

    :pswitch_2e
    goto :goto_5d

    .line 1501
    :pswitch_2f
    if-eqz v7, :cond_33

    if-ne v6, v10, :cond_35

    .line 1502
    :cond_33
    const/4 v6, 0x3

    .line 1503
    goto :goto_5a

    .line 1515
    :cond_35
    :pswitch_35
    if-ne v6, v10, :cond_3b

    .line 1517
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1518
    return-void

    .line 1519
    :cond_3b
    if-ne v6, v3, :cond_43

    .line 1521
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .local v10, "numDashes":I
    aput v8, v4, v5

    move v5, v10

    goto :goto_50

    .line 1522
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_43
    const/4 v10, 0x4

    if-eq v6, v10, :cond_50

    if-eq v7, v3, :cond_4b

    const/4 v10, 0x6

    if-ne v7, v10, :cond_50

    .line 1524
    :cond_4b
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v10    # "numDashes":I
    aput v8, v4, v5

    move v5, v10

    .line 1526
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_50
    :goto_50
    const/4 v6, 0x1

    .line 1527
    add-int/lit8 v7, v7, 0x1

    .line 1528
    goto :goto_5a

    .line 1531
    :pswitch_54
    const/4 v6, 0x4

    .line 1532
    goto :goto_5a

    .line 1535
    :pswitch_56
    if-nez v8, :cond_5d

    .line 1537
    const/4 v6, 0x2

    .line 1538
    nop

    .line 1497
    .end local v9    # "c":C
    :goto_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 1543
    .restart local v9    # "c":C
    :cond_5d
    :goto_5d
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1544
    return-void

    .line 1548
    .end local v8    # "i":I
    .end local v9    # "c":C
    :cond_61
    const/4 v1, 0x7

    if-ne v7, v1, :cond_66

    .line 1550
    add-int/lit8 v5, v5, -0x1

    .line 1554
    :cond_66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_67
    if-ge v1, v5, :cond_77

    .line 1555
    aget v3, v4, v1

    .line 1556
    .local v3, "pos":I
    add-int v8, v3, v1

    add-int v9, v3, v1

    const-string v10, "-"

    invoke-interface {p0, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1554
    .end local v3    # "pos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 1560
    .end local v1    # "i":I
    :cond_77
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1561
    .local v1, "len":I
    :goto_7b
    if-lez v1, :cond_8f

    .line 1562
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_8f

    .line 1563
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1564
    add-int/lit8 v1, v1, -0x1

    goto :goto_7b

    .line 1569
    :cond_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x2b
        :pswitch_56
        :pswitch_2e
        :pswitch_54
        :pswitch_2e
        :pswitch_2e
        :pswitch_35
        :pswitch_2f
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1360
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1361
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1362
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1380
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1381
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1382
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 2015
    const-string v0, "JP"

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f6

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_f6

    .line 2019
    :cond_14
    if-eqz p1, :cond_1c

    .line 2020
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2023
    :cond_1c
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2024
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 2026
    .local v2, "result":Ljava/lang/String;
    const-string v3, "KOR"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v3

    const-string v5, "KR"

    if-eqz v3, :cond_a4

    .line 2027
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    .line 2028
    .local v0, "networkCountryIso":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 2030
    .local v3, "locale":Ljava/util/Locale;
    const-string v4, "+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 2031
    const-string/jumbo v4, "ko"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    const-string v4, "050"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string/jumbo v4, "kr"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    goto :goto_6f

    .line 2035
    :cond_63
    :try_start_63
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 2036
    .local v4, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6b
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_63 .. :try_end_6b} :catch_6d

    move-object v2, v5

    .line 2038
    .end local v4    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_6c
    goto :goto_a3

    .line 2037
    :catch_6d
    move-exception v4

    goto :goto_6c

    .line 2032
    :cond_6f
    :goto_6f
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a3

    .line 2042
    :cond_78
    :try_start_78
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 2048
    .restart local v4    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 2049
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-virtual {v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    if-ne v6, v5, :cond_9c

    .line 2050
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v5

    sget-object v6, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v5, v6, :cond_9c

    .line 2051
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v4, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_a1

    .line 2053
    :cond_9c
    invoke-virtual {v1, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_a0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_78 .. :try_end_a0} :catch_a2

    move-object v2, v5

    .line 2056
    .end local v4    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_a1
    goto :goto_a3

    .line 2055
    :catch_a2
    move-exception v4

    .line 2058
    :goto_a3
    return-object v2

    .line 2063
    .end local v0    # "networkCountryIso":Ljava/lang/String;
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_a4
    :try_start_a4
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 2065
    .local v3, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 2066
    if-eqz v2, :cond_b0

    .line 2067
    return-object v2

    .line 2071
    :cond_b0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 2072
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-virtual {v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_cf

    .line 2073
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v4, v5, :cond_cf

    .line 2080
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto :goto_f2

    .line 2081
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_cf
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 2082
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_ee

    .line 2083
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v0, v4, :cond_ee

    .line 2089
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_f2

    .line 2091
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_ee
    invoke-virtual {v1, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f2
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_a4 .. :try_end_f2} :catch_f3

    .line 2094
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v0    # "result":Ljava/lang/String;
    :goto_f2
    goto :goto_f5

    .line 2093
    .end local v0    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_f3
    move-exception v0

    move-object v0, v2

    .line 2095
    .end local v2    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :goto_f5
    return-object v0

    .line 2016
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :cond_f6
    :goto_f6
    return-object p0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 2118
    if-eqz p2, :cond_8

    .line 2119
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2122
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2123
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 2124
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2125
    return-object p0

    .line 2123
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2128
    .end local v1    # "i":I
    :cond_1d
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2130
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_55

    .line 2131
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_55

    .line 2135
    :try_start_33
    const-string v2, "ZZ"

    invoke-virtual {v1, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2136
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2137
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 2139
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_50
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_33 .. :try_end_50} :catch_54

    if-gtz v4, :cond_53

    .line 2140
    move-object p2, v3

    .line 2143
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_53
    goto :goto_55

    .line 2142
    :catch_54
    move-exception v2

    .line 2145
    :cond_55
    :goto_55
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2146
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_5d

    move-object v3, v2

    goto :goto_5e

    :cond_5d
    move-object v3, p0

    :goto_5e
    return-object v3
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 11
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1413
    move v0, p1

    .line 1415
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "KOR"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v1, v4, :cond_57

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v5, 0x2b

    if-ne v1, v5, :cond_57

    .line 1416
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1e

    .line 1417
    const/4 v0, 0x1

    goto :goto_57

    .line 1418
    :cond_1e
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    const/16 v7, 0x38

    const/4 v8, 0x3

    if-lt v5, v8, :cond_35

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_35

    .line 1419
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_35

    .line 1420
    const/4 v0, 0x2

    goto :goto_57

    .line 1422
    :cond_35
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1423
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    if-lt v5, v8, :cond_56

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_56

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v4, 0x32

    if-ne v1, v4, :cond_56

    .line 1424
    const/16 v0, 0x52

    goto :goto_57

    .line 1427
    :cond_56
    const/4 v0, 0x0

    .line 1431
    :cond_57
    :goto_57
    sparse-switch v0, :sswitch_data_76

    .line 1449
    return-void

    .line 1440
    :sswitch_5b
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1441
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatKRnpNumber(Landroid/text/Editable;)V

    .line 1443
    :cond_68
    return-void

    .line 1436
    :sswitch_69
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 1437
    return-void

    .line 1433
    :sswitch_6d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 1434
    return-void

    .line 1446
    :sswitch_71
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1447
    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_71
        0x1 -> :sswitch_6d
        0x2 -> :sswitch_69
        0x52 -> :sswitch_5b
    .end sparse-switch
.end method

.method private static formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 6
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1956
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1958
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_4
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1959
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1960
    invoke-virtual {v0, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_4 .. :try_end_12} :catch_14

    return-object v2

    .line 1959
    .end local v1    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_13
    goto :goto_15

    .line 1962
    :catch_14
    move-exception v1

    :goto_15
    nop

    .line 1964
    const/4 v1, 0x0

    return-object v1
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1918
    if-eqz p1, :cond_8

    .line 1919
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1922
    :cond_8
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1933
    if-eqz p1, :cond_8

    .line 1934
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1937
    :cond_8
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .registers 4
    .param p0, "useNanp"    # Z

    .line 2792
    const/4 v0, 0x0

    .line 2793
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 2794
    const-string v0, "011"

    goto :goto_13

    .line 2797
    :cond_6
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_idp_string()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2799
    :goto_13
    return-object v0
.end method

.method private static getDefaultVoiceSubId()I
    .registers 1

    .line 3380
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1396
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 5
    .param p0, "country"    # Ljava/lang/String;

    .line 2812
    const-string v0, "KOR"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2813
    const-string v0, "KR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 2814
    const/16 v0, 0x52

    return v0

    .line 2819
    :cond_18
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 2820
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v0, :cond_2d

    .line 2821
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a

    .line 2822
    const/4 v1, 0x1

    return v1

    .line 2820
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2825
    .end local v2    # "i":I
    :cond_2d
    const-string/jumbo v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_38

    .line 2826
    const/4 v1, 0x2

    return v1

    .line 2828
    :cond_38
    return v1
.end method

.method private static getMinMatch()I
    .registers 2

    .line 176
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    if-nez v0, :cond_11

    .line 177
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 180
    :cond_11
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    return v0
.end method

.method public static getMinMatchForTest()I
    .registers 1

    .line 189
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v0

    return v0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 219
    .local v7, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v7, :cond_9

    .line 220
    return-object v1

    .line 223
    :cond_9
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "scheme":Ljava/lang/String;
    if-nez v8, :cond_10

    .line 225
    return-object v1

    .line 228
    :cond_10
    const-string/jumbo v2, "tel"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string/jumbo v2, "sip"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_88

    .line 232
    :cond_24
    if-nez p1, :cond_27

    .line 233
    return-object v1

    .line 236
    :cond_27
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 237
    .local v9, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 240
    .local v1, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "authority":Ljava/lang/String;
    const-string v2, "contacts"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 242
    const-string/jumbo v1, "number"

    move-object v11, v1

    goto :goto_4a

    .line 243
    :cond_3d
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 244
    const-string v1, "data1"

    move-object v11, v1

    goto :goto_4a

    .line 243
    :cond_49
    move-object v11, v1

    .line 247
    .end local v1    # "phoneColumn":Ljava/lang/String;
    .local v11, "phoneColumn":Ljava/lang/String;
    :goto_4a
    const/4 v12, 0x0

    .line 249
    .local v12, "c":Landroid/database/Cursor;
    :try_start_4b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v12, v1

    .line 251
    if-eqz v12, :cond_6d

    .line 252
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 253
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_6c} :catch_75
    .catchall {:try_start_4b .. :try_end_6c} :catchall_73

    move-object v0, v1

    .line 259
    :cond_6d
    if-eqz v12, :cond_81

    .line 260
    :goto_6f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_81

    .line 259
    :catchall_73
    move-exception v1

    goto :goto_82

    .line 256
    :catch_75
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_76
    const-string v2, "PhoneNumberUtils"

    const-string v3, "Error getting phone number."

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_73

    .line 259
    nop

    .end local v1    # "e":Ljava/lang/RuntimeException;
    if-eqz v12, :cond_81

    .line 260
    goto :goto_6f

    .line 264
    :cond_81
    :goto_81
    return-object v0

    .line 259
    :goto_82
    if-eqz v12, :cond_87

    .line 260
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_87
    throw v1

    .line 229
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "phoneColumn":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_88
    :goto_88
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getOtaCountry(ILandroid/content/Context;Z)Landroid/database/Cursor;
    .registers 13
    .param p0, "subId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useSharedPreference"    # Z

    .line 4008
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4009
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "otaCountryMccKey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4011
    .local v1, "spOtaCountryMcc":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 4012
    .local v8, "otacr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 4014
    .local v9, "c":Landroid/database/Cursor;
    if-eqz p2, :cond_27

    if-nez v1, :cond_16

    goto :goto_27

    .line 4017
    :cond_16
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "mcc=?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .end local v9    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    goto :goto_42

    .line 4015
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v9    # "c":Landroid/database/Cursor;
    :cond_27
    :goto_27
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4020
    .end local v9    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    :goto_42
    return-object v2
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 840
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 844
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2906
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2907
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_e

    .line 2908
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2910
    :cond_e
    if-gez v0, :cond_33

    .line 2911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2915
    :cond_33
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .param p0, "a"    # Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 440
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 441
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 443
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 445
    .local v3, "trimIndex":I
    if-gez v3, :cond_19

    .line 446
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 448
    :cond_19
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V
    .registers 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bcdExtType"    # I

    .line 1042
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p3, p2

    if-ge v0, v1, :cond_31

    .line 1046
    aget-byte v1, p1, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v1, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1048
    .local v1, "c":C
    if-nez v1, :cond_12

    .line 1049
    return-void

    .line 1051
    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1060
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1062
    .local v3, "b":B
    if-ne v3, v2, :cond_24

    add-int/lit8 v2, v0, 0x1

    add-int v4, p3, p2

    if-ne v2, v4, :cond_24

    .line 1064
    goto :goto_31

    .line 1067
    :cond_24
    invoke-static {v3, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1068
    if-nez v1, :cond_2b

    .line 1069
    return-void

    .line 1072
    :cond_2b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1042
    .end local v1    # "c":C
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1075
    .end local v0    # "i":I
    :cond_31
    :goto_31
    return-void
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .line 853
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 855
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 856
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 858
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    move v3, v1

    .line 859
    .local v3, "s":I
    :goto_10
    if-ltz v2, :cond_20

    sub-int v4, v3, v2

    if-gt v4, p1, :cond_20

    .line 861
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 863
    .local v4, "c":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    .end local v4    # "c":C
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 866
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final is12Key(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 133
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_13

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_13

    const/16 v0, 0x23

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .param p0, "countryCallingCodeCandidate"    # I

    .line 3210
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final isDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 139
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_1b

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 1165
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1167
    const/4 v2, 0x0

    return v2

    .line 1165
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1170
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2236
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2214
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;)Z
    .registers 5
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2269
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 2270
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->needToCheckEmergencyNumberForEachSlot(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2271
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 2274
    :cond_17
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1f} :catch_20

    return v1

    .line 2275
    .end local v0    # "phoneId":I
    :catch_20
    move-exception v0

    .line 2276
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergencyNumberInternal: RuntimeException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1157
    const/4 v0, 0x0

    return v0

    .line 1160
    :cond_8
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1161
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isISODigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 127
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1978
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1979
    return v1

    .line 1983
    :cond_8
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_37

    .line 1987
    :cond_19
    if-eqz p1, :cond_21

    .line 1988
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1991
    :cond_21
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1993
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_25
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1994
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4
    :try_end_31
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_25 .. :try_end_31} :catch_35

    if-eq v3, v4, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1

    .line 1995
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_35
    move-exception v2

    .line 1996
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1

    .line 1984
    .end local v0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_37
    :goto_37
    return v1
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2294
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2838
    const/4 v0, 0x0

    .line 2839
    .local v0, "retVal":Z
    if-eqz p0, :cond_35

    .line 2840
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3b

    .line 2841
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2842
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2843
    const/4 v0, 0x1

    .line 2844
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    if-ge v1, v2, :cond_34

    .line 2845
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2846
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_31

    .line 2847
    const/4 v0, 0x0

    .line 2848
    goto :goto_34

    .line 2844
    .end local v3    # "c":C
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .end local v1    # "i":I
    :cond_34
    :goto_34
    goto :goto_3b

    .line 2854
    :cond_35
    const-string/jumbo v1, "isNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_3b
    :goto_3b
    return v0
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 151
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x23

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 1174
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1175
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1176
    const/4 v2, 0x0

    return v2

    .line 1174
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1179
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2863
    const/4 v0, 0x0

    .line 2864
    .local v0, "retVal":Z
    if-eqz p0, :cond_19

    .line 2865
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2866
    .local v1, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2867
    const/4 v0, 0x1

    .line 2869
    .end local v1    # "newDialStr":Ljava/lang/String;
    :cond_18
    goto :goto_1f

    .line 2870
    :cond_19
    const-string/jumbo v1, "isOneNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :goto_1f
    return v0
.end method

.method private static isPause(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 165
    const/16 v0, 0x70

    if-eq p0, v0, :cond_b

    const/16 v0, 0x50

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 145
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_17

    const/16 v0, 0x23

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private static isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 203
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 160
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_b

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isToneWait(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 170
    const/16 v0, 0x77

    if-eq p0, v0, :cond_b

    const/16 v0, 0x57

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 2803
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2804
    const/4 v0, 0x1

    return v0

    .line 2806
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2889
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2324
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2346
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 2347
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    goto :goto_c

    .line 2350
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2353
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_c
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 2354
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_14} :catch_51

    move-object v1, v3

    .line 2360
    .local v1, "mdn":Ljava/lang/String;
    nop

    .line 2363
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2364
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2366
    return v0

    .line 2370
    :cond_21
    const/4 v3, 0x0

    .line 2371
    .local v3, "compareWithMdn":Z
    if-eqz p0, :cond_3c

    .line 2372
    nop

    .line 2373
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 2374
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v4, :cond_3c

    .line 2375
    invoke-virtual {v4, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2376
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_3c

    .line 2377
    const-string/jumbo v6, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2384
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "b":Landroid/os/PersistableBundle;
    :cond_3c
    if-eqz v3, :cond_4c

    .line 2386
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-static {p2, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_4a
    const/4 v0, 0x1

    :cond_4b
    return v0

    .line 2389
    :cond_4c
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2357
    .end local v1    # "mdn":Ljava/lang/String;
    .end local v2    # "vmNumber":Ljava/lang/String;
    .end local v3    # "compareWithMdn":Z
    :catch_51
    move-exception v1

    .line 2359
    .local v1, "ex":Ljava/lang/SecurityException;
    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 2308
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 1147
    nop

    .line 1148
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1152
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 1150
    :goto_1c
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 427
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 3083
    const/4 v0, 0x0

    .line 3084
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p1, :cond_45

    .line 3085
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3087
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_50

    .line 3106
    :pswitch_10
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 3101
    :pswitch_17
    if-ne v3, v4, :cond_1b

    const/4 v0, 0x5

    goto :goto_42

    .line 3102
    :cond_1b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 3095
    :pswitch_22
    if-ne v3, v5, :cond_26

    const/4 v0, 0x3

    goto :goto_42

    .line 3096
    :cond_26
    if-ne v3, v4, :cond_2a

    const/4 v0, 0x4

    goto :goto_42

    .line 3097
    :cond_2a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 3089
    :pswitch_31
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_37

    const/4 v0, 0x1

    goto :goto_42

    .line 3090
    :cond_37
    if-ne v3, v5, :cond_3b

    const/4 v0, 0x2

    goto :goto_42

    .line 3091
    :cond_3b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 3084
    .end local v3    # "c":C
    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3112
    .end local v1    # "i":I
    :cond_45
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4e

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4f

    :cond_4e
    move v2, v1

    :cond_4f
    return v2

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_31
        :pswitch_10
        :pswitch_22
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 3122
    const/4 v0, 0x0

    .line 3123
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p1, :cond_64

    .line 3124
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3126
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_70

    .line 3158
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 3153
    :pswitch_17
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 3154
    :cond_20
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 3140
    :pswitch_27
    if-ne v3, v4, :cond_2b

    const/4 v0, 0x5

    goto :goto_61

    .line 3141
    :cond_2b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 3134
    :pswitch_32
    if-ne v3, v5, :cond_36

    const/4 v0, 0x3

    goto :goto_61

    .line 3135
    :cond_36
    if-ne v3, v4, :cond_3a

    const/4 v0, 0x4

    goto :goto_61

    .line 3136
    :cond_3a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 3147
    :pswitch_41
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v0, 0x6

    goto :goto_61

    .line 3148
    :cond_49
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 3128
    :pswitch_50
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_56

    const/4 v0, 0x1

    goto :goto_61

    .line 3129
    :cond_56
    if-ne v3, v5, :cond_5a

    const/4 v0, 0x2

    goto :goto_61

    .line 3130
    :cond_5a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 3123
    .end local v3    # "c":C
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3162
    .end local v1    # "i":I
    :cond_64
    const/4 v1, 0x6

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6e

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6f

    :cond_6e
    const/4 v2, 0x1

    :cond_6f
    return v2

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_50
        :pswitch_41
        :pswitch_32
        :pswitch_41
        :pswitch_27
        :pswitch_41
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 3170
    const/4 v0, 0x0

    .line 3172
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_1b

    .line 3173
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3175
    .local v2, "c":C
    const/16 v3, 0x30

    if-ne v2, v3, :cond_10

    if-nez v0, :cond_10

    .line 3176
    const/4 v0, 0x1

    goto :goto_18

    .line 3177
    :cond_10
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3178
    const/4 v3, 0x0

    return v3

    .line 3172
    .end local v2    # "c":C
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3182
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method private static minPositive(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 415
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 416
    if-ge p0, p1, :cond_8

    move v0, p0

    goto :goto_9

    :cond_8
    move v0, p1

    :goto_9
    return v0

    .line 417
    :cond_a
    if-ltz p0, :cond_d

    .line 418
    return p0

    .line 419
    :cond_d
    if-ltz p1, :cond_10

    .line 420
    return p1

    .line 422
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1188
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1198
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 2158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2159
    const-string v0, ""

    return-object v0

    .line 2162
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2163
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2164
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_5c

    .line 2165
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2167
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 2168
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 2169
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 2170
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_34

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_34

    .line 2171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 2173
    :cond_34
    const/16 v5, 0x2a

    if-eq v3, v5, :cond_56

    const/16 v5, 0x23

    if-ne v3, v5, :cond_3d

    goto :goto_56

    .line 2176
    :cond_3d
    const/16 v5, 0x61

    if-lt v3, v5, :cond_45

    const/16 v5, 0x7a

    if-le v3, v5, :cond_4d

    :cond_45
    const/16 v5, 0x41

    if-lt v3, v5, :cond_59

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_59

    .line 2177
    :cond_4d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2174
    :cond_56
    :goto_56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2164
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2180
    .end local v2    # "i":I
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1217
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;I)[B
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "bcdExtType"    # I

    .line 1232
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B
    .registers 22
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z
    .param p2, "bcdExtType"    # I

    .line 1242
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1243
    return-object v1

    .line 1245
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1246
    .local v2, "numberLenReal":I
    move v0, v2

    .line 1247
    .local v0, "numberLenEffective":I
    const/16 v3, 0x2b

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v5, v7, :cond_1b

    move v5, v8

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 1248
    .local v5, "hasPlus":Z
    :goto_1c
    if-eqz v5, :cond_20

    add-int/lit8 v0, v0, -0x1

    :cond_20
    move v7, v0

    .line 1250
    .end local v0    # "numberLenEffective":I
    .local v7, "numberLenEffective":I
    if-nez v7, :cond_24

    return-object v1

    .line 1252
    :cond_24
    add-int/lit8 v0, v7, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 1253
    .local v0, "resultLen":I
    const/4 v9, 0x1

    .line 1254
    .local v9, "extraBytes":I
    if-eqz p1, :cond_2d

    add-int/lit8 v9, v9, 0x1

    .line 1255
    :cond_2d
    add-int v10, v0, v9

    .line 1257
    .end local v0    # "resultLen":I
    .local v10, "resultLen":I
    new-array v11, v10, [B

    .line 1260
    .local v11, "result":[B
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1261
    .local v12, "numbertoBCD":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1263
    const/4 v0, 0x0

    .line 1264
    .local v0, "digitCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3d
    :try_start_3d
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_70

    .line 1265
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1272
    .local v14, "c":C
    if-ne v14, v3, :cond_4c

    move/from16 v3, p2

    goto :goto_6b

    .line 1273
    :cond_4c
    and-int/lit8 v15, v0, 0x1

    if-ne v15, v8, :cond_52

    const/4 v15, 0x4

    goto :goto_53

    :cond_52
    const/4 v15, 0x0

    .line 1274
    .local v15, "shift":I
    :goto_53
    shr-int/lit8 v16, v0, 0x1

    add-int v16, v9, v16

    aget-byte v17, v11, v16
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_59} :catch_9a

    .line 1275
    move/from16 v3, p2

    :try_start_5b
    invoke-static {v14, v3}, Landroid/telephony/PhoneNumberUtils;->charToBCD(CI)I

    move-result v18

    and-int/lit8 v18, v18, 0xf

    shl-int v6, v18, v15

    int-to-byte v6, v6

    or-int v6, v17, v6

    int-to-byte v6, v6

    aput-byte v6, v11, v16

    .line 1276
    add-int/lit8 v0, v0, 0x1

    .line 1264
    .end local v14    # "c":C
    .end local v15    # "shift":I
    :goto_6b
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0x2b

    goto :goto_3d

    :cond_70
    move/from16 v3, p2

    .line 1280
    .end local v13    # "i":I
    and-int/lit8 v6, v0, 0x1

    if-ne v6, v8, :cond_83

    shr-int/lit8 v6, v0, 0x1

    add-int/2addr v6, v9

    aget-byte v8, v11, v6

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v11, v6

    goto :goto_83

    .line 1287
    .end local v0    # "digitCount":I
    :catch_81
    move-exception v0

    goto :goto_9d

    .line 1282
    .restart local v0    # "digitCount":I
    :cond_83
    :goto_83
    const/4 v6, 0x0

    .line 1283
    .local v6, "offset":I
    if-eqz p1, :cond_8e

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v13, v10, -0x1

    int-to-byte v13, v13

    aput-byte v13, v11, v6

    move v6, v8

    .line 1284
    .end local v8    # "offset":I
    .restart local v6    # "offset":I
    :cond_8e
    if-eqz v5, :cond_93

    const/16 v8, 0x91

    goto :goto_95

    :cond_93
    const/16 v8, 0x81

    :goto_95
    int-to-byte v8, v8

    aput-byte v8, v11, v6
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_98} :catch_81

    .line 1290
    .end local v0    # "digitCount":I
    .end local v6    # "offset":I
    nop

    .line 1297
    return-object v11

    .line 1287
    :catch_9a
    move-exception v0

    move/from16 v3, p2

    .line 1288
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_9d
    const-string v6, "PhoneNumberUtils"

    const-string v8, "Error for invalid char for BCD"

    invoke-static {v6, v8, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1289
    return-object v1

    .line 1292
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_a5
    move/from16 v3, p2

    const-string/jumbo v0, "numbertoBCD is null"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 1293
    return-object v1
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .line 2967
    move-object v0, p0

    .line 2973
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_56

    .line 2974
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_56

    .line 2975
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_56

    .line 2976
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2978
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_27

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2980
    move-object v0, v1

    .line 2982
    const-string/jumbo v2, "processPlusCode - Remove the leading plus sign"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_56

    .line 2986
    :cond_27
    const-string v2, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processPlusCode - Replaces the plus sign with the default IDP. useNanp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current IDP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2993
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_56
    :goto_56
    return-object v0
.end method

.method private static processPlusCodeForSpr(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .registers 12
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 2998
    move-object v0, p0

    .line 3002
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_ac

    .line 3003
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_ac

    .line 3004
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_ac

    .line 3005
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3007
    .local v1, "newStr":Ljava/lang/String;
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3008
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "toggle_country_name"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3010
    .local v4, "isUSDialingValue":Z
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    if-eqz v4, :cond_81

    .line 3011
    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v5

    .line 3012
    .local v5, "iso":Ljava/lang/String;
    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v6

    .line 3013
    .local v6, "simIso":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCodeForSpr - ISO: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SIM ISO: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_80

    .line 3016
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_80

    .line 3017
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_80

    .line 3019
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3020
    const-string/jumbo v2, "processPlusCodeForSpr - Remove the leading plus sign and 1"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3022
    .end local v5    # "iso":Ljava/lang/String;
    .end local v6    # "simIso":Ljava/lang/String;
    :cond_80
    goto :goto_ac

    .line 3023
    :cond_81
    const-string v2, "country_code"

    const-string v5, "011"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3025
    .local v2, "nanpIDPString":Ljava/lang/String;
    const-string v5, "[+]"

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3026
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPlusCodeForSpr - Replaces the plus sign with the NANP IDP (NANP IDP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3029
    .end local v1    # "newStr":Ljava/lang/String;
    .end local v2    # "nanpIDPString":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "isUSDialingValue":Z
    :cond_ac
    :goto_ac
    return-object v0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .line 1900
    const/4 v0, 0x0

    .line 1901
    .local v0, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1902
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_15

    .line 1903
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1905
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1908
    :cond_18
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2191
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-char v4, v1, v3

    .line 2192
    .local v4, "c":C
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 2193
    .local v5, "digit":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_20

    .line 2194
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 2196
    :cond_20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2191
    .end local v4    # "c":C
    .end local v5    # "digit":I
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2199
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static retrieveAssistedParams(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 20
    .param p0, "subId"    # I
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 3878
    move/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "NANP"

    const-string v4, "310 to 316"

    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 3879
    .local v5, "phoneId":I
    const-string v0, "LRA"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1f

    .line 3880
    const-string v0, "Assisted Dial not supported"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3881
    return v6

    .line 3883
    :cond_1f
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    .line 3884
    const-string/jumbo v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    sput-boolean v7, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    .line 3886
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v7

    .line 3888
    .local v7, "phoneType":I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v8, 0x3

    if-ge v0, v8, :cond_53

    move-object/from16 v11, p2

    goto/16 :goto_210

    .line 3894
    :cond_53
    :try_start_53
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 3895
    .local v9, "cr":Landroid/content/ContentResolver;
    sget-object v10, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 3896
    if-nez v0, :cond_73

    .line 3897
    const-string v0, "Invalid Reference Country"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_203

    .line 3898
    nop

    .line 3940
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_72

    .line 3941
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3898
    :cond_72
    return v6

    .line 3901
    :cond_73
    :try_start_73
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3904
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    .line 3905
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 3906
    .local v12, "refmcc":Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_203

    const-string v13, "430"

    const-string v14, "310"

    const-string v15, "430 to 431"

    if-eqz v0, :cond_95

    move-object v0, v14

    goto :goto_9e

    :cond_95
    :try_start_95
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    move-object v0, v13

    goto :goto_9e

    :cond_9d
    move-object v0, v12

    :goto_9e
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    .line 3907
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    .line 3908
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    .line 3909
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    move v0, v10

    goto :goto_c1

    :cond_c0
    move v0, v6

    :goto_c1
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    .line 3910
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    .line 3912
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    .line 3913
    if-nez v0, :cond_f3

    .line 3914
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_dc
    .catchall {:try_start_95 .. :try_end_dc} :catchall_203

    if-lt v0, v8, :cond_e7

    .line 3915
    move-object/from16 v11, p2

    :try_start_e0
    invoke-virtual {v11, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    goto :goto_f5

    .line 3917
    :cond_e7
    move-object/from16 v11, p2

    const-string v0, "Wrong MDN. Use default reference country area code"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3918
    const-string v0, "123"

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    goto :goto_f5

    .line 3913
    :cond_f3
    move-object/from16 v11, p2

    .line 3922
    :goto_f5
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 3923
    .local v6, "assistedDialingNnl":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_10b

    .line 3924
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    goto :goto_10f

    .line 3926
    :cond_10b
    const/16 v0, 0xa

    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I

    .line 3928
    :goto_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refCountryNationalNumberLength - MDN length: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", DB: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3930
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_138
    .catchall {:try_start_e0 .. :try_end_138} :catchall_201

    if-nez v0, :cond_147

    .line 3932
    :try_start_13a
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:I
    :try_end_140
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_140} :catch_141
    .catchall {:try_start_13a .. :try_end_140} :catchall_201

    .line 3935
    goto :goto_147

    .line 3933
    :catch_141
    move-exception v0

    .line 3934
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_142
    const-string v8, "Can\'t parse the NationalNumberLength as integer"

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3938
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_147
    :goto_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refCountryMCC: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v8, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V
    :try_end_160
    .catchall {:try_start_142 .. :try_end_160} :catchall_201

    .line 3940
    .end local v6    # "assistedDialingNnl":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "refmcc":Ljava/lang/String;
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_167

    .line 3941
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3944
    :cond_167
    if-ne v7, v10, :cond_16b

    move v0, v10

    goto :goto_16c

    :cond_16b
    const/4 v0, 0x0

    :goto_16c
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    .line 3945
    const/4 v6, 0x2

    if-ne v7, v6, :cond_173

    move v0, v10

    goto :goto_174

    :cond_173
    const/4 v0, 0x0

    :goto_174
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    .line 3947
    :try_start_176
    invoke-static {v1, v2, v10}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(ILandroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    .line 3949
    const/4 v6, 0x0

    sput-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 3950
    if-eqz v0, :cond_1e2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 3951
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    .line 3952
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    .line 3954
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    .line 3955
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 3956
    if-nez v0, :cond_1b0

    .line 3957
    const-string v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    .line 3960
    :cond_1b0
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    move v0, v10

    goto :goto_1c0

    :cond_1bf
    const/4 v0, 0x0

    :goto_1c0
    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    .line 3961
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    .line 3962
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    move-object v13, v14

    goto :goto_1e0

    :cond_1d5
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    goto :goto_1e0

    :cond_1de
    sget-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    :goto_1e0
    sput-object v13, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;
    :try_end_1e2
    .catchall {:try_start_176 .. :try_end_1e2} :catchall_1f8

    .line 3965
    :cond_1e2
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1e9

    .line 3966
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3970
    :cond_1e9
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    if-nez v0, :cond_1f4

    .line 3971
    const-string v0, "OTA country not found"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3972
    const/4 v3, 0x0

    return v3

    .line 3975
    :cond_1f4
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->displayAssistedParams()V

    .line 3977
    return v10

    .line 3965
    :catchall_1f8
    move-exception v0

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_200

    .line 3966
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3968
    :cond_200
    throw v0

    .line 3940
    :catchall_201
    move-exception v0

    goto :goto_206

    :catchall_203
    move-exception v0

    move-object/from16 v11, p2

    :goto_206
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_20d

    .line 3941
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3943
    :cond_20d
    throw v0

    .line 3888
    :cond_20e
    move-object/from16 v11, p2

    .line 3889
    :goto_210
    const-string v0, "Wrong MDN"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    .line 3890
    const/4 v3, 0x0

    return v3
.end method

.method public static semCompareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .line 792
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static semIsEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2253
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static semToCallerIDMinMatch(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "minMatchlen"    # I

    .line 826
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "np":Ljava/lang/String;
    if-lez p1, :cond_8

    move v1, p1

    goto :goto_c

    :cond_8
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v1

    :goto_c
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setMinMatchForTest(I)V
    .registers 1
    .param p0, "minMatch"    # I

    .line 198
    sput p0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 199
    return-void
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2780
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, " "

    if-ge v1, v2, :cond_2c

    .line 2781
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2782
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_26

    .line 2783
    :cond_25
    nop

    .line 2781
    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2780
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2788
    .end local v1    # "i":I
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 11
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 3638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ne v0, v1, :cond_30

    .line 3639
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "65"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3640
    :cond_29
    const-string/jumbo v0, "length 12 - 7,20,65,90 is detected"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3641
    return v2

    .line 3645
    :cond_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_88

    .line 3646
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3647
    const-string v0, "US country code is detected with more than 11 digits"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3648
    return v2

    .line 3651
    :cond_46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3652
    .local v0, "ContryCode":Landroid/content/ContentResolver;
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    .line 3653
    if-eqz v1, :cond_88

    .line 3654
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3655
    :goto_5c
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_83

    .line 3656
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3657
    const-string v1, "contry code is detected"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3658
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3659
    const/4 v1, 0x1

    return v1

    .line 3661
    :cond_7d
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5c

    .line 3663
    :cond_83
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3667
    .end local v0    # "ContryCode":Landroid/content/ContentResolver;
    :cond_88
    return v2
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .line 877
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 879
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2b

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 883
    :cond_2b
    return-object p0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 351
    if-nez p0, :cond_4

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 355
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 357
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2d

    .line 358
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 360
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 361
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 362
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 363
    :cond_21
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 364
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 368
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 807
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "np":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 893
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 894
    const/16 v0, 0x91

    return v0

    .line 897
    :cond_14
    const/16 v0, 0x81

    return v0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .line 3249
    const/4 v0, 0x0

    .line 3250
    .local v0, "state":I
    const/4 v1, 0x0

    .line 3251
    .local v1, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3252
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v4, 0x0

    if-ge v3, v2, :cond_9e

    .line 3253
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3254
    .local v5, "ch":C
    const/16 v6, 0x36

    const/16 v7, 0x30

    const/16 v8, 0x31

    packed-switch v0, :pswitch_data_a0

    .line 3319
    return-object v4

    .line 3313
    :pswitch_18
    if-ne v5, v6, :cond_24

    .line 3314
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x42

    invoke-direct {v4, v7, v6}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3316
    :cond_24
    return-object v4

    .line 3307
    :pswitch_25
    if-ne v5, v6, :cond_2b

    const/16 v0, 0x9

    goto/16 :goto_9a

    .line 3308
    :cond_2b
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3309
    return-object v4

    .line 3278
    :pswitch_32
    if-ne v5, v8, :cond_37

    const/4 v0, 0x5

    goto/16 :goto_9a

    .line 3279
    :cond_37
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3280
    return-object v4

    .line 3270
    :pswitch_3e
    if-ne v5, v7, :cond_42

    const/4 v0, 0x3

    goto :goto_9a

    .line 3271
    :cond_42
    if-ne v5, v8, :cond_46

    const/4 v0, 0x4

    goto :goto_9a

    .line 3272
    :cond_46
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3273
    return-object v4

    .line 3290
    :pswitch_4d
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v6

    .line 3291
    .local v6, "ret":I
    if-lez v6, :cond_79

    .line 3292
    mul-int/lit8 v4, v1, 0xa

    add-int v1, v4, v6

    .line 3293
    const/16 v4, 0x64

    if-ge v1, v4, :cond_71

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v4

    if-eqz v4, :cond_62

    goto :goto_71

    .line 3296
    :cond_62
    const/4 v4, 0x1

    if-eq v0, v4, :cond_6f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6f

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6c

    goto :goto_6f

    .line 3299
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 3297
    :cond_6f
    :goto_6f
    const/4 v0, 0x6

    goto :goto_80

    .line 3294
    :cond_71
    :goto_71
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v1, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 3301
    :cond_79
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 3302
    return-object v4

    .line 3305
    .end local v6    # "ret":I
    :cond_80
    :goto_80
    goto :goto_9a

    .line 3256
    :pswitch_81
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_87

    const/4 v0, 0x1

    goto :goto_9a

    .line 3257
    :cond_87
    if-ne v5, v7, :cond_8b

    const/4 v0, 0x2

    goto :goto_9a

    .line 3258
    :cond_8b
    if-ne v5, v8, :cond_93

    .line 3259
    if-eqz p1, :cond_92

    .line 3260
    const/16 v0, 0x8

    goto :goto_9a

    .line 3262
    :cond_92
    return-object v4

    .line 3264
    :cond_93
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 3265
    return-object v4

    .line 3252
    .end local v5    # "ch":C
    :cond_9a
    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 3323
    .end local v3    # "i":I
    :cond_9e
    return-object v4

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_81
        :pswitch_4d
        :pswitch_3e
        :pswitch_4d
        :pswitch_32
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_25
        :pswitch_18
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 3220
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 3221
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 3223
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .line 3336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3337
    .local v0, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_5
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1f

    .line 3338
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3339
    .local v3, "ch":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_15

    .line 3340
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 3341
    :cond_15
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3342
    return v2

    .line 3337
    .end local v3    # "ch":C
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3345
    .end local v1    # "i":I
    :cond_1f
    return v2
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2719
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .registers 3
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2736
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2737
    return-void
.end method
