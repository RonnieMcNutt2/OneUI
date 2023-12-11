.class public final Landroid/text/DynamicLayout$Builder;
.super Ljava/lang/Object;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/DynamicLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBase:Ljava/lang/CharSequence;

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFallbackLineSpacing:Z

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mJustificationMode:I

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlignment(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBase(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFontMetricsInt(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpacingAdd(Landroid/text/DynamicLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpacingMult(Landroid/text/DynamicLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextDir(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$smrecycle(Landroid/text/DynamicLayout$Builder;)V
    .registers 1

    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 304
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 62
    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;
    .registers 6
    .param p0, "base"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "width"    # I

    .line 70
    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout$Builder;

    .line 71
    .local v0, "b":Landroid/text/DynamicLayout$Builder;
    if-nez v0, :cond_10

    .line 72
    new-instance v1, Landroid/text/DynamicLayout$Builder;

    invoke-direct {v1}, Landroid/text/DynamicLayout$Builder;-><init>()V

    move-object v0, v1

    .line 76
    :cond_10
    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    .line 77
    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 78
    iput-object p1, v0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 79
    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    .line 80
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 81
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 82
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    .line 83
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    .line 86
    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    .line 87
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 88
    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    .line 89
    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    .line 90
    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    .line 91
    return-object v0
.end method

.method private static recycle(Landroid/text/DynamicLayout$Builder;)V
    .registers 2
    .param p0, "b"    # Landroid/text/DynamicLayout$Builder;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    .line 100
    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 101
    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 102
    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public build()Landroid/text/DynamicLayout;
    .registers 3

    .line 281
    new-instance v0, Landroid/text/DynamicLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout-IA;)V

    .line 282
    .local v0, "result":Landroid/text/DynamicLayout;
    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    .line 283
    return-object v0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 127
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 128
    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "breakStrategy"    # I

    .line 236
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    .line 237
    return-object p0
.end method

.method public setDisplayText(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "display"    # Ljava/lang/CharSequence;

    .line 115
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 116
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 222
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 223
    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "ellipsizedWidth"    # I

    .line 206
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    .line 207
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "hyphenationFrequency"    # I

    .line 252
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    .line 253
    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "includePad"    # Z

    .line 173
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    .line 174
    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "justificationMode"    # I

    .line 266
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    .line 267
    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;
    .registers 3
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .line 157
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    .line 158
    iput p2, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    .line 159
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 141
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 142
    return-object p0
.end method

.method public setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "useLineSpacingFromFallbacks"    # Z

    .line 192
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    .line 193
    return-object p0
.end method
