.class public Landroid/text/method/InsertModeTransformationMethod;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;,
        Landroid/text/method/InsertModeTransformationMethod$TransformedText;
    }
.end annotation


# instance fields
.field private mEnd:I

.field private final mOldTransformationMethod:Landroid/text/method/TransformationMethod;

.field private final mSingleLine:Z

.field private mStart:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I
    .registers 1

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I
    .registers 1

    iget p0, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$smintersect(IIII)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;->intersect(IIII)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(IIZLandroid/text/method/TransformationMethod;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "singleLine"    # Z
    .param p4, "oldTransformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    .line 91
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    .line 92
    iput-boolean p3, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    .line 93
    iput-object p4, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 94
    return-void
.end method

.method public constructor <init>(IZLandroid/text/method/TransformationMethod;)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "singleLine"    # Z
    .param p3, "oldTransformationMethod"    # Landroid/text/method/TransformationMethod;

    .line 85
    invoke-direct {p0, p1, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    .line 86
    return-void
.end method

.method private getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 118
    iget-boolean v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mSingleLine:Z

    if-nez v0, :cond_7

    .line 119
    const-string v0, "\n\n"

    return-object v0

    .line 121
    :cond_7
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, "\ufffd"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    .local v0, "singleLinePlaceholder":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 123
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    nop

    .line 124
    const/4 v2, 0x1

    const/high16 v3, 0x42d80000    # 108.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-double v3, v3

    .line 123
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 126
    .local v3, "widthPx":I
    new-instance v4, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;

    invoke-direct {v4, v3}, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 128
    return-object v0
.end method

.method private static intersect(IIII)Z
    .registers 5
    .param p0, "s1"    # I
    .param p1, "e1"    # I
    .param p2, "s2"    # I
    .param p3, "e2"    # I

    .line 484
    const/4 v0, 0x0

    if-le p0, p3, :cond_4

    return v0

    .line 485
    :cond_4
    if-ge p1, p2, :cond_7

    return v0

    .line 486
    :cond_7
    if-eq p0, p1, :cond_11

    if-eq p2, p3, :cond_11

    .line 487
    if-ne p0, p3, :cond_e

    return v0

    .line 488
    :cond_e
    if-ne p1, p2, :cond_11

    return v0

    .line 490
    :cond_11
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 191
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 159
    return-void
.end method

.method public getOldTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 134
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1c

    .line 135
    invoke-interface {v0, p1, p2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, "charSequence":Ljava/lang/CharSequence;
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1d

    .line 137
    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .line 138
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 140
    .end local v1    # "spannable":Landroid/text/Spannable;
    goto :goto_1d

    .line 142
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_1c
    move-object v0, p1

    .line 145
    .restart local v0    # "charSequence":Ljava/lang/CharSequence;
    :cond_1d
    :goto_1d
    invoke-direct {p0, p2}, Landroid/text/method/InsertModeTransformationMethod;->getPlaceholderText(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 146
    .local v1, "placeholderText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    invoke-direct {v2, p0, v0, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;-><init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 152
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mOldTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_c

    .line 153
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 156
    :cond_c
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 164
    iget v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    if-le p2, v0, :cond_5

    return-void

    .line 165
    :cond_5
    sub-int v1, p4, p3

    .line 169
    .local v1, "diff":I
    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    if-ge p2, v2, :cond_15

    .line 170
    add-int v3, p2, p3

    if-gt v3, v2, :cond_13

    .line 172
    add-int/2addr v2, v1

    iput v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    goto :goto_15

    .line 176
    :cond_13
    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    .line 180
    :cond_15
    :goto_15
    add-int v2, p2, p3

    if-gt v2, v0, :cond_1d

    .line 182
    add-int/2addr v0, v1

    iput v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    goto :goto_23

    .line 183
    :cond_1d
    if-ge p2, v0, :cond_23

    .line 186
    add-int v0, p2, p4

    iput v0, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    .line 188
    :cond_23
    :goto_23
    return-void
.end method

.method public update(Landroid/text/method/TransformationMethod;Z)Landroid/text/method/InsertModeTransformationMethod;
    .registers 6
    .param p1, "oldTransformationMethod"    # Landroid/text/method/TransformationMethod;
    .param p2, "singleLine"    # Z

    .line 109
    new-instance v0, Landroid/text/method/InsertModeTransformationMethod;

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod;->mStart:I

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod;->mEnd:I

    invoke-direct {v0, v1, v2, p2, p1}, Landroid/text/method/InsertModeTransformationMethod;-><init>(IIZLandroid/text/method/TransformationMethod;)V

    return-object v0
.end method
