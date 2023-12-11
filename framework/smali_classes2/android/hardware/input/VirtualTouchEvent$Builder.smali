.class public final Landroid/hardware/input/VirtualTouchEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualTouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualTouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mEventTimeNanos:J

.field private mMajorAxisSize:F

.field private mPointerId:I

.field private mPressure:F

.field private mToolType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    .line 207
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    .line 208
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    .line 209
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    .line 210
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    .line 211
    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    .line 212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualTouchEvent;
    .registers 14

    .line 222
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    if-eqz v0, :cond_4e

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4e

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-eq v0, v1, :cond_4e

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    .line 223
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 227
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_27

    iget v3, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-ne v3, v1, :cond_2e

    :cond_27
    iget v3, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    if-ne v3, v1, :cond_36

    if-ne v0, v2, :cond_2e

    goto :goto_36

    .line 229
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ACTION_CANCEL and TOOL_TYPE_PALM must always appear together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_36
    :goto_36
    new-instance v0, Landroid/hardware/input/VirtualTouchEvent;

    iget v3, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    iget v4, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    iget v5, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    iget v6, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    iget v7, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    iget v8, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    iget v9, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    iget-wide v10, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mEventTimeNanos:J

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroid/hardware/input/VirtualTouchEvent;-><init>(IIIFFFFJLandroid/hardware/input/VirtualTouchEvent-IA;)V

    return-object v0

    .line 224
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual touch event with unset required fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAction(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4
    .param p1, "action"    # I

    .line 273
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    goto :goto_14

    .line 275
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported touch event action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_14
    :goto_14
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mAction:I

    .line 278
    return-object p0
.end method

.method public setEventTimeNanos(J)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 5
    .param p1, "eventTimeNanos"    # J

    .line 348
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 351
    iput-wide p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mEventTimeNanos:J

    .line 352
    return-object p0

    .line 349
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMajorAxisSize(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4
    .param p1, "majorAxisSize"    # F

    .line 330
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 334
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mMajorAxisSize:F

    .line 335
    return-object p0

    .line 331
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch event major axis size cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPointerId(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 5
    .param p1, "pointerId"    # I

    .line 245
    if-ltz p1, :cond_9

    const/16 v0, 0xf

    if-gt p1, v0, :cond_9

    .line 250
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPointerId:I

    .line 251
    return-object p0

    .line 246
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pointer id must be in the range 0 - 15inclusive, but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPressure(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4
    .param p1, "pressure"    # F

    .line 317
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 320
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mPressure:F

    .line 321
    return-object p0

    .line 318
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch event pressure cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setToolType(I)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 4
    .param p1, "toolType"    # I

    .line 260
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 261
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported touch event tool type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_f
    :goto_f
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mToolType:I

    .line 264
    return-object p0
.end method

.method public setX(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 2
    .param p1, "absX"    # F

    .line 287
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mX:F

    .line 288
    return-object p0
.end method

.method public setY(F)Landroid/hardware/input/VirtualTouchEvent$Builder;
    .registers 2
    .param p1, "absY"    # F

    .line 297
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent$Builder;->mY:F

    .line 298
    return-object p0
.end method
