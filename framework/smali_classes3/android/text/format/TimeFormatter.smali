.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private static sLocale:Ljava/util/Locale;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    .line 76
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 78
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_14

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 79
    :cond_14
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 80
    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 81
    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x1040e17

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 85
    const v3, 0x10407f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 86
    const v3, 0x10403df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 89
    .end local v2    # "r":Landroid/content/res/Resources;
    :cond_41
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 90
    sget-object v2, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 91
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 92
    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 93
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 94
    .end local v1    # "locale":Ljava/util/Locale;
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_6 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private static append2DigitNumber(Ljava/lang/StringBuilder;I)V
    .registers 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I

    .line 144
    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    .line 145
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    return-void
.end method

.method private static brokenIsLower(C)Z
    .registers 2
    .param p0, "toCheck"    # C

    .line 553
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static brokenIsUpper(C)Z
    .registers 2
    .param p0, "toCheck"    # C

    .line 545
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static brokenToLower(C)C
    .registers 2
    .param p0, "input"    # C

    .line 561
    const/16 v0, 0x41

    if-lt p0, v0, :cond_e

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_e

    .line 562
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0

    .line 564
    :cond_e
    return p0
.end method

.method private static brokenToUpper(C)C
    .registers 2
    .param p0, "input"    # C

    .line 572
    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    .line 573
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0

    .line 575
    :cond_e
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 198
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 199
    .local v0, "formatBuffer":Ljava/nio/CharBuffer;
    :goto_4
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_34

    .line 200
    const/4 v1, 0x1

    .line 201
    .local v1, "outputCurrentChar":Z
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    .line 202
    .local v2, "currentChar":C
    const/16 v3, 0x25

    if-ne v2, v3, :cond_1b

    .line 203
    invoke-direct {p0, v0, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v1

    .line 205
    :cond_1b
    if-eqz v1, :cond_2a

    .line 206
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :cond_2a
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 209
    .end local v1    # "outputCurrentChar":Z
    .end local v2    # "currentChar":C
    goto :goto_4

    .line 210
    :cond_34
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "modifier"    # I
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "underscore"    # Ljava/lang/String;
    .param p3, "dash"    # Ljava/lang/String;
    .param p4, "zero"    # Ljava/lang/String;

    .line 525
    sparse-switch p0, :sswitch_data_8

    .line 533
    return-object p1

    .line 527
    :sswitch_4
    return-object p2

    .line 531
    :sswitch_5
    return-object p4

    .line 529
    :sswitch_6
    return-object p3

    nop

    :sswitch_data_8
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method private handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z
    .registers 23
    .param p1, "formatBuffer"    # Ljava/nio/CharBuffer;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 217
    .local v4, "modifier":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3c5

    .line 219
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    .line 221
    .local v5, "currentChar":C
    const-string v7, "?"

    const/4 v8, 0x7

    const/16 v9, 0xc

    const-string v10, "%2d"

    const-string v11, "%d"

    const-string v12, "%02d"

    const/4 v13, 0x0

    packed-switch v5, :pswitch_data_3c6

    .line 461
    :pswitch_2f
    const/4 v6, 0x1

    return v6

    .line 437
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v6

    if-gez v6, :cond_38

    .line 438
    return v13

    .line 440
    :cond_38
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v6

    .line 442
    .local v6, "diff":I
    if-gez v6, :cond_42

    .line 443
    const/16 v7, 0x2d

    .line 444
    .local v7, "sign":C
    neg-int v6, v6

    goto :goto_44

    .line 446
    .end local v7    # "sign":C
    :cond_42
    const/16 v7, 0x2b

    .line 448
    .restart local v7    # "sign":C
    :goto_44
    iget-object v8, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    div-int/lit8 v6, v6, 0x3c

    .line 450
    div-int/lit8 v8, v6, 0x3c

    mul-int/lit8 v8, v8, 0x64

    rem-int/lit8 v9, v6, 0x3c

    add-int/2addr v8, v9

    .line 451
    .end local v6    # "diff":I
    .local v8, "diff":I
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v9, "%4d"

    const-string v10, "%04d"

    invoke-static {v4, v10, v9, v11, v10}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 452
    return v13

    .line 423
    .end local v7    # "sign":C
    .end local v8    # "diff":I
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v13, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 424
    return v13

    .line 420
    :pswitch_70
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 421
    return v13

    .line 414
    :pswitch_76
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 415
    return v13

    .line 405
    :pswitch_88
    const-string v6, "%e-%b-%Y"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 406
    return v13

    .line 362
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v6

    if-nez v6, :cond_95

    goto :goto_99

    :cond_95
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    :goto_99
    move v6, v8

    .line 363
    .local v6, "day":I
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 364
    return v13

    .line 354
    .end local v6    # "day":I
    :pswitch_a8
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    return v13

    .line 347
    :pswitch_b0
    invoke-virtual/range {p2 .. p3}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v6

    .line 348
    .local v6, "timeInSeconds":I
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    return v13

    .line 340
    .end local v6    # "timeInSeconds":I
    :pswitch_be
    const-string v6, "%I:%M:%S %p"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 341
    return v13

    .line 327
    :pswitch_c4
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_d3

    .line 328
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_db

    .line 329
    :cond_d3
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    .line 327
    :goto_db
    invoke-direct {v0, v6, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 330
    return v13

    .line 324
    :pswitch_df
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    return v13

    .line 320
    :pswitch_e7
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v9

    add-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 320
    invoke-virtual {v7, v8, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 322
    return v13

    .line 312
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/2addr v6, v9

    if-eqz v6, :cond_10b

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/lit8 v9, v6, 0xc

    :cond_10b
    move v6, v9

    .line 313
    .local v6, "n2":I
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 314
    return v13

    .line 308
    .end local v6    # "n2":I
    :pswitch_11e
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 308
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 310
    return v13

    .line 303
    :pswitch_134
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v6

    .line 304
    .local v7, "yearDay":I
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v8, "%3d"

    const-string v9, "%03d"

    invoke-static {v4, v9, v8, v11, v9}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 304
    invoke-virtual {v6, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 306
    return v13

    .line 288
    .end local v7    # "yearDay":I
    :pswitch_14f
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v10, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 288
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 290
    return v13

    .line 273
    :pswitch_165
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 274
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 273
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 275
    return v13

    .line 267
    :pswitch_17b
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 268
    return v13

    .line 257
    :pswitch_181
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_19b

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_18e

    goto :goto_19b

    .line 260
    :cond_18e
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 259
    invoke-virtual {v6, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_19c

    .line 258
    :cond_19b
    :goto_19b
    nop

    .line 257
    :goto_19c
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 262
    return v13

    .line 231
    :pswitch_1a0
    nop

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-ltz v9, :cond_1bc

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-lt v9, v8, :cond_1ae

    goto :goto_1bc

    .line 235
    :cond_1ae
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 234
    invoke-virtual {v7, v13, v13}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    goto :goto_1bd

    .line 233
    :cond_1bc
    :goto_1bc
    nop

    .line 231
    :goto_1bd
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 237
    return v13

    .line 429
    :pswitch_1c1
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-gez v7, :cond_1c8

    .line 430
    return v13

    .line 432
    :cond_1c8
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v7

    if-eqz v7, :cond_1cf

    goto :goto_1d0

    :cond_1cf
    move v6, v13

    .line 433
    .local v6, "isDst":Z
    :goto_1d0
    invoke-virtual/range {p3 .. p3}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 434
    invoke-virtual {v7, v6, v13}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 435
    return v13

    .line 426
    .end local v6    # "isDst":Z
    :pswitch_1e0
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    invoke-direct {v0, v7, v6, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 427
    return v13

    .line 417
    :pswitch_1e8
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 418
    return v13

    .line 408
    :pswitch_1ee
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v7

    add-int/2addr v7, v8

    .line 409
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    if-eqz v9, :cond_1ff

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_200

    .line 410
    :cond_1ff
    const/4 v9, 0x6

    :goto_200
    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    .line 411
    .local v7, "n":I
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 412
    return v13

    .line 357
    .end local v7    # "n":I
    :pswitch_214
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 358
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 357
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 360
    return v13

    .line 351
    :pswitch_231
    const-string v6, "%H:%M:%S"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 352
    return v13

    .line 343
    :pswitch_237
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 343
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 345
    return v13

    .line 337
    :pswitch_24d
    const-string v6, "%H:%M"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 338
    return v13

    .line 332
    :pswitch_253
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v7

    if-lt v7, v9, :cond_262

    .line 333
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v6

    goto :goto_26a

    .line 334
    :cond_262
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    :goto_26a
    nop

    .line 332
    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 335
    return v13

    .line 316
    :pswitch_270
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 316
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 318
    return v13

    .line 299
    :pswitch_286
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/2addr v6, v9

    if-eqz v6, :cond_293

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v6

    rem-int/lit8 v9, v6, 0xc

    :cond_293
    move v6, v9

    .line 300
    .local v6, "hour":I
    iget-object v7, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 301
    return v13

    .line 295
    .end local v6    # "hour":I
    :pswitch_2a6
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 295
    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 297
    return v13

    .line 369
    :pswitch_2bc
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    .line 370
    .local v7, "year":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v9

    .line 371
    .local v9, "yday":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v14

    .line 374
    .local v14, "wday":I
    :goto_2c8
    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v15

    const/16 v16, 0x16e

    const/16 v17, 0x16d

    if-eqz v15, :cond_2d5

    move/from16 v15, v16

    goto :goto_2d7

    :cond_2d5
    move/from16 v15, v17

    .line 376
    .local v15, "len":I
    :goto_2d7
    add-int/lit8 v18, v9, 0xb

    sub-int v18, v18, v14

    rem-int/lit8 v18, v18, 0x7

    add-int/lit8 v13, v18, -0x3

    .line 378
    .local v13, "bot":I
    rem-int/lit8 v18, v15, 0x7

    sub-int v6, v13, v18

    .line 379
    .local v6, "top":I
    const/4 v8, -0x3

    if-ge v6, v8, :cond_2e8

    .line 380
    add-int/lit8 v6, v6, 0x7

    .line 382
    :cond_2e8
    add-int/2addr v6, v15

    .line 383
    if-lt v9, v6, :cond_2ef

    .line 384
    add-int/lit8 v7, v7, 0x1

    .line 385
    const/4 v8, 0x1

    .line 386
    .local v8, "w":I
    goto :goto_2fc

    .line 388
    .end local v8    # "w":I
    :cond_2ef
    if-lt v9, v13, :cond_323

    .line 389
    sub-int v8, v9, v13

    const/16 v16, 0x7

    div-int/lit8 v8, v8, 0x7

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 390
    .restart local v8    # "w":I
    nop

    .line 395
    .end local v6    # "top":I
    .end local v13    # "bot":I
    .end local v15    # "len":I
    :goto_2fc
    const/16 v6, 0x56

    if-ne v5, v6, :cond_313

    .line 396
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v4, v12, v10, v11, v12}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 v10, 0x0

    goto :goto_322

    .line 397
    :cond_313
    const/16 v6, 0x67

    if-ne v5, v6, :cond_31d

    .line 398
    const/4 v6, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v7, v10, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_322

    .line 400
    :cond_31d
    const/4 v6, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v7, v6, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 402
    :goto_322
    return v10

    .line 392
    .end local v8    # "w":I
    .restart local v6    # "top":I
    .restart local v13    # "bot":I
    .restart local v15    # "len":I
    :cond_323
    add-int/lit8 v7, v7, -0x1

    .line 393
    invoke-static {v7}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v8

    if-eqz v8, :cond_32c

    goto :goto_32e

    :cond_32c
    move/from16 v16, v17

    :goto_32e
    add-int v9, v9, v16

    .line 394
    .end local v6    # "top":I
    .end local v13    # "bot":I
    .end local v15    # "len":I
    const/4 v6, 0x1

    const/4 v8, 0x7

    const/4 v13, 0x0

    goto :goto_2c8

    .line 292
    .end local v7    # "year":I
    .end local v9    # "yday":I
    .end local v14    # "wday":I
    :pswitch_334
    const-string v6, "%Y-%m-%d"

    invoke-direct {v0, v6, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 293
    const/4 v6, 0x0

    return v6

    .line 279
    :pswitch_33b
    goto/16 :goto_9

    .line 270
    :pswitch_33d
    move v6, v13

    const-string v7, "%m/%d/%y"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 271
    return v6

    .line 264
    :pswitch_344
    move v6, v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v7

    const/4 v8, 0x1

    invoke-direct {v0, v7, v8, v6, v4}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 265
    return v6

    .line 239
    :pswitch_34e
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_373

    .line 240
    nop

    .line 241
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_36e

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_360

    goto :goto_36e

    .line 244
    :cond_360
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 243
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_36f

    .line 242
    :cond_36e
    :goto_36e
    nop

    .line 240
    :goto_36f
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_394

    .line 247
    :cond_373
    nop

    .line 248
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-ltz v6, :cond_390

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v6

    if-lt v6, v9, :cond_381

    goto :goto_390

    .line 251
    :cond_381
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 250
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v7

    aget-object v7, v6, v7

    goto :goto_391

    .line 249
    :cond_390
    :goto_390
    nop

    .line 247
    :goto_391
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 254
    :goto_394
    const/4 v6, 0x0

    return v6

    .line 223
    :pswitch_396
    nop

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v6

    if-ltz v6, :cond_3b5

    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v6

    const/4 v8, 0x7

    if-lt v6, v8, :cond_3a5

    goto :goto_3b5

    .line 227
    :cond_3a5
    iget-object v6, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    .line 226
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    add-int/2addr v8, v7

    aget-object v7, v6, v8

    goto :goto_3b6

    .line 225
    :cond_3b5
    :goto_3b5
    nop

    .line 223
    :goto_3b6
    invoke-direct {v0, v7, v4}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 229
    const/4 v6, 0x0

    return v6

    .line 455
    :pswitch_3bb
    move v6, v13

    const-string v7, "%a %b %e %H:%M:%S %Z %Y"

    invoke-direct {v0, v7, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 456
    return v6

    .line 285
    :pswitch_3c2
    move v4, v5

    .line 286
    goto/16 :goto_9

    .line 464
    .end local v5    # "currentChar":C
    :cond_3c5
    return v6

    :pswitch_data_3c6
    .packed-switch 0x23
        :pswitch_3c2
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_3bb
        :pswitch_2f
        :pswitch_3c2
        :pswitch_2f
        :pswitch_2f
        :pswitch_3c2
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_396
        :pswitch_34e
        :pswitch_344
        :pswitch_33d
        :pswitch_33b
        :pswitch_334
        :pswitch_2bc
        :pswitch_2a6
        :pswitch_286
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_270
        :pswitch_2f
        :pswitch_33b
        :pswitch_253
        :pswitch_2f
        :pswitch_24d
        :pswitch_237
        :pswitch_231
        :pswitch_214
        :pswitch_2bc
        :pswitch_1ee
        :pswitch_1e8
        :pswitch_1e0
        :pswitch_1c1
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_2f
        :pswitch_1a0
        :pswitch_181
        :pswitch_17b
        :pswitch_165
        :pswitch_14f
        :pswitch_2f
        :pswitch_2bc
        :pswitch_181
        :pswitch_2f
        :pswitch_134
        :pswitch_11e
        :pswitch_fe
        :pswitch_e7
        :pswitch_df
        :pswitch_2f
        :pswitch_c4
        :pswitch_2f
        :pswitch_be
        :pswitch_b0
        :pswitch_a8
        :pswitch_8e
        :pswitch_88
        :pswitch_76
        :pswitch_70
        :pswitch_68
        :pswitch_31
    .end packed-switch
.end method

.method private static isLeap(I)Z
    .registers 2
    .param p0, "year"    # I

    .line 537
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_b

    .line 176
    return-object p1

    .line 179
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    .local v0, "length":I
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    sub-int/2addr v2, v1

    .line 181
    .local v2, "offsetToLocalizedDigits":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v0, :cond_31

    .line 183
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 184
    .local v5, "ch":C
    if-lt v5, v1, :cond_2b

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2b

    .line 185
    add-int v6, v5, v2

    int-to-char v5, v6

    .line 187
    :cond_2b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 189
    .end local v4    # "i":I
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "modifier"    # I

    .line 468
    sparse-switch p2, :sswitch_data_64

    .line 491
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 475
    :sswitch_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 476
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 478
    .end local v0    # "i":I
    :cond_20
    goto :goto_62

    .line 480
    :sswitch_21
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 481
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 482
    .local v1, "c":C
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 483
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v1

    goto :goto_41

    .line 484
    :cond_37
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 485
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v1

    .line 487
    :cond_41
    :goto_41
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 489
    .end local v0    # "i":I
    :cond_49
    goto :goto_62

    .line 470
    :sswitch_4a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 471
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 473
    .end local v0    # "i":I
    :cond_61
    nop

    .line 493
    :goto_62
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        -0x1 -> :sswitch_4a
        0x23 -> :sswitch_21
        0x5e -> :sswitch_9
    .end sparse-switch
.end method

.method private outputYear(IZZI)V
    .registers 14
    .param p1, "value"    # I
    .param p2, "outputTop"    # Z
    .param p3, "outputBottom"    # Z
    .param p4, "modifier"    # I

    .line 499
    const/16 v0, 0x64

    .line 500
    .local v0, "DIVISOR":I
    rem-int/lit8 v1, p1, 0x64

    .line 501
    .local v1, "trail":I
    div-int/lit8 v2, p1, 0x64

    div-int/lit8 v3, v1, 0x64

    add-int/2addr v2, v3

    .line 502
    .local v2, "lead":I
    rem-int/lit8 v1, v1, 0x64

    .line 503
    if-gez v1, :cond_14

    if-lez v2, :cond_14

    .line 504
    add-int/lit8 v1, v1, 0x64

    .line 505
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 506
    :cond_14
    if-gez v2, :cond_1c

    if-lez v1, :cond_1c

    .line 507
    add-int/lit8 v1, v1, -0x64

    .line 508
    add-int/lit8 v2, v2, 0x1

    .line 510
    :cond_1c
    :goto_1c
    const-string v3, "%d"

    const-string v4, "%2d"

    const-string v5, "%02d"

    if-eqz p2, :cond_41

    .line 511
    if-nez v2, :cond_30

    if-gez v1, :cond_30

    .line 512
    iget-object v6, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string v7, "-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 514
    :cond_30
    iget-object v6, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v5, v4, v3, v5}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 517
    :cond_41
    :goto_41
    if-eqz p3, :cond_59

    .line 518
    if-gez v1, :cond_47

    neg-int v6, v1

    goto :goto_48

    :cond_47
    move v6, v1

    .line 519
    .local v6, "n":I
    :goto_48
    iget-object v7, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v5, v4, v3, v5}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 521
    .end local v6    # "n":I
    :cond_59
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Lcom/android/i18n/timezone/WallTime;
    .param p3, "zoneInfoData"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 156
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 161
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 163
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "result":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_21

    .line 169
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 170
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 167
    return-object v3

    .line 169
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_21
    move-exception v1

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 170
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 171
    throw v1
.end method

.method formatMillisWithFixedFormat(J)Ljava/lang/String;
    .registers 8
    .param p1, "timeMillis"    # J

    .line 112
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 115
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 122
    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 131
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 133
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "result":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
