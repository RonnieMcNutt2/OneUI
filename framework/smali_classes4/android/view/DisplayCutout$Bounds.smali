.class Landroid/view/DisplayCutout$Bounds;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bounds"
.end annotation


# instance fields
.field private final mRects:[Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/DisplayCutout$Bounds;->getRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Landroid/view/DisplayCutout$Bounds;->getRects()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misEmpty(Landroid/view/DisplayCutout$Bounds;)Z
    .registers 1

    invoke-direct {p0}, Landroid/view/DisplayCutout$Bounds;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mscale(Landroid/view/DisplayCutout$Bounds;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/DisplayCutout$Bounds;->scale(F)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 9
    .param p1, "left"    # Landroid/graphics/Rect;
    .param p2, "top"    # Landroid/graphics/Rect;
    .param p3, "right"    # Landroid/graphics/Rect;
    .param p4, "bottom"    # Landroid/graphics/Rect;
    .param p5, "copyArguments"    # Z

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    .line 172
    const/4 v1, 0x0

    invoke-static {p1, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 173
    const/4 v1, 0x1

    invoke-static {p2, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 174
    const/4 v1, 0x2

    invoke-static {p3, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 175
    const/4 v1, 0x3

    invoke-static {p4, p5}, Landroid/view/DisplayCutout;->-$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private constructor <init>([Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "rects"    # [Landroid/graphics/Rect;
    .param p2, "copyArguments"    # Z

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4b

    .line 184
    if-eqz p2, :cond_1f

    .line 185
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_1e

    .line 187
    iget-object v2, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .end local v0    # "i":I
    :cond_1e
    goto :goto_4a

    .line 190
    :cond_1f
    array-length v0, p1

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_48

    aget-object v2, p1, v1

    .line 191
    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz v2, :cond_2a

    .line 190
    .end local v2    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 192
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rects must have non-null elements: rects="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_48
    iput-object p1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    .line 199
    :goto_4a
    return-void

    .line 181
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rects must have exactly 4 elements: rects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout$Bounds-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private getRect(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "pos"    # I

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private getRects()[Landroid/graphics/Rect;
    .registers 6

    .line 215
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    .line 216
    .local v1, "rects":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_14

    .line 217
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v1, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 219
    .end local v2    # "i":I
    :cond_14
    return-object v1
.end method

.method private isEmpty()Z
    .registers 7

    .line 202
    iget-object v0, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 203
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 204
    return v2

    .line 202
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 207
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    .line 224
    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0    # "i":I
    :cond_e
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 239
    if-ne p1, p0, :cond_4

    .line 240
    const/4 v0, 0x1

    return v0

    .line 242
    :cond_4
    instance-of v0, p1, Landroid/view/DisplayCutout$Bounds;

    if-eqz v0, :cond_14

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayCutout$Bounds;

    .line 244
    .local v0, "b":Landroid/view/DisplayCutout$Bounds;
    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 246
    .end local v0    # "b":Landroid/view/DisplayCutout$Bounds;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 232
    .local v4, "rect":Landroid/graphics/Rect;
    const v5, 0xbc8f

    mul-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 231
    .end local v4    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 234
    :cond_16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout$Bounds;->mRects:[Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
