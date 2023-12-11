.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mFontWeightAdjustment:I

.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "style"    # I

    .line 64
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/text/style/StyleSpan;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 79
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 80
    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 81
    iput p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    .line 92
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;II)V
    .registers 11
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "style"    # I
    .param p2, "fontWeightAdjustment"    # I

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 153
    .local v0, "old":Landroid/graphics/Typeface;
    if-nez v0, :cond_8

    .line 154
    const/4 v1, 0x0

    .local v1, "oldStyle":I
    goto :goto_c

    .line 156
    .end local v1    # "oldStyle":I
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 159
    .restart local v1    # "oldStyle":I
    :goto_c
    or-int v2, v1, p1

    .line 163
    .local v2, "want":I
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v3

    const/high16 v4, -0x41800000    # -0.25f

    cmpl-float v3, v3, v4

    const/4 v5, 0x1

    if-nez v3, :cond_26

    if-ne p1, v5, :cond_26

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    if-ne v0, v3, :cond_26

    .line 164
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 168
    :cond_26
    if-nez v0, :cond_2d

    .line 169
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, "tf":Landroid/graphics/Typeface;
    goto :goto_31

    .line 171
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :cond_2d
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 175
    .restart local v3    # "tf":Landroid/graphics/Typeface;
    :goto_31
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_57

    .line 176
    if-eqz p2, :cond_57

    const v6, 0x7fffffff

    if-eq p2, v6, :cond_57

    .line 178
    nop

    .line 179
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getWeight()I

    move-result v6

    add-int/2addr v6, p2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 178
    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 181
    .local v6, "newWeight":I
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_52

    move v7, v5

    goto :goto_53

    :cond_52
    const/4 v7, 0x0

    .line 182
    .local v7, "italic":Z
    :goto_53
    invoke-static {v3, v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    .line 186
    .end local v6    # "newWeight":I
    .end local v7    # "italic":Z
    :cond_57
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    not-int v6, v6

    and-int/2addr v6, v2

    .line 188
    .local v6, "fake":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_64

    .line 189
    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 192
    :cond_64
    and-int/lit8 v5, v6, 0x2

    if-eqz v5, :cond_6b

    .line 193
    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 196
    :cond_6b
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getFontWeightAdjustment()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    .line 96
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    .line 102
    const/4 v0, 0x7

    return v0
.end method

.method public getStyle()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StyleSpan{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getFontWeightAdjustment()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 141
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 142
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 146
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    .line 147
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 113
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
