.class Landroid/app/WallpaperManager$CachedWallpaper;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedWallpaper"
.end annotation


# instance fields
.field final mCachedWallpaper:Landroid/graphics/Bitmap;

.field final mCachedWallpaperUserId:I

.field final mWhich:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 4
    .param p1, "cachedWallpaper"    # Landroid/graphics/Bitmap;
    .param p2, "cachedWallpaperUserId"    # I
    .param p3, "which"    # I

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p1, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 695
    iput p2, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    .line 696
    iput p3, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    .line 697
    return-void
.end method


# virtual methods
.method isValid(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 704
    iget v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaperUserId:I

    if-ne p1, v0, :cond_12

    iget v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mWhich:I

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Landroid/app/WallpaperManager$CachedWallpaper;->mCachedWallpaper:Landroid/graphics/Bitmap;

    .line 705
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 704
    :goto_13
    return v0
.end method
