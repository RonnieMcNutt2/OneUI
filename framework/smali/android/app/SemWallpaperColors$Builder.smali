.class public Landroid/app/SemWallpaperColors$Builder;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColorType:I

.field private mShadowOpacity:F

.field private mShadowSize:F

.field private mWhich:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1634
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    .line 1636
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    .line 1637
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowSize:F

    .line 1638
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowOpacity:F

    .line 1639
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 1642
    return-void
.end method


# virtual methods
.method public build()Landroid/app/SemWallpaperColors;
    .registers 6

    .line 1661
    new-instance v0, Landroid/app/SemWallpaperColors$Item;

    iget v1, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowSize:F

    iget v3, p0, Landroid/app/SemWallpaperColors$Builder;->mShadowOpacity:F

    invoke-direct {v0, v1, v2, v3}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    .line 1662
    .local v0, "item":Landroid/app/SemWallpaperColors$Item;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build() mColorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWhich: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1663
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1662
    const-string v2, "SemWallpaperColors"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    new-instance v1, Landroid/app/SemWallpaperColors;

    iget v2, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    iget-object v3, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/SemWallpaperColors;-><init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors-IA;)V

    return-object v1
.end method

.method public setColorType(I)Landroid/app/SemWallpaperColors$Builder;
    .registers 2
    .param p1, "colorType"    # I

    .line 1650
    iput p1, p0, Landroid/app/SemWallpaperColors$Builder;->mColorType:I

    .line 1651
    return-object p0
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/app/SemWallpaperColors$Builder;
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1655
    iput-object p1, p0, Landroid/app/SemWallpaperColors$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 1656
    return-object p0
.end method

.method public setWhich(I)Landroid/app/SemWallpaperColors$Builder;
    .registers 2
    .param p1, "which"    # I

    .line 1645
    iput p1, p0, Landroid/app/SemWallpaperColors$Builder;->mWhich:I

    .line 1646
    return-object p0
.end method
