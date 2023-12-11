.class public Landroid/graphics/RectF;
.super Ljava/lang/Object;
.source "RectF.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 564
    new-instance v0, Landroid/graphics/RectF$1;

    invoke-direct {v0}, Landroid/graphics/RectF$1;-><init>()V

    sput-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 58
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 59
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 60
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_f

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_23

    .line 85
    :cond_f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 86
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 87
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 88
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 90
    :goto_23
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_f

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_1f

    .line 74
    :cond_f
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 75
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 76
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 77
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 79
    :goto_1f
    return-void
.end method

.method public static intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 4
    .param p0, "a"    # Landroid/graphics/RectF;
    .param p1, "b"    # Landroid/graphics/RectF;

    .line 440
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method


# virtual methods
.method public final centerX()F
    .registers 3

    .line 175
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .registers 3

    .line 183
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 292
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_22

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_22

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_22

    cmpg-float v0, p1, v1

    if-gez v0, :cond_22

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_22

    cmpg-float v0, p2, v3

    if-gez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public contains(FFFF)Z
    .registers 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 310
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_22

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_22

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_22

    cmpg-float v0, v2, p2

    if-gtz v0, :cond_22

    cmpl-float v0, v1, p3

    if-ltz v0, :cond_22

    cmpl-float v0, v3, p4

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public contains(Landroid/graphics/RectF;)Z
    .registers 7
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 326
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2a

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_2a

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2a

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2a

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2a

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public describeContents()I
    .registers 2

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 95
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 97
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/RectF;

    .line 98
    .local v2, "r":Landroid/graphics/RectF;
    iget v3, p0, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    return v0

    .line 95
    .end local v2    # "r":Landroid/graphics/RectF;
    :cond_38
    :goto_38
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 103
    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, v3

    .line 104
    .local v0, "result":I
    :goto_e
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_1b

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_1c

    :cond_1b
    move v4, v3

    :goto_1c
    add-int/2addr v2, v4

    .line 105
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget v4, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_2a

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_2b

    :cond_2a
    move v4, v3

    :goto_2b
    add-int/2addr v0, v4

    .line 106
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_38

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_38
    add-int/2addr v2, v3

    .line 107
    .end local v0    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public final height()F
    .registers 3

    .line 167
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public inset(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 274
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 275
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 276
    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 277
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 278
    return-void
.end method

.method public intersect(FFFF)Z
    .registers 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 351
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v0, p3

    if-gez v1, :cond_32

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_32

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v2, p4

    if-gez v3, :cond_32

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, p2, v3

    if-gez v4, :cond_32

    .line 353
    cmpg-float v0, v0, p1

    if-gez v0, :cond_1e

    .line 354
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 356
    :cond_1e
    cmpg-float v0, v2, p2

    if-gez v0, :cond_24

    .line 357
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 359
    :cond_24
    cmpl-float v0, v1, p3

    if-lez v0, :cond_2a

    .line 360
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 362
    :cond_2a
    cmpl-float v0, v3, p4

    if-lez v0, :cond_30

    .line 363
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 365
    :cond_30
    const/4 v0, 0x1

    return v0

    .line 367
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public intersect(Landroid/graphics/RectF;)Z
    .registers 6
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 382
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v0

    return v0
.end method

.method public intersects(FFFF)Z
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 425
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_1a

    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p4

    if-gez v0, :cond_1a

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final isEmpty()Z
    .registers 3

    .line 151
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_13

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public offset(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 244
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 245
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 246
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 247
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 248
    return-void
.end method

.method public offsetTo(FF)V
    .registers 5
    .param p1, "newLeft"    # F
    .param p2, "newTop"    # F

    .line 258
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 259
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 260
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 261
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 262
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 142
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 143
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 145
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 595
    return-void
.end method

.method public round(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "dst"    # Landroid/graphics/Rect;

    .line 449
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 450
    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v3

    .line 449
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 451
    return-void
.end method

.method public roundOut(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "dst"    # Landroid/graphics/Rect;

    .line 458
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 459
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 458
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 460
    return-void
.end method

.method public scale(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 602
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1a

    .line 603
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 604
    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 605
    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 606
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 608
    :cond_1a
    return-void
.end method

.method public set(FFFF)V
    .registers 5
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 204
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 205
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 206
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 207
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 208
    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/Rect;

    .line 230
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 231
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 232
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 233
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 234
    return-void
.end method

.method public set(Landroid/graphics/RectF;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/RectF;

    .line 217
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 218
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 219
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 220
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 221
    return-void
.end method

.method public setEmpty()V
    .registers 2

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 191
    return-void
.end method

.method public setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 7
    .param p1, "a"    # Landroid/graphics/RectF;
    .param p2, "b"    # Landroid/graphics/RectF;

    .line 398
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_46

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_46

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_46

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_46

    .line 400
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 401
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 402
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 403
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 404
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method public sort()V
    .registers 3

    .line 531
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 532
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 533
    .local v0, "temp":F
    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 534
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 536
    .end local v0    # "temp":F
    :cond_e
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    .line 537
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 538
    .restart local v0    # "temp":F
    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 539
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 541
    .end local v0    # "temp":F
    :cond_1c
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 511
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 512
    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_11

    .line 513
    :cond_9
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_11

    .line 514
    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 516
    :cond_11
    :goto_11
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1a

    .line 517
    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_22

    .line 518
    :cond_1a
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_22

    .line 519
    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    .line 521
    :cond_22
    :goto_22
    return-void
.end method

.method public union(FFFF)V
    .registers 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 473
    cmpg-float v0, p1, p3

    if-gez v0, :cond_39

    cmpg-float v0, p2, p4

    if-gez v0, :cond_39

    .line 474
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_31

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_31

    .line 475
    cmpl-float v0, v0, p1

    if-lez v0, :cond_1e

    .line 476
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 477
    :cond_1e
    cmpl-float v0, v2, p2

    if-lez v0, :cond_24

    .line 478
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 479
    :cond_24
    cmpg-float v0, v1, p3

    if-gez v0, :cond_2a

    .line 480
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 481
    :cond_2a
    cmpg-float v0, v3, p4

    if-gez v0, :cond_39

    .line 482
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_39

    .line 484
    :cond_31
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 485
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 486
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 487
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    .line 490
    :cond_39
    :goto_39
    return-void
.end method

.method public union(Landroid/graphics/RectF;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 500
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->union(FFFF)V

    .line 501
    return-void
.end method

.method public final width()F
    .registers 3

    .line 159
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 558
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 559
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 560
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 561
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 562
    return-void
.end method
