.class public final Landroid/app/admin/SystemUpdatePolicy;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdatePolicy$InstallationOption;,
        Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;,
        Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;,
        Landroid/app/admin/SystemUpdatePolicy$SystemUpdatePolicyType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SystemUpdatePolicy;",
            ">;"
        }
    .end annotation
.end field

.field static final FREEZE_PERIOD_MAX_LENGTH:I = 0x5a

.field static final FREEZE_PERIOD_MIN_SEPARATION:I = 0x3c

.field private static final KEY_FREEZE_END:Ljava/lang/String; = "end"

.field private static final KEY_FREEZE_START:Ljava/lang/String; = "start"

.field private static final KEY_FREEZE_TAG:Ljava/lang/String; = "freeze"

.field private static final KEY_INSTALL_WINDOW_END:Ljava/lang/String; = "install_window_end"

.field private static final KEY_INSTALL_WINDOW_START:Ljava/lang/String; = "install_window_start"

.field private static final KEY_POLICY_TYPE:Ljava/lang/String; = "policy_type"

.field public static final SEM_TYPE_PAUSE:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "SystemUpdatePolicy"

.field public static final TYPE_INSTALL_AUTOMATIC:I = 0x1

.field public static final TYPE_INSTALL_WINDOWED:I = 0x2

.field public static final TYPE_PAUSE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TYPE_POSTPONE:I = 0x3

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final WINDOW_BOUNDARY:I = 0x5a0


# instance fields
.field private final mFreezePeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceWindowEnd:I

.field private mMaintenanceWindowStart:I

.field private mPolicyType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFreezePeriods(Landroid/app/admin/SystemUpdatePolicy;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMaintenanceWindowEnd(Landroid/app/admin/SystemUpdatePolicy;I)V
    .registers 2

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaintenanceWindowStart(Landroid/app/admin/SystemUpdatePolicy;I)V
    .registers 2

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPolicyType(Landroid/app/admin/SystemUpdatePolicy;I)V
    .registers 2

    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 806
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/SystemUpdatePolicy-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    return-void
.end method

.method public static createAutomaticInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 2

    .line 336
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .line 337
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    .line 338
    return-object v0
.end method

.method public static createPostponeInstallPolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 2

    .line 383
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .line 384
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    .line 385
    return-object v0
.end method

.method public static createWindowedInstallPolicy(II)Landroid/app/admin/SystemUpdatePolicy;
    .registers 4
    .param p0, "startTime"    # I
    .param p1, "endTime"    # I

    .line 362
    if-ltz p0, :cond_17

    const/16 v0, 0x5a0

    if-ge p0, v0, :cond_17

    if-ltz p1, :cond_17

    if-ge p1, v0, :cond_17

    .line 366
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .line 367
    .local v0, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    .line 368
    iput p0, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    .line 369
    iput p1, v0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    .line 370
    return-object v0

    .line 364
    .end local v0    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startTime and endTime must be inside [0, 1440)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dateToMillis(Ljava/time/LocalDate;)J
    .registers 3
    .param p0, "when"    # Ljava/time/LocalDate;

    .line 773
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 773
    return-wide v0
.end method

.method private getInstallationOptionRegardlessFreezeAt(J)Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
    .registers 16
    .param p1, "when"    # J

    .line 726
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_90

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    goto/16 :goto_90

    .line 728
    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_88

    .line 729
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 730
    .local v0, "query":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 732
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 733
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 734
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 735
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 736
    .local v2, "whenMillis":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 737
    .local v4, "windowStartMillis":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 738
    .local v6, "windowEndMillis":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 740
    .local v8, "dayInMillis":J
    cmp-long v10, v4, v2

    if-gtz v10, :cond_67

    cmp-long v10, v2, v6

    if-lez v10, :cond_73

    :cond_67
    cmp-long v10, v4, v6

    if-lez v10, :cond_7d

    cmp-long v10, v4, v2

    if-lez v10, :cond_73

    cmp-long v10, v2, v6

    if-gtz v10, :cond_7d

    .line 743
    :cond_73
    new-instance v10, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    sub-long v11, v6, v2

    add-long/2addr v11, v8

    rem-long/2addr v11, v8

    invoke-direct {v10, v1, v11, v12}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    return-object v10

    .line 746
    :cond_7d
    new-instance v1, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    sub-long v10, v4, v2

    add-long/2addr v10, v8

    rem-long/2addr v10, v8

    const/4 v12, 0x4

    invoke-direct {v1, v12, v10, v11}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    return-object v1

    .line 750
    .end local v0    # "query":Ljava/util/Calendar;
    .end local v2    # "whenMillis":J
    .end local v4    # "windowStartMillis":J
    .end local v6    # "windowEndMillis":J
    .end local v8    # "dayInMillis":J
    :cond_88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown policy type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_90
    :goto_90
    new-instance v1, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    return-object v1
.end method

.method static synthetic lambda$toString$0(Landroid/app/admin/FreezePeriod;)Ljava/lang/String;
    .registers 2
    .param p0, "n"    # Landroid/app/admin/FreezePeriod;

    .line 782
    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static millisToDate(J)Ljava/time/LocalDate;
    .registers 4
    .param p0, "when"    # J

    .line 766
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 839
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/app/admin/SystemUpdatePolicy;

    invoke-direct {v1}, Landroid/app/admin/SystemUpdatePolicy;-><init>()V

    .line 840
    .local v1, "policy":Landroid/app/admin/SystemUpdatePolicy;
    const-string/jumbo v2, "policy_type"

    .line 841
    const/4 v3, -0x1

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    .line 842
    const-string v2, "install_window_start"

    .line 843
    const/4 v3, 0x0

    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    .line 844
    const-string v2, "install_window_end"

    .line 845
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    .line 847
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 849
    .local v2, "outerDepth":I
    :cond_25
    :goto_25
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_69

    const/4 v3, 0x3

    if-ne v4, v3, :cond_36

    .line 850
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_69

    .line 851
    :cond_36
    if-eq v4, v3, :cond_25

    const/4 v3, 0x4

    if-ne v4, v3, :cond_3c

    .line 852
    goto :goto_25

    .line 854
    :cond_3c
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "freeze"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 855
    goto :goto_25

    .line 857
    :cond_49
    iget-object v3, v1, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    new-instance v5, Landroid/app/admin/FreezePeriod;

    const-string/jumbo v6, "start"

    .line 858
    invoke-interface {p0, v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;

    move-result-object v6

    const-string v7, "end"

    .line 859
    invoke-interface {p0, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/app/admin/FreezePeriod;-><init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V

    .line 857
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_68} :catch_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_68} :catch_6a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_68} :catch_6a

    goto :goto_25

    .line 861
    :cond_69
    return-object v1

    .line 862
    .end local v1    # "policy":Landroid/app/admin/SystemUpdatePolicy;
    .end local v2    # "outerDepth":I
    .end local v4    # "type":I
    :catch_6a
    move-exception v1

    .line 864
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SystemUpdatePolicy"

    const-string v3, "Load xml failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static roundUpLeapDay(Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .registers 3
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 755
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1c

    .line 756
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 758
    :cond_1c
    return-object p0
