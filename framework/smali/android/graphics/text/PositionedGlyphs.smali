.class public final Landroid/graphics/text/PositionedGlyphs;
.super Ljava/lang/Object;
.source "PositionedGlyphs.java"


# static fields
.field private static final REGISTRY:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutPtr:J

.field private final mXOffset:F

.field private final mYOffset:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    const-class v0, Landroid/graphics/Typeface;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/PositionedGlyphs;->nReleaseFunc()J

    move-result-wide v1

    .line 47
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/PositionedGlyphs;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 46
    return-void
.end method

.method public constructor <init>(JFF)V
    .registers 13
    .param p1, "layoutPtr"    # J
    .param p3, "xOffset"    # F
    .param p4, "yOffset"    # F

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-wide p1, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    .line 176
    invoke-static {p1, p2}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result v0

    .line 177
    .local v0, "glyphCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    .line 178
    iput p3, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    .line 179
    iput p4, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    .line 181
    const-wide/16 v1, 0x0

    .line 182
    .local v1, "prevPtr":J
    const/4 v3, 0x0

    .line 183
    .local v3, "prevFont":Landroid/graphics/fonts/Font;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_31

    .line 184
    invoke-static {p1, p2, v4}, Landroid/graphics/text/PositionedGlyphs;->nGetFont(JI)J

    move-result-wide v5

    .line 185
    .local v5, "ptr":J
    cmp-long v7, v1, v5

    if-eqz v7, :cond_29

    .line 186
    move-wide v1, v5

    .line 187
    new-instance v7, Landroid/graphics/fonts/Font;

    invoke-direct {v7, v5, v6}, Landroid/graphics/fonts/Font;-><init>(J)V

    move-object v3, v7

    .line 189
    :cond_29
    iget-object v7, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v5    # "ptr":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 192
    .end local v4    # "i":I
    :cond_31
    sget-object v4, Landroid/graphics/text/PositionedGlyphs;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 193
    return-void
.end method

.method private static native nGetAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFont(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetGlyphCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetGlyphId(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTotalAdvance(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetX(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetY(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 217
    :cond_4
    instance-of v1, p1, Landroid/graphics/text/PositionedGlyphs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 218
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/graphics/text/PositionedGlyphs;

    .line 220
    .local v1, "that":Landroid/graphics/text/PositionedGlyphs;
    iget v3, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    iget v4, v1, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_68

    iget v3, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    iget v4, v1, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    goto :goto_68

    .line 221
    :cond_1e
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    .line 223
    :cond_29
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v4

    if-ge v3, v4, :cond_67

    .line 224
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v5

    if-eq v4, v5, :cond_3b

    return v2

    .line 225
    :cond_3b
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_48

    return v2

    .line 226
    :cond_48
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_55

    return v2

    .line 227
    :cond_55
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/fonts/Font;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    return v2

    .line 223
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 230
    .end local v3    # "i":I
    :cond_67
    return v0

    .line 220
    :cond_68
    :goto_68
    return v2
.end method

.method public getAdvance()F
    .registers 3

    .line 66
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetTotalAdvance(J)F

    move-result v0

    return v0
.end method

.method public getAscent()F
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetAscent(J)F

    move-result v0

    return v0
.end method

.method public getDescent()F
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetDescent(J)F

    move-result v0

    return v0
.end method

.method public getFont(I)Landroid/graphics/fonts/Font;
    .registers 5
    .param p1, "index"    # I

    .line 129
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 130
    iget-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    return-object v0
.end method

.method public getGlyphId(I)I
    .registers 5
    .param p1, "index"    # I

    .line 141
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 142
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphId(JI)I

    move-result v0

    return v0
.end method

.method public getGlyphX(I)F
    .registers 5
    .param p1, "index"    # I

    .line 152
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 153
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetX(JI)F

    move-result v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getGlyphY(I)F
    .registers 5
    .param p1, "index"    # I

    .line 163
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 164
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetY(JI)F

    move-result v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOffsetX()F
    .registers 2

    .line 99
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    .line 108
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    return v0
.end method

.method public glyphCount()I
    .registers 3

    .line 118
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 235
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 236
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 238
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 237
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 240
    .end local v1    # "i":I
    :cond_46
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 247
    if-eqz v1, :cond_15

    .line 248
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") font = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 254
    .end local v1    # "i":I
    :cond_62
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PositionedGlyphs{glyphs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mXOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mYOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    return-object v1
.end method
