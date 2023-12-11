.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapShader$FilterMode;
    }
.end annotation


# static fields
.field public static final FILTER_MODE_DEFAULT:I = 0x0

.field public static final FILTER_MODE_LINEAR:I = 0x2

.field public static final FILTER_MODE_NEAREST:I = 0x1


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mFilterFromPaint:Z

.field private mFilterMode:I

.field private mIsDirectSampled:Z

.field private mMaxAniso:I

.field private mRequestDirectSampling:Z

.field private mTileX:I

.field private mTileY:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I

    .line 119
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 120
    if-eqz p1, :cond_1c

    .line 123
    const-string v1, "Cannot create BitmapShader for recycled bitmap"

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 125
    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 126
    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    .line 127
    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 128
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 129
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 130
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 131
    return-void

    .line 121
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .line 116
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 117
    return-void
.end method

.method private static native nativeCreate(JJIIZZ)J
.end method

.method private static native nativeCreateWithMaxAniso(JJIIIZ)J
.end method


# virtual methods
.method protected createNativeInstance(JZ)J
    .registers 15
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 192
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    const-string v1, "BitmapShader\'s bitmap has been recycled"

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    .line 195
    .local v1, "enableLinearFilter":Z
    :goto_10
    if-nez v0, :cond_16

    .line 196
    iput-boolean p3, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 197
    iget-boolean v1, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 200
    :cond_16
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 201
    iput-boolean v2, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 203
    iget v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    if-lez v0, :cond_34

    .line 204
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    iget v6, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v7, p0, Landroid/graphics/BitmapShader;->mTileY:I

    iget v8, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    iget-boolean v9, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    move-wide v2, p1

    invoke-static/range {v2 .. v9}, Landroid/graphics/BitmapShader;->nativeCreateWithMaxAniso(JJIIIZ)J

    move-result-wide v2

    return-wide v2

    .line 207
    :cond_34
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v8, p0, Landroid/graphics/BitmapShader;->mTileY:I

    iget-boolean v10, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    move-wide v3, p1

    move v9, v1

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapShader;->nativeCreate(JJIIZZ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getFilterMode()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    return v0
.end method

.method public getMaxAnisotropy()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    return v0
.end method

.method declared-synchronized getNativeInstanceWithDirectSampling()J
    .registers 3

    monitor-enter p0

    .line 185
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 186
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->getNativeInstance()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-wide v0

    .line 184
    .end local p0    # "this":Landroid/graphics/BitmapShader;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFilterMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 147
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-eq p1, v0, :cond_c

    .line 148
    iput p1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 150
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 152
    :cond_c
    return-void
.end method

.method public setMaxAnisotropy(I)V
    .registers 3
    .param p1, "maxAnisotropy"    # I

    .line 168
    iget v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    if-eq v0, p1, :cond_e

    if-lez p1, :cond_e

    .line 169
    iput p1, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 171
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 173
    :cond_e
    return-void
.end method

.method protected shouldDiscardNativeInstance(Z)Z
    .registers 4
    .param p1, "filterFromPaint"    # Z

    .line 215
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iget-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    if-eq v0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
