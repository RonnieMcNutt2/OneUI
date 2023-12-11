.class public final Landroid/view/inputmethod/SelectRangeGesture$Builder;
.super Ljava/lang/Object;
.source "SelectRangeGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SelectRangeGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEndArea:Landroid/graphics/RectF;

.field private mFallbackText:Ljava/lang/String;

.field private mGranularity:I

.field private mStartArea:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/view/inputmethod/SelectRangeGesture;
    .registers 8

    .line 185
    iget-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mStartArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mEndArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_30

    .line 186
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 189
    iget v0, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mGranularity:I

    if-lez v0, :cond_28

    .line 192
    new-instance v0, Landroid/view/inputmethod/SelectRangeGesture;

    iget v2, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mGranularity:I

    iget-object v3, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mStartArea:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mEndArea:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mFallbackText:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/SelectRangeGesture;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;Landroid/view/inputmethod/SelectRangeGesture-IA;)V

    return-object v0

    .line 190
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Selection granularity must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Selection area must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/SelectRangeGesture$Builder;
    .registers 2
    .param p1, "fallbackText"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mFallbackText:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setGranularity(I)Landroid/view/inputmethod/SelectRangeGesture$Builder;
    .registers 2
    .param p1, "granularity"    # I

    .line 109
    iput p1, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mGranularity:I

    .line 110
    return-object p0
.end method

.method public setSelectionEndArea(Landroid/graphics/RectF;)Landroid/view/inputmethod/SelectRangeGesture$Builder;
    .registers 2
    .param p1, "endArea"    # Landroid/graphics/RectF;

    .line 163
    iput-object p1, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mEndArea:Landroid/graphics/RectF;

    .line 164
    return-object p0
.end method

.method public setSelectionStartArea(Landroid/graphics/RectF;)Landroid/view/inputmethod/SelectRangeGesture$Builder;
    .registers 2
    .param p1, "startArea"    # Landroid/graphics/RectF;

    .line 134
    iput-object p1, p0, Landroid/view/inputmethod/SelectRangeGesture$Builder;->mStartArea:Landroid/graphics/RectF;

    .line 135
    return-object p0
.end method
