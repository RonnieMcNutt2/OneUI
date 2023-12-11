.class public Landroid/text/method/TimeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "TimeKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static final SKELETON_12HOUR:Ljava/lang/String; = "hms"

.field private static final SKELETON_24HOUR:Ljava/lang/String; = "Hms"

.field private static final SYMBOLS_TO_IGNORE:Ljava/lang/String; = "ahHKkms"

.field private static final sInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/text/method/TimeKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mCharacters:[C

.field private final mNeedsAdvancedInput:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 128
    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_18

    sput-object v0, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/TimeKeyListener;->sLock:Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/TimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    return-void

    :array_18
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
        0x61s
        0x6ds
        0x70s
        0x3as
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/method/TimeKeyListener;-><init>(Ljava/util/Locale;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 9
    .param p1, "locale"    # Ljava/util/Locale;

    .line 67
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 71
    .local v0, "chars":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Character;>;"
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    .line 72
    invoke-static {v0, p1}, Landroid/text/method/NumberKeyListener;->addAmPmChars(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 73
    const-string/jumbo v1, "hms"

    const-string v4, "ahHKkms"

    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 75
    const-string v1, "Hms"

    invoke-static {v0, p1, v1, v4}, Landroid/text/method/NumberKeyListener;->addFormatCharsFromSkeleton(Ljava/util/Collection;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    move v1, v3

    .line 77
    .local v1, "success":Z
    :goto_2c
    if-eqz v1, :cond_4f

    .line 78
    invoke-static {v0}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object v4

    iput-object v4, p0, Landroid/text/method/TimeKeyListener;->mCharacters:[C

    .line 79
    if-eqz p1, :cond_45

    const-string v5, "en"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 83
    iput-boolean v3, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_55

    .line 85
    :cond_45
    sget-object v3, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v3

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    goto :goto_55

    .line 88
    :cond_4f
    sget-object v2, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    iput-object v2, p0, Landroid/text/method/TimeKeyListener;->mCharacters:[C

    .line 89
    iput-boolean v3, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    .line 91
    :goto_55
    return-void
.end method

.method public static getInstance()Landroid/text/method/TimeKeyListener;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/method/TimeKeyListener;->getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 108
    sget-object v0, Landroid/text/method/TimeKeyListener;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Landroid/text/method/TimeKeyListener;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/method/TimeKeyListener;

    .line 110
    .local v2, "instance":Landroid/text/method/TimeKeyListener;
    if-nez v2, :cond_16

    .line 111
    new-instance v3, Landroid/text/method/TimeKeyListener;

    invoke-direct {v3, p0}, Landroid/text/method/TimeKeyListener;-><init>(Ljava/util/Locale;)V

    move-object v2, v3

    .line 112
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_16
    monitor-exit v0

    .line 115
    return-object v2

    .line 114
    .end local v2    # "instance":Landroid/text/method/TimeKeyListener;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/text/method/TimeKeyListener;->mCharacters:[C

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .line 41
    iget-boolean v0, p0, Landroid/text/method/TimeKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_6

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_6
    const/16 v0, 0x24

    return v0
.end method
