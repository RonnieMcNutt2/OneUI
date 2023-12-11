.class public Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetInputStreamSourceQMG"
.end annotation


# instance fields
.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mDensity:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V
    .registers 6
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 560
    iput-object p1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 561
    iput-object p2, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mResources:Landroid/content/res/Resources;

    .line 563
    iget v0, p3, Landroid/util/TypedValue;->density:I

    if-nez v0, :cond_11

    .line 564
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mDensity:I

    goto :goto_20

    .line 565
    :cond_11
    iget v0, p3, Landroid/util/TypedValue;->density:I

    const v1, 0xffff

    if-eq v0, v1, :cond_1d

    .line 566
    iget v0, p3, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mDensity:I

    goto :goto_20

    .line 568
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mDensity:I

    .line 570
    :goto_20
    return-void
.end method


# virtual methods
.method public createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .registers 4
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    monitor-enter p0

    .line 587
    :try_start_1
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_f

    .line 590
    nop

    .line 591
    .local v0, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 592
    invoke-static {v0, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 588
    .end local v0    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse AssetInputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;
    .end local p1    # "preferAnimation":Z
    throw v0

    .line 593
    .restart local p0    # "this":Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;
    .restart local p1    # "preferAnimation":Z
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getDensity()I
    .registers 2

    .line 581
    iget v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mDensity:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .line 577
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSourceQMG;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
