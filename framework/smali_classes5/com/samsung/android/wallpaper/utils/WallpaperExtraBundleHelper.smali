.class public Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;
.super Ljava/lang/Object;
.source "WallpaperExtraBundleHelper.java"


# static fields
.field public static final KEY_IMAGE_CATEGORY:Ljava/lang/String; = "imageCategory"

.field public static final KEY_IMAGE_FILTER_PARAMS:Ljava/lang/String; = "imageFilterParams"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "srcBundle"    # Landroid/os/Bundle;

    .line 48
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->fromJson(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->convertJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 44
    new-instance v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->convertBundleToJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
