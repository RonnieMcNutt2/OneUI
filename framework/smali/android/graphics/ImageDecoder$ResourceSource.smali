.class Landroid/graphics/ImageDecoder$ResourceSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceSource"
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field mResDensity:I

.field final mResId:I

.field final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;I)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 607
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mLock:Ljava/lang/Object;

    .line 599
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResources:Landroid/content/res/Resources;

    .line 600
    iput p2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResId:I

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    .line 602
    return-void
.end method


# virtual methods
.method public createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .registers 7
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 624
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResId:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 626
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 627
    :try_start_10
    iget v3, v0, Landroid/util/TypedValue;->density:I

    if-nez v3, :cond_19

    .line 628
    const/16 v3, 0xa0

    iput v3, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    goto :goto_24

    .line 629
    :cond_19
    iget v3, v0, Landroid/util/TypedValue;->density:I

    const v4, 0xffff

    if-eq v3, v4, :cond_24

    .line 630
    iget v3, v0, Landroid/util/TypedValue;->density:I

    iput v3, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    .line 632
    :cond_24
    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_2d

    .line 634
    move-object v2, v1

    check-cast v2, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-static {v2, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2

    .line 632
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3
.end method

.method public getDensity()I
    .registers 3

    .line 614
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_3
    iget v1, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    monitor-exit v0

    return v1

    .line 616
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .line 610
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 641
    const-string/jumbo v0, "}"

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource{name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_22} :catch_23

    return-object v0

    .line 642
    :catch_23
    move-exception v1

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource{id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
