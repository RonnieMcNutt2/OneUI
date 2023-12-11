.class public final Landroid/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic; = null

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_TEXT_DIRECTION_HEURISTIC()Landroid/text/TextDirectionHeuristic;
    .registers 1

    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;
    .registers 1

    invoke-static {p0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smisRtlLocale(Ljava/util/Locale;)Z
    .registers 1

    invoke-static {p0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 90
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    .line 120
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 125
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 218
    new-instance v0, Landroid/text/BidiFormatter;

    sget-object v1, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    .line 223
    new-instance v0, Landroid/text/BidiFormatter;

    const/4 v1, 0x1

    sget-object v2, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILandroid/text/TextDirectionHeuristic;)V
    .registers 4
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-boolean p1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    .line 271
    iput p2, p0, Landroid/text/BidiFormatter;->mFlags:I

    .line 272
    iput-object p3, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;
    .registers 2
    .param p0, "isRtlContext"    # Z

    .line 517
    if-eqz p0, :cond_5

    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    :goto_7
    return-object v0
.end method

.method private static getEntryDir(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 569
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v0

    return v0
.end method

.method private static getExitDir(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 552
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/text/BidiFormatter;
    .registers 1

    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 261
    invoke-static {p0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Landroid/text/BidiFormatter;
    .registers 2
    .param p0, "rtlContext"    # Z

    .line 250
    invoke-static {p0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 527
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method


# virtual methods
.method public getStereoReset()Z
    .registers 2

    .line 287
    iget v0, p0, Landroid/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 367
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isRtlContext()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    return v0
.end method

.method public markAfter(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 308
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 310
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 311
    :cond_16
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    return-object v1

    .line 313
    :cond_19
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 314
    :cond_26
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    return-object v1

    .line 316
    :cond_29
    const-string v1, ""

    return-object v1
.end method

.method public markBefore(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 337
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 339
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 340
    :cond_16
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    return-object v1

    .line 342
    :cond_19
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 343
    :cond_26
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    return-object v1

    .line 345
    :cond_29
    const-string v1, ""

    return-object v1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 513
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    .line 420
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 421
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 422
    .local v0, "isRtl":Z
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 423
    .local v1, "result":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Landroid/text/BidiFormatter;->getStereoReset()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz p3, :cond_29

    .line 424
    nop

    .line 425
    if-eqz v0, :cond_20

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_22

    :cond_20
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 424
    :goto_22
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 427
    :cond_29
    iget-boolean v2, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v0, v2, :cond_40

    .line 428
    if-eqz v0, :cond_32

    const/16 v2, 0x202b

    goto :goto_34

    :cond_32
    const/16 v2, 0x202a

    :goto_34
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 429
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 430
    const/16 v2, 0x202c

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_43

    .line 432
    :cond_40
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 434
    :goto_43
    if-eqz p3, :cond_54

    .line 435
    nop

    .line 436
    if-eqz v0, :cond_4b

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_4d

    :cond_4b
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 435
    :goto_4d
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 438
    :cond_54
    return-object v1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "isolate"    # Z

    .line 491
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 502
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    .line 402
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 403
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isolate"    # Z

    .line 478
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
