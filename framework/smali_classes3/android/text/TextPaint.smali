.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 54
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 58
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 59
    return-void
.end method


# virtual methods
.method public getUnderlineThickness()F
    .registers 2

    .line 94
    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v0, :cond_7

    .line 95
    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    return v0

    .line 97
    :cond_7
    invoke-super {p0}, Landroid/graphics/Paint;->getUnderlineThickness()F

    move-result v0

    return v0
.end method

.method public set(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 66
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 68
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 69
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 70
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 71
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 72
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 73
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 74
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 75
    return-void
.end method

.method public setUnderlineText(IF)V
    .registers 3
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .line 85
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 86
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 87
    return-void
.end method