.end method

.method private timeUntilNextFreezePeriod(J)J
    .registers 9
    .param p1, "now"    # J

    .line 523
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 524
    .local v0, "sortedPeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->millisToDate(J)Ljava/time/LocalDate;

    move-result-object v1

    .line 525
    .local v1, "nowDate":Ljava/time/LocalDate;
    const/4 v2, 0x0

    .line 526
    .local v2, "nextFreezeStart":Ljava/time/LocalDate;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    .line 527
    .local v4, "interval":Landroid/app/admin/FreezePeriod;
    invoke-virtual {v4, v1}, Landroid/app/admin/FreezePeriod;->after(Ljava/time/LocalDate;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 528
    invoke-virtual {v4, v1}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/time/LocalDate;

    .line 529
    goto :goto_3a

    .line 530
    :cond_2b
    invoke-virtual {v4, v1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 533
    .end local v4    # "interval":Landroid/app/admin/FreezePeriod;
    goto :goto_f

    .line 531
    .restart local v4    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_32
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Given date is inside a freeze period"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 534
    .end local v4    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_3a
    :goto_3a
    if-nez v2, :cond_4c

    .line 537
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    invoke-virtual {v3, v1}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/time/LocalDate;

    .line 539
    :cond_4c
    invoke-static {v2}, Landroid/app/admin/SystemUpdatePolicy;->dateToMillis(Ljava/time/LocalDate;)J

    move-result-wide v3

    sub-long/2addr v3, p1

    return-wide v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFreezePeriod(Ljava/time/LocalDate;)Landroid/util/Pair;
    .registers 5
    .param p1, "now"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/FreezePeriod;

    .line 511
    .local v1, "interval":Landroid/app/admin/FreezePeriod;
    invoke-virtual {v1, p1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 512
    invoke-virtual {v1, p1}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 514
    .end local v1    # "interval":Landroid/app/admin/FreezePeriod;
    :cond_1d
    goto :goto_6

    .line 515
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreezePeriods()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallWindowEnd()I
    .registers 3

    .line 419
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 420
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    return v0

    .line 422
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method public getInstallWindowStart()I
    .registers 3

    .line 405
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 406
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    return v0

    .line 408
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method public getInstallationOptionAt(J)Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
    .registers 9
    .param p1, "when"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 684
    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->millisToDate(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 685
    .local v0, "whenDate":Ljava/time/LocalDate;
    invoke-virtual {p0, v0}, Landroid/app/admin/SystemUpdatePolicy;->getCurrentFreezePeriod(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object v1

    .line 686
    .local v1, "current":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/LocalDate;Ljava/time/LocalDate;>;"
    if-eqz v1, :cond_24

    .line 687
    new-instance v2, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/time/LocalDate;

    .line 688
    invoke-static {v3}, Landroid/app/admin/SystemUpdatePolicy;->roundUpLeapDay(Ljava/time/LocalDate;)Ljava/time/LocalDate;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/SystemUpdatePolicy;->dateToMillis(Ljava/time/LocalDate;)J

    move-result-wide v3

    sub-long/2addr v3, p1

    const/4 v5, 0x4

    invoke-direct {v2, v5, v3, v4}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;-><init>(IJ)V

    .line 687
    return-object v2

    .line 693
    :cond_24
    invoke-direct {p0, p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->getInstallationOptionRegardlessFreezeAt(J)Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    move-result-object v2

    .line 694
    .local v2, "option":Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
    iget-object v3, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_37

    .line 695
    invoke-direct {p0, p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->timeUntilNextFreezePeriod(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->limitEffectiveTime(J)V

    .line 697
    :cond_37
    return-object v2
.end method

.method public getPolicyType()I
    .registers 2

    .line 395
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 435
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdatePolicy;->validateType()V

    .line 436
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdatePolicy;->validateFreezePeriods()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_8

    .line 437
    const/4 v0, 0x1

    return v0

    .line 438
    :catch_8
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 8
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    const-string/jumbo v0, "policy_type"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    const-string v0, "install_window_start"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    const-string v0, "install_window_end"

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 877
    iget-object v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/FreezePeriod;

    .line 878
    .local v1, "interval":Landroid/app/admin/FreezePeriod;
    const-string v3, "freeze"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "start"

    invoke-interface {p1, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/MonthDay;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "end"

    invoke-interface {p1, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    .end local v1    # "interval":Landroid/app/admin/FreezePeriod;
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 883
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method public semGetInstallationOptionAt(J)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;
    .registers 8
    .param p1, "when"    # J

    .line 721
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/SystemUpdatePolicy;->getInstallationOptionAt(J)Landroid/app/admin/SystemUpdatePolicy$InstallationOption;

    move-result-object v0

    .line 722
    .local v0, "o":Landroid/app/admin/SystemUpdatePolicy$InstallationOption;
    new-instance v1, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;

    invoke-static {v0}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->-$$Nest$fgetmType(Landroid/app/admin/SystemUpdatePolicy$InstallationOption;)I

    move-result v2

    invoke-static {v0}, Landroid/app/admin/SystemUpdatePolicy$InstallationOption;->-$$Nest$fgetmEffectiveTime(Landroid/app/admin/SystemUpdatePolicy$InstallationOption;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;-><init>(IJ)V

    return-object v1
.end method

.method public setFreezePeriods(Ljava/util/List;)Landroid/app/admin/SystemUpdatePolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)",
            "Landroid/app/admin/SystemUpdatePolicy;"
        }
    .end annotation

    .line 489
    .local p1, "freezePeriods":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/FreezePeriod;>;"
    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->validatePeriods(Ljava/util/List;)V

    .line 490
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 492
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 779
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    .line 781
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    .line 782
    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/app/admin/SystemUpdatePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/app/admin/SystemUpdatePolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 779
    const-string v1, "SystemUpdatePolicy (type: %d, windowStart: %d, windowEnd: %d, freezes: [%s])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateAgainstPreviousFreezePeriod(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .registers 5
    .param p1, "prevPeriodStart"    # Ljava/time/LocalDate;
    .param p2, "prevPeriodEnd"    # Ljava/time/LocalDate;
    .param p3, "now"    # Ljava/time/LocalDate;

    .line 550
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, p3}, Landroid/app/admin/FreezePeriod;->validateAgainstPreviousFreezePeriod(Ljava/util/List;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    .line 552
    return-void
.end method

.method public validateFreezePeriods()V
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/app/admin/FreezePeriod;->validatePeriods(Ljava/util/List;)V

    .line 545
    return-void
.end method

.method public validateType()V
    .registers 3

    .line 449
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_2b

    .line 451
    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 452
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    if-ltz v0, :cond_1b

    const/16 v1, 0x5a0

    if-ge v0, v1, :cond_1b

    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    if-ltz v0, :cond_1b

    if-ge v0, v1, :cond_1b

    .line 459
    return-void

    .line 454
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid maintenance window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid system update policy type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2b
    :goto_2b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 792
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mPolicyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mMaintenanceWindowEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget-object v0, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 796
    .local v0, "freezeCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_52

    .line 798
    iget-object v2, p0, Landroid/app/admin/SystemUpdatePolicy;->mFreezePeriods:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    .line 799
    .local v2, "interval":Landroid/app/admin/FreezePeriod;
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getMonthValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getStart()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getMonthValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getEnd()Ljava/time/MonthDay;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    .end local v2    # "interval":Landroid/app/admin/FreezePeriod;
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 804
    .end local v1    # "i":I
    :cond_52
    return-void
.end method
