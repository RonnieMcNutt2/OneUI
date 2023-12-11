.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1GeneralizedTime.java"


# instance fields
.field protected time:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "time"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    .line 124
    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_c} :catch_e

    .line 129
    nop

    .line 130
    return-void

    .line 126
    :catch_e
    move-exception v0

    .line 128
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 6
    .param p1, "time"    # Ljava/util/Date;

    .line 139
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 144
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .registers 7
    .param p1, "time"    # Ljava/util/Date;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 159
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 162
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 163
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 166
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 168
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    .line 169
    return-void
.end method

.method constructor <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 173
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 174
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2f

    .line 178
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 184
    return-void

    .line 182
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal characters in GeneralizedTime string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GeneralizedTime string too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateGMTDateFormat()Ljava/text/SimpleDateFormat;
    .registers 5

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 297
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmss.SSSz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_35

    .line 299
    .end local v0    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasSeconds()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 301
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmssz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_35

    .line 303
    .end local v0    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasMinutes()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 305
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_35

    .line 309
    .end local v0    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_2d
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v0    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_35
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 313
    return-object v0
.end method

.method private calculateGMTOffset(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "stime"    # Ljava/lang/String;

    .line 256
    const-string v0, ":"

    const-string v1, "GMT"

    const-string v2, "+"

    .line 257
    .local v2, "sign":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 258
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    .line 259
    .local v4, "offset":I
    if-gez v4, :cond_13

    .line 261
    const-string v2, "-"

    .line 262
    neg-int v4, v4

    .line 264
    :cond_13
    const v5, 0x36ee80

    div-int v5, v4, v5

    .line 265
    .local v5, "hours":I
    mul-int/lit8 v6, v5, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    sub-int v6, v4, v6

    const v7, 0xea60

    div-int/2addr v6, v7

    .line 269
    .local v6, "minutes":I
    :try_start_24
    invoke-virtual {v3}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->pruneFractionalSeconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object p1, v7

    .line 275
    :cond_35
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->calculateGMTDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v7

    .line 276
    .local v7, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 276
    invoke-virtual {v3, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 279
    const-string v8, "+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_72
    .catch Ljava/text/ParseException; {:try_start_24 .. :try_end_72} :catch_79

    if-eqz v8, :cond_76

    const/4 v8, 0x1

    goto :goto_77

    :cond_76
    const/4 v8, -0x1

    :goto_77
    add-int/2addr v5, v8

    .line 286
    .end local v7    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_78
    goto :goto_7a

    .line 283
    :catch_79
    move-exception v7

    .line 288
    :goto_7a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->convert(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convert(I)Ljava/lang/String;
    .registers 4
    .param p1, "time"    # I

    .line 351
    const/16 v0, 0xa

    if-ge p1, v0, :cond_18

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_18
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 5
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 99
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_19

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_b

    goto :goto_19

    .line 105
    :cond_b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v1

    .line 101
    :cond_19
    :goto_19
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 63
    if-eqz p0, :cond_55

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_7

    goto :goto_55

    .line 68
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_33

    .line 72
    :try_start_b
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    .line 74
    :catch_15
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_55
    :goto_55
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method private isDigit(I)Z
    .registers 4
    .param p1, "pos"    # I

    .line 465
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    array-length v1, v0

    if-le v1, p1, :cond_11

    aget-byte v0, v0, p1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_11

    const/16 v1, 0x39

    if-gt v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private pruneFractionalSeconds(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "origTime"    # Ljava/lang/String;

    .line 319
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "frac":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 324
    .local v3, "ch":C
    const/16 v4, 0x30

    if-gt v4, v3, :cond_1d

    const/16 v4, 0x39

    if-le v3, v4, :cond_1a

    .line 326
    goto :goto_1d

    .line 321
    .end local v3    # "ch":C
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 330
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-le v3, v4, :cond_53

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c6

    .line 335
    :cond_53
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8d

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c6

    .line 340
    :cond_8d
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c6

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    :cond_c6
    :goto_c6
    return-object p1
.end method


# virtual methods
.method asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 4
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 498
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_6

    .line 500
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method

.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 483
    return-void
.end method

.method encodedLength()I
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    array-length v0, v0

    .line 477
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public getDate()Ljava/util/Date;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "stime":Ljava/lang/String;
    move-object v1, v0

    .line 366
    .local v1, "d":Ljava/lang/String;
    const-string v2, "Z"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_57

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 372
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss.SSS\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v3, "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_4d

    .line 374
    .end local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_21
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasSeconds()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 378
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v3    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_4d

    .line 380
    .end local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_32
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasMinutes()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 384
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmm\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v3    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_4d

    .line 390
    .end local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_43
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHH\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 393
    .restart local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_4d
    new-instance v5, Ljava/util/SimpleTimeZone;

    invoke-direct {v5, v4, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_c2

    .line 395
    .end local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_57
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gtz v2, :cond_ba

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_68

    goto :goto_ba

    .line 402
    :cond_68
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 406
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHHmmss.SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v2

    .local v2, "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_a9

    .line 408
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_7a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasSeconds()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 412
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v2

    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_a9

    .line 414
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_8c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasMinutes()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 418
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHHmm"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v2

    .restart local v2    # "dateF":Ljava/text/SimpleDateFormat;
    goto :goto_a9

    .line 424
    .end local v2    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_9e
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHH"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v2

    .line 427
    .restart local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_a9
    new-instance v2, Ljava/util/SimpleTimeZone;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_c2

    .line 397
    .end local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :cond_ba
    :goto_ba
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->calculateGMTDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    .line 430
    .restart local v3    # "dateF":Ljava/text/SimpleDateFormat;
    :goto_c2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->hasFractionalSeconds()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 432
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->pruneFractionalSeconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    :cond_cc
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DateUtil;->epochAdjust(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getTime()Ljava/lang/String;
    .registers 10

    .line 211
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "stime":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    const/4 v3, 0x0

    if-ne v1, v2, :cond_33

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GMT+00:00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    .line 223
    .local v1, "signPos":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 224
    .local v2, "sign":C
    const/16 v4, 0x2b

    const-string v5, "GMT"

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_47

    if-ne v2, v4, :cond_50

    :cond_47
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v1, -0x3

    if-ne v7, v8, :cond_50

    .line 227
    return-object v0

    .line 230
    :cond_50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x5

    .line 231
    .end local v1    # "signPos":I
    .local v7, "signPos":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 232
    .end local v2    # "sign":C
    .local v1, "sign":C
    if-eq v1, v6, :cond_a8

    if-ne v1, v4, :cond_5f

    goto :goto_a8

    .line 241
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    .line 242
    .end local v7    # "signPos":I
    .local v2, "signPos":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 243
    if-eq v1, v6, :cond_84

    if-ne v1, v4, :cond_6e

    goto :goto_84

    .line 251
    .end local v1    # "sign":C
    .end local v2    # "signPos":I
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->calculateGMTOffset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 245
    .restart local v1    # "sign":C
    .restart local v2    # "signPos":I
    :cond_84
    :goto_84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    return-object v3

    .line 234
    .end local v2    # "signPos":I
    .restart local v7    # "signPos":I
    :cond_a8
    :goto_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v7, 0x3

    .line 236
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v7, 0x3

    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    return-object v2
.end method

.method public getTimeString()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasFractionalSeconds()Z
    .registers 4

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    array-length v2, v1

    if-eq v0, v2, :cond_15

    .line 442
    aget-byte v1, v1, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_12

    .line 444
    const/16 v1, 0xe

    if-ne v0, v1, :cond_12

    .line 446
    const/4 v1, 0x1

    return v1

    .line 440
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method protected hasMinutes()Z
    .registers 2

    .line 460
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected hasSeconds()Z
    .registers 2

    .line 455
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .registers 2

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 487
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    return-object v0
.end method

.method toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 492
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->time:[B

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    return-object v0
.end method
