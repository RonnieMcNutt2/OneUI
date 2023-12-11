.class public Lcom/android/internal/util/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final USER_ICON_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    return-void

    :array_a
    .array-data 4
        0x10604c9
        0x10604ca
        0x10604cb
        0x10604cc
        0x10604cd
        0x10604ce
        0x10604cf
        0x10604d0
        0x10604d1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static convertToBitmapAtSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    return-object v0
.end method

.method public static convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 58
    const v0, 0x1050588

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 59
    .local v0, "size":I
    invoke-static {p1, v0, v0}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "userId"    # I
    .param p2, "light"    # Z

    .line 83
    if-eqz p2, :cond_6

    const v0, 0x10604d5

    goto :goto_9

    :cond_6
    const v0, 0x10604d4

    .line 84
    .local v0, "colorResId":I
    :goto_9
    const/16 v1, -0x2710

    if-eq p1, v1, :cond_14

    .line 86
    sget-object v1, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v2, v1

    rem-int v2, p1, v2

    aget v0, v1, v2

    .line 88
    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultUserIconInColor(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "color"    # I

    .line 98
    const v0, 0x10806c6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    return-object v0
.end method

.method public static getUserIconColors(Landroid/content/res/Resources;)[I
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 110
    sget-object v0, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 111
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 112
    sget-object v2, Lcom/android/internal/util/UserIcons;->USER_ICON_COLORS:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 114
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method
