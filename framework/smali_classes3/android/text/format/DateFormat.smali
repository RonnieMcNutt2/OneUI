.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DISALLOW_DUPLICATE_FIELD_IN_SKELETON:J = 0xa258efeL

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedText(Landroid/text/SpannableStringBuilder;I)I
    .registers 7
    .param p0, "formatString"    # Landroid/text/SpannableStringBuilder;
    .param p1, "index"    # I

    .line 667
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 668
    .local v0, "length":I
    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x27

    if-ge v1, v0, :cond_19

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_19

    .line 669
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 670
    const/4 v1, 0x1

    return v1

    .line 673
    :cond_19
    const/4 v1, 0x0

    .line 676
    .local v1, "count":I
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 677
    add-int/lit8 v0, v0, -0x1

    .line 679
    :goto_21
    if-ge p1, v0, :cond_4c

    .line 680
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 682
    .local v3, "c":C
    if-ne v3, v2, :cond_47

    .line 684
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v0, :cond_41

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_41

    .line 686
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 687
    add-int/lit8 v0, v0, -0x1

    .line 688
    add-int/lit8 v1, v1, 0x1

    .line 689
    add-int/lit8 p1, p1, 0x1

    goto :goto_4b

    .line 692
    :cond_41
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 693
    goto :goto_4c

    .line 696
    :cond_47
    add-int/lit8 p1, p1, 0x1

    .line 697
    add-int/lit8 v1, v1, 0x1

    .line 699
    .end local v3    # "c":C
    :goto_4b
    goto :goto_21

    .line 701
    :cond_4c
    :goto_4c
    return v1
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .line 426
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .line 496
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 499
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v1

    .line 500
    .local v1, "dfs":Landroid/icu/text/DateFormatSymbols;
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "amPm":[Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 504
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_bf

    .line 505
    const/4 v5, 0x1

    .line 506
    .local v5, "count":I
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .line 508
    .local v6, "c":I
    const/16 v7, 0x27

    if-ne v6, v7, :cond_2b

    .line 509
    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 510
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 511
    goto/16 :goto_bc

    .line 514
    :cond_2b
    :goto_2b
    add-int v7, v4, v5

    if-ge v7, v3, :cond_3a

    add-int v7, v4, v5

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_3a

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 519
    :cond_3a
    sparse-switch v6, :sswitch_data_ce

    .line 572
    const/4 v7, 0x0

    .local v7, "replacement":Ljava/lang/String;
    goto/16 :goto_ad

    .line 569
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_40
    invoke-static {p1, v5}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v7

    .line 570
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 566
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_45
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v7

    .line 567
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 563
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_4f
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 564
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 560
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_5a
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 561
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 525
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_65
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 526
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 557
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_6f
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 558
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 535
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_79
    const/16 v7, 0xa

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 536
    .local v7, "hour":I
    const/16 v8, 0x68

    if-ne v6, v8, :cond_87

    if-nez v7, :cond_87

    .line 537
    const/16 v7, 0xc

    .line 539
    :cond_87
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 541
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 545
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_8c
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 552
    .local v7, "hour":I
    invoke-static {v7, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 529
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_97
    nop

    .line 530
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 529
    invoke-static {v1, v7, v5, v6}, Landroid/text/format/DateFormat;->getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;

    move-result-object v7

    .line 531
    .restart local v7    # "replacement":Ljava/lang/String;
    goto :goto_ad

    .line 522
    .end local v7    # "replacement":Ljava/lang/String;
    :sswitch_a2
    const/16 v7, 0x9

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    aget-object v7, v2, v7

    .line 523
    .restart local v7    # "replacement":Ljava/lang/String;
    nop

    .line 576
    :goto_ad
    if-eqz v7, :cond_bc

    .line 577
    add-int v8, v4, v5

    invoke-virtual {v0, v4, v8, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 578
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 579
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 504
    .end local v6    # "c":I
    .end local v7    # "replacement":Ljava/lang/String;
    :cond_bc
    :goto_bc
    add-int/2addr v4, v5

    goto/16 :goto_16

    .line 583
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_bf
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_c9

    .line 584
    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    .line 586
    :cond_c9
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :sswitch_data_ce
    .sparse-switch
        0x41 -> :sswitch_a2
        0x45 -> :sswitch_97
        0x48 -> :sswitch_8c
        0x4b -> :sswitch_79
        0x4c -> :sswitch_6f
        0x4d -> :sswitch_6f
        0x61 -> :sswitch_a2
        0x63 -> :sswitch_97
        0x64 -> :sswitch_65
        0x68 -> :sswitch_79
        0x6b -> :sswitch_8c
        0x6d -> :sswitch_5a
        0x73 -> :sswitch_4f
        0x79 -> :sswitch_45
        0x7a -> :sswitch_40
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .line 437
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 438
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 439
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .registers 7
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .line 632
    div-int/lit16 p0, p0, 0x3e8

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v0, "tb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    if-gez p0, :cond_11

    .line 636
    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    neg-int p0, p0

    goto :goto_16

    .line 639
    :cond_11
    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :goto_16
    div-int/lit16 v1, p0, 0xe10

    .line 643
    .local v1, "hours":I
    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 645
    .local v2, "minutes":I
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 268
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 269
    .local v0, "uLocale":Landroid/icu/util/ULocale;
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v1

    .line 270
    .local v1, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    const-wide/32 v2, 0xa258efe

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 272
    .local v2, "allowDuplicateFields":Z
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "pattern":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 725
    if-eqz p1, :cond_2f

    if-eqz p0, :cond_2f

    const-string v0, "en"

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2f

    .line 729
    :cond_11
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "region":Ljava/lang/String;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 731
    return-object p1

    .line 734
    :cond_26
    const/16 v1, 0x202f

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 726
    .end local v0    # "region":Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-object p1
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 324
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 359
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .registers 12
    .param p0, "pattern"    # Ljava/lang/String;

    .line 366
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 367
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 368
    .local v1, "resultIndex":I
    const/4 v2, 0x0

    .line 369
    .local v2, "sawDay":Z
    const/4 v3, 0x0

    .line 370
    .local v3, "sawMonth":Z
    const/4 v4, 0x0

    .line 372
    .local v4, "sawYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_c3

    .line 373
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 374
    .local v6, "ch":C
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_9a

    if-eq v6, v7, :cond_9a

    if-eq v6, v9, :cond_9a

    if-ne v6, v8, :cond_24

    goto/16 :goto_9a

    .line 385
    :cond_24
    const/16 v7, 0x47

    if-ne v6, v7, :cond_2a

    goto/16 :goto_bf

    .line 387
    :cond_2a
    const/16 v7, 0x61

    if-lt v6, v7, :cond_32

    const/16 v7, 0x7a

    if-le v6, v7, :cond_3b

    :cond_32
    const/16 v7, 0x41

    if-lt v6, v7, :cond_5e

    const/16 v7, 0x5a

    if-le v6, v7, :cond_3b

    goto :goto_5e

    .line 388
    :cond_3b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 390
    :cond_5e
    :goto_5e
    const/16 v7, 0x27

    if-ne v6, v7, :cond_bf

    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_75

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_75

    .line 392
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 394
    :cond_75
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 395
    const/4 v7, -0x1

    if-eq v5, v7, :cond_81

    .line 398
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 396
    :cond_81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad quoting in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 375
    :cond_9a
    :goto_9a
    if-ne v6, v10, :cond_a6

    if-nez v2, :cond_a6

    .line 376
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .local v7, "resultIndex":I
    aput-char v10, v0, v1

    .line 377
    const/4 v1, 0x1

    move v2, v1

    move v1, v7

    .end local v2    # "sawDay":Z
    .local v1, "sawDay":Z
    goto :goto_bf

    .line 378
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v2    # "sawDay":Z
    :cond_a6
    if-eq v6, v7, :cond_aa

    if-ne v6, v9, :cond_b4

    :cond_aa
    if-nez v3, :cond_b4

    .line 379
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v9, v0, v1

    .line 380
    const/4 v1, 0x1

    move v3, v1

    move v1, v7

    .end local v3    # "sawMonth":Z
    .local v1, "sawMonth":Z
    goto :goto_bf

    .line 381
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v3    # "sawMonth":Z
    :cond_b4
    if-ne v6, v8, :cond_bf

    if-nez v4, :cond_bf

    .line 382
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "resultIndex":I
    .restart local v7    # "resultIndex":I
    aput-char v8, v0, v1

    .line 383
    const/4 v1, 0x1

    move v4, v1

    move v1, v7

    .line 372
    .end local v6    # "ch":C
    .end local v7    # "resultIndex":I
    .restart local v1    # "resultIndex":I
    :cond_bf
    :goto_bf
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 404
    .end local v5    # "i":I
    :cond_c3
    return-object v0
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 409
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 411
    .local v1, "df":Ljava/text/DateFormat;
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_1b

    .line 412
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 415
    :cond_1b
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "!(df instanceof SimpleDateFormat)"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static getDayOfWeekString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 8
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 591
    const/16 v0, 0x63

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 592
    .local v0, "standalone":Z
    :goto_9
    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    .line 594
    .local v1, "context":I
    :goto_d
    const/4 v2, 0x5

    if-ne p2, v2, :cond_12

    .line 595
    const/4 v2, 0x2

    .local v2, "width":I
    goto :goto_18

    .line 596
    .end local v2    # "width":I
    :cond_12
    const/4 v2, 0x4

    if-ne p2, v2, :cond_17

    .line 597
    const/4 v2, 0x1

    .restart local v2    # "width":I
    goto :goto_18

    .line 599
    .end local v2    # "width":I
    :cond_17
    const/4 v2, 0x0

    .line 601
    .restart local v2    # "width":I
    :goto_18
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    return-object v3
.end method

.method public static getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 717
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    const-class v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v1, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 335
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 346
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method private static getMonthString(Landroid/icu/text/DateFormatSymbols;III)Ljava/lang/String;
    .registers 9
    .param p0, "dfs"    # Landroid/icu/text/DateFormatSymbols;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .line 605
    const/16 v0, 0x4c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 606
    .local v0, "standalone":Z
    :goto_9
    if-eqz v0, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    move v3, v1

    .line 607
    .local v3, "monthContext":I
    :goto_e
    const/4 v4, 0x5

    if-ne p2, v4, :cond_19

    .line 608
    const/4 v1, 0x2

    invoke-virtual {p0, v3, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    .line 609
    :cond_19
    const/4 v4, 0x4

    if-ne p2, v4, :cond_23

    .line 610
    invoke-virtual {p0, v3, v2}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    .line 611
    :cond_23
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2d

    .line 612
    invoke-virtual {p0, v3, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1

    .line 615
    :cond_2d
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 285
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 309
    .local v0, "uLocale":Landroid/icu/util/ULocale;
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v1

    .line 310
    .local v1, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "Hm"

    invoke-virtual {v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 311
    :cond_1f
    const-string/jumbo v2, "hm"

    invoke-virtual {v1, v2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_26
    nop

    .line 312
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getCompatibleEnglishPattern(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .line 620
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 621
    .local v0, "tz":Ljava/util/TimeZone;
    const/4 v1, 0x2

    const/16 v2, 0x10

    if-ge p1, v1, :cond_19

    .line 622
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 623
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 622
    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 626
    :cond_19
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    move v1, v2

    .line 627
    .local v1, "dst":Z
    :goto_23
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getYearString(II)Ljava/lang/String;
    .registers 5
    .param p0, "year"    # I
    .param p1, "count"    # I

    .line 651
    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    rem-int/lit8 v1, p0, 0x64

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 652
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 651
    :goto_1c
    return-object v0
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .registers 9
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .line 469
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 471
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 473
    .local v1, "length":I
    const/4 v2, 0x0

    .line 474
    .local v2, "insideQuote":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_23

    .line 475
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 476
    .local v4, "c":C
    const/16 v5, 0x27

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1b

    .line 477
    if-nez v2, :cond_18

    goto :goto_19

    :cond_18
    move v6, v0

    :goto_19
    move v2, v6

    goto :goto_20

    .line 478
    :cond_1b
    if-nez v2, :cond_20

    .line 479
    if-ne v4, p1, :cond_20

    .line 480
    return v6

    .line 474
    .end local v4    # "c":C
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 485
    .end local v3    # "i":I
    :cond_23
    return v0
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .line 455
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 200
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 203
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourLocale(Ljava/util/Locale;)Z

    move-result v1

    return v1
.end method

.method public static is24HourLocale(Ljava/util/Locale;)Z
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 214
    sget-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    sget-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 216
    sget-boolean v1, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v0

    return v1

    .line 218
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_35

    .line 220
    nop

    .line 221
    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 224
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_2a

    .line 225
    move-object v2, v1

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 226
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "pattern":Ljava/lang/String;
    const/16 v4, 0x48

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v2

    .line 228
    .end local v3    # "pattern":Ljava/lang/String;
    .local v2, "is24Hour":Z
    goto :goto_2b

    .line 229
    .end local v2    # "is24Hour":Z
    :cond_2a
    const/4 v2, 0x0

    .line 232
    .restart local v2    # "is24Hour":Z
    :goto_2b
    monitor-enter v0

    .line 233
    :try_start_2c
    sput-object p0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 234
    sput-boolean v2, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 235
    monitor-exit v0

    .line 237
    return v2

    .line 235
    :catchall_32
    move-exception v3

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw v3

    .line 218
    .end local v1    # "natural":Ljava/text/DateFormat;
    .end local v2    # "is24Hour":Z
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .registers 5
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .line 705
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
