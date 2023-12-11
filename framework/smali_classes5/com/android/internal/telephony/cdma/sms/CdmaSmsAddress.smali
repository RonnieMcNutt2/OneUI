.class public Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "CdmaSmsAddress.java"


# static fields
.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x0

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x1

.field static final NA_EmailGateWayAddr:Ljava/lang/String; = "6245"

.field public static final NUMBERING_PLAN_ISDN_TELEPHONY:I = 0x1

.field public static final NUMBERING_PLAN_UNKNOWN:I = 0x0

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final SMS_ADDRESS_MAX:I = 0x24

.field public static final SMS_SUBADDRESS_MAX:I = 0x24

.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL_OR_IP:I = 0x1

.field public static final TON_NATIONAL_OR_EMAIL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_RESERVED:I = 0x7

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I

.field private static final numericCharDialableMap:Landroid/util/SparseBooleanArray;

.field private static final numericCharsDialable:[C

.field private static final numericCharsSugar:[C


# instance fields
.field public digitMode:I

.field public numberMode:I

.field public numberOfDigits:I

.field public numberPlan:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 143
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_40

    sput-object v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    .line 147
    const/16 v1, 0x8

    new-array v1, v1, [C

    fill-array-data v1, :array_50

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    .line 151
    new-instance v2, Landroid/util/SparseBooleanArray;

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 155
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    aget-char v1, v1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 157
    .end local v0    # "i":I
    :cond_2d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2e
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v2, v1

    if-ge v0, v2, :cond_3e

    .line 158
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    aget-char v1, v1, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 160
    .end local v0    # "i":I
    :cond_3e
    return-void

    nop

    :array_40
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2as
        0x23s
    .end array-data

    :array_50
    .array-data 2
        0x28s
        0x29s
        0x20s
        0x2ds
        0x2bs
        0x2es
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 104
    return-void
.end method

.method private static filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 171
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_27

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 173
    .local v3, "c":C
    sget-object v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    .line 174
    .local v5, "mapIndex":I
    if-gez v5, :cond_1a

    const/4 v4, 0x0

    return-object v4

    .line 175
    :cond_1a
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_24

    .line 176
    :cond_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .end local v3    # "c":C
    .end local v5    # "mapIndex":I
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 178
    .end local v2    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static filterWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "address"    # Ljava/lang/String;

    .line 187
    if-nez p0, :cond_4

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 193
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_2b

    .line 194
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 195
    .local v3, "c":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_28

    const/16 v4, 0xd

    if-eq v3, v4, :cond_28

    const/16 v4, 0xa

    if-eq v3, v4, :cond_28

    const/16 v4, 0x9

    if-ne v3, v4, :cond_25

    goto :goto_28

    .line 196
    :cond_25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .end local v3    # "c":C
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 198
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 214
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 215
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 216
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 217
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 218
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 221
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "filteredAddr":Ljava/lang/String;
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    if-nez v2, :cond_1f

    goto :goto_24

    .line 246
    :cond_1f
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "origBytes":[B
    goto :goto_54

    .line 225
    .end local v1    # "origBytes":[B
    :cond_24
    :goto_24
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 226
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 227
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v5, "@"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 231
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    goto :goto_50

    .line 232
    :cond_39
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 237
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 238
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 239
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 240
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 243
    :cond_50
    :goto_50
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    move-result-object v1

    .line 249
    .restart local v1    # "origBytes":[B
    :goto_54
    if-nez v1, :cond_58

    .line 250
    const/4 v3, 0x0

    return-object v3

    .line 253
    :cond_58
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 254
    array-length v3, v1

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 256
    if-eqz v2, :cond_61

    .line 257
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 260
    :cond_61
    return-object v0
.end method

.method public static parseToDtmf(Ljava/lang/String;)[B
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "digits":I
    new-array v1, v0, [B

    .line 130
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_35

    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 132
    .local v3, "c":C
    const/4 v4, 0x0

    .line 133
    .local v4, "val":I
    const/16 v5, 0x31

    if-lt v3, v5, :cond_19

    const/16 v5, 0x39

    if-gt v3, v5, :cond_19

    add-int/lit8 v4, v3, -0x30

    goto :goto_2d

    .line 134
    :cond_19
    const/16 v5, 0x30

    if-ne v3, v5, :cond_20

    const/16 v4, 0xa

    goto :goto_2d

    .line 135
    :cond_20
    const/16 v5, 0x2a

    if-ne v3, v5, :cond_27

    const/16 v4, 0xb

    goto :goto_2d

    .line 136
    :cond_27
    const/16 v5, 0x23

    if-ne v3, v5, :cond_33

    const/16 v4, 0xc

    .line 138
    :goto_2d
    int-to-byte v5, v4

    aput-byte v5, v1, v2

    .line 130
    .end local v3    # "c":C
    .end local v4    # "val":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 137
    .restart local v3    # "c":C
    .restart local v4    # "val":I
    :cond_33
    const/4 v5, 0x0

    return-object v5

    .line 140
    .end local v2    # "i":I
    .end local v3    # "c":C
    .end local v4    # "val":I
    :cond_35
    return-object v1
.end method


# virtual methods
.method public couldBeEmailGateway()Z
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v1, "6245"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "CdmaSmsAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ digitMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberPlan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfDigits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", address=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
