.class public Landroid/app/SemWallpaperColors;
.super Ljava/lang/Object;
.source "SemWallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemWallpaperColors$Item;,
        Landroid/app/SemWallpaperColors$WallpaperColorsData;,
        Landroid/app/SemWallpaperColors$Builder;
    }
.end annotation


# static fields
.field public static final COMPARE_ADAPTIVE_CONTRAST:I = 0x2

.field public static final COMPARE_COLOR:I = 0x0

.field public static final COMPARE_SHADOW:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/SemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEVICE_VERSION:I = 0x16

.field public static final FONT_COLOR_BLACK:I = 0x1

.field public static final FONT_COLOR_GRAY:I = 0x2

.field public static final FONT_COLOR_WHITE:I = 0x0

.field public static final HOMESCREEN_BODY:I = 0x40

.field public static final HOMESCREEN_NAVIBAR:I = 0x80

.field public static final HOMESCREEN_STATUSBAR:I = 0x20

.field public static final LOCKSCREEN_AREA_SIZE:I = 0x6

.field public static final LOCKSCREEN_BACKGROUND:I = 0x200

.field public static final LOCKSCREEN_BODY_BOTTOM:I = 0x80

.field public static final LOCKSCREEN_BODY_MID:I = 0x40

.field public static final LOCKSCREEN_BODY_TOP:I = 0x20

.field public static final LOCKSCREEN_BOUNCER:J = 0x80000000000L

.field public static final LOCKSCREEN_CLOCK:J = 0x400000000L

.field public static final LOCKSCREEN_FINGERPRINT:J = 0x40000000000L

.field public static final LOCKSCREEN_HELP_TEXT:J = 0x4000000000L

.field public static final LOCKSCREEN_LOCK_ICON:J = 0x200000000L

.field public static final LOCKSCREEN_MUSIC:J = 0x2000000000L

.field public static final LOCKSCREEN_NAVIBAR:I = 0x100

.field public static final LOCKSCREEN_NAVI_BAR:J = 0x10000000000L

.field public static final LOCKSCREEN_NIO:J = 0x800000000L

.field public static final LOCKSCREEN_NIO_TEXT:J = 0x1000000000L

.field public static final LOCKSCREEN_NIO_TEXT_MID:J = 0x2000000000000L

.field public static final LOCKSCREEN_NIO_TEXT_TOP:J = 0x1000000000000L

.field public static final LOCKSCREEN_SECURE_TEXT:J = 0x20000000000L

.field public static final LOCKSCREEN_SHORTCUT:J = 0x8000000000L

.field public static final LOCKSCREEN_STATUSBAR:I = 0x10

.field public static final LOCKSCREEN_STATUS_BAR:J = 0x100000000L

.field private static final TAG:Ljava/lang/String; = "SemWallpaperColors"

.field private static final TYPE_MAJOR:I = 0x0

.field private static final TYPE_MINOR:I = 0x1

.field private static final TYPE_OTHER:I = 0x2


# instance fields
.field private mAdaptiveDimColor:I

.field private mAdaptiveDimOpacity:F

.field private mArea:Landroid/app/SemWallpaperColorsArea;

.field private mColorTableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation
.end field

.field private mColorTableListGoogle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentResolution:Ljava/lang/String;

.field private mDarkModeDimOpacity:F

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperColors$WallpaperColorsData;",
            ">;"
        }
    .end annotation
.end field

.field private mSeedColors:[I

.field private mWhich:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmArea(Landroid/app/SemWallpaperColors;)Landroid/app/SemWallpaperColorsArea;
    .registers 1

    iget-object p0, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1179
    new-instance v0, Landroid/app/SemWallpaperColors$1;

    invoke-direct {v0}, Landroid/app/SemWallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/SemWallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "which"    # I
    .param p2, "item"    # Landroid/app/SemWallpaperColors$Item;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 137
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 138
    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 380
    invoke-direct {p0, v1, p1, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 382
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 383
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1, p2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    .line 384
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_2e

    .line 386
    :cond_3e
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 388
    if-eqz p3, :cond_46

    .line 389
    invoke-direct {p0, p3}, Landroid/app/SemWallpaperColors;->setSeedColors(Landroid/graphics/Bitmap;)V

    .line 391
    :cond_46
    return-void
.end method

.method synthetic constructor <init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/SemWallpaperColors;-><init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "which"    # I
    .param p4, "rotation"    # I
    .param p5, "rects"    # [Landroid/graphics/Rect;

    .line 394
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V

    .line 395
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "which"    # I
    .param p4, "rotation"    # I
    .param p5, "rects"    # [Landroid/graphics/Rect;
    .param p6, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 137
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 138
    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 402
    invoke-direct {p0, p1, p3, p4, p6}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    .line 405
    :try_start_28
    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_35

    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 407
    :cond_35
    const/4 v2, 0x0

    .line 408
    .local v2, "colorWeightList":[[I
    invoke-static {p3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_47

    .line 410
    new-array v4, v5, [[I

    filled-new-array {v5, v3}, [I

    move-result-object v6

    aput-object v6, v4, v0

    move-object v2, v4

    goto :goto_4a

    .line 412
    :cond_47
    new-array v4, v0, [[I

    move-object v2, v4

    .line 416
    :goto_4a
    invoke-direct {p0, p2, v0, v5, v2}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 418
    invoke-direct {p0, p2, v5, v5, v2}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 420
    invoke-direct {p0, p2, v3, v5, v1}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 423
    .end local v2    # "colorWeightList":[[I
    :cond_53
    if-eqz p5, :cond_6c

    .line 425
    array-length v2, p5

    move v4, v0

    :goto_57
    if-ge v4, v2, :cond_69

    aget-object v5, p5, v4

    .line 426
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, p0, v5, v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    nop

    .end local v5    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 430
    :cond_69
    invoke-direct {p0, p2, v3, v0, v1}, Landroid/app/SemWallpaperColors;->calc(Landroid/graphics/Bitmap;IZ[[I)V

    .line 433
    :cond_6c
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->calcAdaptiveDim()V

    .line 434
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->calcDarkModeDim()V

    .line 435
    invoke-direct {p0, p2}, Landroid/app/SemWallpaperColors;->setSeedColors(Landroid/graphics/Bitmap;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_75} :catch_76

    .line 438
    goto :goto_7a

    .line 436
    :catch_76
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7a
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 137
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 138
    iput v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, "which":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .local v3, "count":I
    invoke-direct {p0, v1, v2, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    if-ge v0, v3, :cond_85

    .line 348
    const-class v4, Landroid/graphics/Rect;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 349
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v5, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V

    .line 350
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColor(Landroid/app/SemWallpaperColors$Item;I)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowSize(Landroid/app/SemWallpaperColors$Item;F)V

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowOpacity(Landroid/app/SemWallpaperColors$Item;F)V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetHSV(Landroid/app/SemWallpaperColors$Item;[F)V

    .line 356
    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 357
    .local v6, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v6, :cond_78

    .line 358
    invoke-virtual {v6, v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setRect(Landroid/graphics/Rect;)V

    .line 359
    invoke-virtual {v6, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_82

    .line 361
    :cond_78
    iget-object v7, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v8, p0, v4, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v6    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 365
    .end local v0    # "i":I
    :cond_85
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 371
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "xml"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 137
    iput v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 138
    iput v1, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 374
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors;->xmlParser(Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->workaround()V

    .line 377
    return-void
.end method

.method private calc(Landroid/graphics/Bitmap;IZ[[I)V
    .registers 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # I
    .param p3, "defaultArea"    # Z
    .param p4, "colorWeightList"    # [[I

    .line 502
    const/4 v0, 0x1

    if-eqz p2, :cond_3a

    if-ne p2, v0, :cond_6

    goto :goto_3a

    .line 512
    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_21

    .line 513
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 514
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p3, v1, v2}, Landroid/app/SemWallpaperColors;->calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V

    .line 515
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_f

    :cond_20
    goto :goto_62

    .line 517
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calc, invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 503
    :cond_3a
    :goto_3a
    array-length v1, p4

    const/4 v2, 0x0

    move v3, v2

    :goto_3d
    if-ge v3, v1, :cond_62

    aget-object v4, p4, v3

    .line 504
    .local v4, "colorWeight":[I
    aget v5, v4, p2

    .line 505
    .local v5, "index":I
    iget-object v6, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 506
    .local v6, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    const/4 v7, 0x0

    .line 507
    .local v7, "major":Landroid/app/SemWallpaperColors$Item;
    if-ne p2, v0, :cond_5c

    .line 508
    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    aget v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-virtual {v8}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v7

    .line 510
    :cond_5c
    invoke-direct {p0, p1, p3, v6, v7}, Landroid/app/SemWallpaperColors;->calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V

    .line 503
    .end local v4    # "colorWeight":[I
    .end local v5    # "index":I
    .end local v6    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v7    # "major":Landroid/app/SemWallpaperColors$Item;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 519
    :cond_62
    :goto_62
    return-void
.end method

.method private calcAdaptiveDim()V
    .registers 7

    .line 718
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 719
    :cond_1a
    const-string v0, "calcAdaptiveDim: Cover wallpaper, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 723
    :cond_20
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_36

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 724
    const-string v0, "calcAdaptiveDim: Custom area, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void

    .line 728
    :cond_36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;>;"
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 730
    .local v3, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v3, :cond_80

    .line 731
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_41

    .line 732
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5e

    .line 733
    goto :goto_41

    .line 736
    :cond_5e
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    .line 737
    .local v4, "item":Landroid/app/SemWallpaperColors$Item;
    if-eqz v4, :cond_80

    .line 738
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v5

    if-nez v5, :cond_79

    .line 739
    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLeftLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetRightLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 742
    :cond_79
    invoke-static {v4}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .end local v3    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v4    # "item":Landroid/app/SemWallpaperColors$Item;
    :cond_80
    :goto_80
    goto :goto_41

    .line 748
    :cond_81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c8

    .line 749
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 750
    .local v2, "resultArray":[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    .line 751
    invoke-static {v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim;->calculateAdaptiveDim([Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;

    move-result-object v3

    .line 752
    .local v3, "autoDimResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->opacity:F

    iput v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 753
    iget v4, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;->color:I

    iput v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calcAdaptiveDim, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .end local v2    # "resultArray":[Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v3    # "autoDimResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityAutoDim$AutoDimResult;
    :cond_c8
    return-void
.end method

.method private calcDarkModeDim()V
    .registers 9

    .line 772
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_c

    .line 773
    const/4 v0, 0x7

    .local v0, "targetKey":I
    goto :goto_29

    .line 774
    .end local v0    # "targetKey":I
    :cond_c
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 775
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 776
    const/4 v0, 0x7

    .restart local v0    # "targetKey":I
    goto :goto_29

    .line 777
    .end local v0    # "targetKey":I
    :cond_1e
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 778
    const/4 v0, 0x2

    .restart local v0    # "targetKey":I
    goto :goto_29

    .line 780
    .end local v0    # "targetKey":I
    :cond_28
    const/4 v0, 0x1

    .line 787
    .restart local v0    # "targetKey":I
    :goto_29
    const/4 v2, 0x0

    .line 788
    .local v2, "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 789
    .local v4, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v4, :cond_4f

    .line 790
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v5

    if-ne v5, v0, :cond_4f

    .line 791
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    invoke-static {v3}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$mgetLegibilityResult(Landroid/app/SemWallpaperColors$Item;)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v3

    iget-object v2, v3, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->dominantColorResult:[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;

    .line 792
    goto :goto_50

    .line 795
    .end local v4    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_4f
    goto :goto_30

    .line 797
    :cond_50
    :goto_50
    if-nez v2, :cond_58

    .line 798
    const-string v3, "dominantColorResult == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 802
    :cond_58
    array-length v3, v2

    new-array v3, v3, [[F

    .line 803
    .local v3, "hsvColors":[[F
    const/4 v4, 0x0

    .line 804
    .local v4, "avgBrightness":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5d
    array-length v6, v2

    if-ge v5, v6, :cond_89

    .line 805
    aget-object v6, v2, v5

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6d

    .line 806
    const/4 v6, 0x0

    aput-object v6, v3, v5

    goto :goto_86

    .line 808
    :cond_6d
    const/4 v6, 0x3

    new-array v6, v6, [F

    aput-object v6, v3, v5

    .line 809
    aget-object v6, v2, v5

    iget v6, v6, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->color:I

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 810
    aget-object v6, v3, v5

    const/4 v7, 0x2

    aget v6, v6, v7

    aget-object v7, v2, v5

    iget v7, v7, Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;->percentage:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 804
    :goto_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 815
    .end local v5    # "i":I
    :cond_89
    const v5, 0x3f19999a    # 0.6f

    cmpg-float v5, v4, v5

    const v6, 0x3e19999a    # 0.15f

    if-gtz v5, :cond_96

    .line 816
    iput v6, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    goto :goto_a8

    .line 817
    :cond_96
    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_a2

    .line 818
    const/high16 v5, 0x3e800000    # 0.25f

    iput v5, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    goto :goto_a8

    .line 820
    :cond_a2
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v4

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 823
    :goto_a8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcDarkModeDim, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .line 783
    .end local v0    # "targetKey":I
    .end local v2    # "dominantColorResults":[Lcom/samsung/android/wallpaper/legibilitycolors/utils/ColorExtractor$DominantColorResult;
    .end local v3    # "hsvColors":[[F
    .end local v4    # "avgBrightness":F
    :cond_c1
    const-string v0, "custom area, return"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method private calcInternal(Landroid/graphics/Bitmap;ZLandroid/app/SemWallpaperColors$WallpaperColorsData;Landroid/app/SemWallpaperColors$Item;)V
    .registers 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "defaultArea"    # Z
    .param p3, "data"    # Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .param p4, "major"    # Landroid/app/SemWallpaperColors$Item;

    .line 522
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 526
    return-void

    .line 529
    :cond_7
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 530
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz p2, :cond_1f

    .line 531
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    invoke-virtual {p3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/SemWallpaperColorsArea;->get(III)Landroid/graphics/Rect;

    move-result-object v0

    .line 534
    :cond_1f
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_7a

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_7a

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_7a

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_7a

    .line 535
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 540
    .local v1, "cropBitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceLargeDisplay(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_68

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v2

    if-nez v2, :cond_60

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-direct {p0, v2}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 541
    :cond_60
    invoke-direct {p0, v1, p4, v3}, Landroid/app/SemWallpaperColors;->fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_7a

    .line 543
    :cond_68
    if-eqz p2, :cond_73

    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_73

    const/4 v3, 0x1

    :cond_73
    invoke-direct {p0, v1, p4, v3}, Landroid/app/SemWallpaperColors;->fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    .line 546
    .end local v1    # "cropBitmap":Landroid/graphics/Bitmap;
    :cond_7a
    :goto_7a
    return-void
.end method

.method public static fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "rects"    # [Landroid/graphics/Rect;

    .line 197
    new-instance v7, Landroid/app/SemWallpaperColors;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/SemWallpaperColors;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V

    return-object v7
.end method

.method public static fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)Landroid/app/SemWallpaperColors;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "rects"    # [Landroid/graphics/Rect;
    .param p5, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromBitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p1, :cond_63

    .line 218
    if-eqz p4, :cond_56

    .line 219
    array-length v0, p4

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_56

    aget-object v2, p4, v1

    .line 220
    .local v2, "rect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_3d

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_3d

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_3d

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_3d

    .line 219
    .end local v2    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 221
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal argument "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_56
    new-instance v0, Landroid/app/SemWallpaperColors;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/app/SemWallpaperColors;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;Landroid/app/WallpaperColorOverrideAreas;)V

    return-object v0

    .line 215
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "which"    # I
    .param p3, "landscape"    # Z
    .param p4, "rects"    # [Landroid/graphics/Rect;

    .line 184
    if-eqz p3, :cond_5

    const/16 v0, 0x5a

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-static {p0, p1, p2, v0, p4}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public static fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;Z)Landroid/app/SemWallpaperColors;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rects"    # [Landroid/graphics/Rect;
    .param p3, "includeDefaultArea"    # Z

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "which":I
    if-eqz p3, :cond_4

    .line 176
    const/4 v0, 0x2

    .line 178
    :cond_4
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object v1

    return-object v1
.end method

.method private fromBitmapInternal(Landroid/graphics/Bitmap;Landroid/app/SemWallpaperColors$Item;Z)Landroid/app/SemWallpaperColors$Item;
    .registers 33
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "major"    # Landroid/app/SemWallpaperColors$Item;
    .param p3, "indicator"    # Z

    .line 549
    move-object/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fromBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", major = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", indicator = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemWallpaperColors"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v2, 0x64

    .line 552
    .local v2, "imageAreaTobeResized":I
    const/4 v5, 0x0

    .line 554
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v6, 0x0

    if-eqz v1, :cond_10d

    .line 555
    invoke-direct/range {p0 .. p1}, Landroid/app/SemWallpaperColors;->getLeftIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 556
    .local v7, "leftIndicator":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p1}, Landroid/app/SemWallpaperColors;->getRightIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 558
    .local v8, "rightIndicator":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_f8

    if-nez v8, :cond_5a

    move-object/from16 v12, p0

    move-object/from16 v17, v5

    goto/16 :goto_fc

    .line 563
    :cond_5a
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v9

    .line 564
    .local v9, "descalingValue":F
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    .line 565
    .local v10, "scaledWidth":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    .line 566
    .local v11, "scaledHeight":I
    invoke-static {v7, v10, v11, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 568
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static {v12, v13, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v9

    .line 569
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v10, v12

    .line 570
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v11, v12

    .line 571
    invoke-static {v8, v10, v11, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 573
    move-object/from16 v12, p0

    invoke-direct {v12, v7, v8}, Landroid/app/SemWallpaperColors;->getIndicatorPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[I

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV;->calcurateIndicatorLegibility([I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;

    move-result-object v13

    .line 574
    .local v13, "indicatorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    const/4 v14, 0x0

    .line 575
    .local v14, "colorType":I
    iget-object v15, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v6, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v15, v6, :cond_a9

    .line 576
    const/4 v14, 0x1

    goto :goto_b0

    .line 577
    :cond_a9
    iget-object v6, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v15, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v6, v15, :cond_b0

    .line 578
    const/4 v14, 0x2

    .line 580
    :cond_b0
    :goto_b0
    iget v6, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->color:I

    .line 582
    .local v6, "colorRgb":I
    iget-object v15, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 583
    const/4 v1, 0x0

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .local v17, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-static {v7, v1, v15, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v15

    .line 585
    .local v15, "leftLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    move/from16 v16, v9

    .end local v9    # "descalingValue":F
    .local v16, "descalingValue":F
    iget-object v9, v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;->colorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 586
    invoke-static {v8, v1, v9, v5}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v1

    .line 589
    .local v1, "rightLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 590
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "edgeCase "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v3, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v3, v14, v6, v15, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IILcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V

    move-object v1, v3

    .line 595
    .end local v6    # "colorRgb":I
    .end local v7    # "leftIndicator":Landroid/graphics/Bitmap;
    .end local v8    # "rightIndicator":Landroid/graphics/Bitmap;
    .end local v10    # "scaledWidth":I
    .end local v11    # "scaledHeight":I
    .end local v13    # "indicatorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityColorByHSV$EdgeCaseResultForIndicator;
    .end local v14    # "colorType":I
    .end local v15    # "leftLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v16    # "descalingValue":F
    .end local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    .local v1, "item":Landroid/app/SemWallpaperColors$Item;
    move-object/from16 v6, p1

    move/from16 v26, v2

    goto/16 :goto_25f

    .line 558
    .end local v1    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v7    # "leftIndicator":Landroid/graphics/Bitmap;
    .restart local v8    # "rightIndicator":Landroid/graphics/Bitmap;
    :cond_f8
    move-object/from16 v12, p0

    move-object/from16 v17, v5

    .line 559
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    :goto_fc
    const-string v1, "fromBitmap indicator left/right bitmap == null"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object v1

    .line 596
    .end local v7    # "leftIndicator":Landroid/graphics/Bitmap;
    .end local v8    # "rightIndicator":Landroid/graphics/Bitmap;
    .end local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    :cond_10d
    move-object/from16 v12, p0

    move-object/from16 v17, v5

    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .restart local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/image/BitmapHelper;->fineScaleValueBySquareRootSize(III)F

    move-result v1

    .line 597
    .local v1, "descalingValue":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 598
    .local v3, "scaledWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 600
    .local v5, "scaledHeight":I
    move-object/from16 v6, p1

    const/4 v7, 0x0

    invoke-static {v6, v3, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 602
    .local v8, "scaledBitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 603
    .local v7, "majorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    if-eqz v0, :cond_14a

    .line 604
    sget-object v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 605
    .local v9, "majorColorType":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    invoke-virtual/range {p2 .. p2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_140

    .line 606
    sget-object v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    .line 608
    :cond_140
    new-instance v10, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    invoke-virtual/range {p2 .. p2}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;-><init>(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;[F)V

    move-object v7, v10

    .line 611
    .end local v9    # "majorColorType":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;
    :cond_14a
    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->calculateTotalLegibilityResult(Landroid/graphics/Bitmap;Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;I)Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;

    move-result-object v9

    .line 613
    .local v9, "legibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    const/4 v10, 0x0

    .line 614
    .local v10, "colorType":I
    iget-object v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->DARK:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v11, v13, :cond_158

    .line 615
    const/4 v10, 0x1

    goto :goto_15f

    .line 616
    :cond_158
    iget-object v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    sget-object v13, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->GRAY:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    if-ne v11, v13, :cond_15f

    .line 617
    const/4 v10, 0x2

    .line 620
    :cond_15f
    :goto_15f
    iget v11, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adjustedContentsColor:I

    .line 622
    .local v11, "colorRgb":I
    const/high16 v13, 0x40000000    # 2.0f

    .local v13, "sizeMin":F
    const/high16 v14, 0x40c00000    # 6.0f

    .local v14, "sizeMax":F
    const v15, 0x3ecccccd    # 0.4f

    .local v15, "opacityMin":F
    const v16, 0x3f666666    # 0.9f

    .line 624
    .local v16, "opacityMax":F
    invoke-direct/range {p0 .. p0}, Landroid/app/SemWallpaperColors;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "currentResolution":Ljava/lang/String;
    move/from16 v25, v1

    .end local v1    # "descalingValue":F
    .local v25, "descalingValue":F
    iget-object v1, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->contentsColorType:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move/from16 v26, v2

    .end local v2    # "imageAreaTobeResized":I
    .local v26, "imageAreaTobeResized":I
    sget-object v2, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;->LIGHT:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityDefinition$ColorType;

    move/from16 v27, v3

    .end local v3    # "scaledWidth":I
    .local v27, "scaledWidth":I
    const-string v3, "HD"

    if-ne v1, v2, :cond_193

    .line 627
    const v1, 0x3ecccccd    # 0.4f

    .line 628
    .end local v15    # "opacityMin":F
    .local v1, "opacityMin":F
    const v2, 0x3f666666    # 0.9f

    .line 629
    .end local v16    # "opacityMax":F
    .local v2, "opacityMax":F
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 630
    const/high16 v3, 0x3f800000    # 1.0f

    .line 631
    .end local v13    # "sizeMin":F
    .local v3, "sizeMin":F
    const/high16 v13, 0x40400000    # 3.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_1b5

    .line 633
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    :cond_18e
    const/high16 v3, 0x40000000    # 2.0f

    .line 634
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40c00000    # 6.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_1b5

    .line 637
    .end local v1    # "opacityMin":F
    .end local v2    # "opacityMax":F
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    .restart local v15    # "opacityMin":F
    .restart local v16    # "opacityMax":F
    :cond_193
    const v1, 0x3e99999a    # 0.3f

    .line 638
    .end local v15    # "opacityMin":F
    .restart local v1    # "opacityMin":F
    const v2, 0x3f666666    # 0.9f

    .line 639
    .end local v16    # "opacityMax":F
    .restart local v2    # "opacityMax":F
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 640
    const/high16 v3, 0x3f800000    # 1.0f

    .line 641
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40400000    # 3.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_1b5

    .line 642
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    :cond_1a4
    const-string v3, "FHD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b1

    .line 643
    const/high16 v3, 0x40000000    # 2.0f

    .line 644
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40c00000    # 6.0f

    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    goto :goto_1b5

    .line 646
    .end local v3    # "sizeMin":F
    .local v13, "sizeMin":F
    .restart local v14    # "sizeMax":F
    :cond_1b1
    const/high16 v3, 0x40400000    # 3.0f

    .line 647
    .end local v13    # "sizeMin":F
    .restart local v3    # "sizeMin":F
    const/high16 v13, 0x40c00000    # 6.0f

    .line 651
    .end local v14    # "sizeMax":F
    .local v13, "sizeMax":F
    :goto_1b5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "resolution = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "size min = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", max = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v16, v0

    .end local v0    # "currentResolution":Ljava/lang/String;
    .local v16, "currentResolution":Ljava/lang/String;
    const-string v0, ", opacity min = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-static {v0, v3, v13}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getInterpolatedShadowSize(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F

    move-result v0

    .line 654
    .local v0, "size":F
    iget-object v14, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->adaptiveShadowData:Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;

    invoke-static {v14, v1, v2}, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic;->getInterpolatedShadowOpacity(Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$AdaptiveShadowData;FF)F

    move-result v14

    .line 656
    .local v14, "opacity":F
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v1

    .end local v1    # "opacityMin":F
    .local v28, "opacityMin":F
    const-string v1, "colorType="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", rgb="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ", shadowData="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " avgHSV= "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v15, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    invoke-static {v15}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    iget-object v4, v9, Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;->avgHSV:[F

    move-object/from16 v18, v1

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v0

    move/from16 v22, v14

    move-object/from16 v23, v4

    move-object/from16 v24, v9

    invoke-direct/range {v18 .. v24}, Landroid/app/SemWallpaperColors$Item;-><init>(IIFF[FLcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;)V

    .line 660
    .end local v17    # "item":Landroid/app/SemWallpaperColors$Item;
    .local v1, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 663
    .end local v0    # "size":F
    .end local v2    # "opacityMax":F
    .end local v3    # "sizeMin":F
    .end local v5    # "scaledHeight":I
    .end local v7    # "majorLegibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v8    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "legibilityResult":Lcom/samsung/android/wallpaper/legibilitycolors/LegibilityLogic$LegibilityResult;
    .end local v10    # "colorType":I
    .end local v11    # "colorRgb":I
    .end local v13    # "sizeMax":F
    .end local v14    # "opacity":F
    .end local v16    # "currentResolution":Ljava/lang/String;
    .end local v25    # "descalingValue":F
    .end local v27    # "scaledWidth":I
    .end local v28    # "opacityMin":F
    :goto_25f
    return-object v1
.end method

.method public static fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;
    .registers 3
    .param p0, "xml"    # Ljava/lang/String;

    .line 230
    if-eqz p0, :cond_11

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 234
    :cond_b
    new-instance v0, Landroid/app/SemWallpaperColors;

    invoke-direct {v0, p0}, Landroid/app/SemWallpaperColors;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 231
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromXml invalid xml "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBlankWallpaperColors()Landroid/app/SemWallpaperColors;
    .registers 5

    .line 238
    new-instance v0, Landroid/app/SemWallpaperColors;

    new-instance v1, Landroid/app/SemWallpaperColors$Item;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Landroid/app/SemWallpaperColors;-><init>(ILandroid/app/SemWallpaperColors$Item;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private getCurrentResolution()Ljava/lang/String;
    .registers 4

    .line 1068
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1069
    return-object v0

    .line 1072
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1073
    .local v0, "width":I
    const-string v1, "WQHD"

    .line 1075
    .local v1, "currentResolution":Ljava/lang/String;
    const/16 v2, 0x5a0

    if-lt v0, v2, :cond_18

    .line 1076
    const-string v1, "WQHD"

    goto :goto_25

    .line 1077
    :cond_18
    const/16 v2, 0x2d0

    if-le v0, v2, :cond_23

    const/16 v2, 0x438

    if-gt v0, v2, :cond_23

    .line 1078
    const-string v1, "FHD"

    goto :goto_25

    .line 1080
    :cond_23
    const-string v1, "HD"

    .line 1083
    :goto_25
    iput-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 1085
    return-object v1
.end method

.method public static getDeviceVersion()I
    .registers 2

    .line 147
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "version 22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/16 v0, 0x16

    return v0
.end method

.method private getIndicatorPixels(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[I
    .registers 15
    .param p1, "leftIndicator"    # Landroid/graphics/Bitmap;
    .param p2, "rightIndicator"    # Landroid/graphics/Bitmap;

    .line 667
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 668
    .local v0, "indicatorPixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 669
    .local v1, "leftIndicatorPixels":[I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v11, v2, [I

    .line 671
    .local v11, "rightIndicatorPixels":[I
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v2, p1

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 672
    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object v3, p2

    move-object v4, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 674
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    array-length v3, v1

    if-ge v2, v3, :cond_5d

    .line 675
    aget v3, v1, v2

    aput v3, v0, v2

    .line 674
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 677
    .end local v2    # "i":I
    :cond_5d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5e
    array-length v3, v11

    if-ge v2, v3, :cond_6a

    .line 678
    array-length v3, v1

    add-int/2addr v3, v2

    aget v4, v11, v2

    aput v4, v0, v3

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 681
    .end local v2    # "i":I
    :cond_6a
    return-object v0
.end method

.method private getItemFontColor(J)I
    .registers 8
    .param p1, "key"    # J

    .line 1272
    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    .line 1273
    .local v0, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v1, -0x1

    if-eqz v0, :cond_2d

    .line 1274
    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v2

    .line 1275
    .local v2, "fontColor":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemColor: fontColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemWallpaperColors"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    if-nez v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/high16 v1, -0x1000000

    :goto_2c
    return v1

    .line 1278
    .end local v2    # "fontColor":I
    :cond_2d
    return v1
.end method

.method private getLeftIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 685
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 686
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 687
    .local v1, "height":I
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 688
    .local v2, "rect":Landroid/graphics/Rect;
    int-to-float v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 689
    .local v4, "scale":F
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 690
    .local v5, "density":F
    const/high16 v6, 0x42dc0000    # 110.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 691
    .local v6, "leftWidth":I
    invoke-static {p1, v3, v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 697
    return-object p1
.end method

.method public static getLegibilityVersion()Ljava/lang/String;
    .registers 1

    .line 168
    const-string v0, "1.1.0"

    return-object v0
.end method

.method private getRightIndicator(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 701
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 702
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 703
    .local v1, "height":I
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/SemWallpaperColorsArea;->get(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 704
    .local v2, "rect":Landroid/graphics/Rect;
    int-to-float v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 705
    .local v4, "scale":F
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 706
    .local v5, "density":F
    const/high16 v6, 0x42980000    # 76.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 707
    .local v6, "rightWidth":I
    sub-int v7, v0, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 708
    .local v7, "offsetX":I
    invoke-static {p1, v7, v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 714
    return-object p1
.end method

.method public static getXmlVersion(Ljava/lang/String;)I
    .registers 5
    .param p0, "xml"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "version":I
    if-eqz p0, :cond_25

    const-string v1, "<Version>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 156
    :try_start_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "before":I
    const-string v2, "</Version>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 158
    .local v2, "after":I
    add-int/lit8 v3, v1, 0x9

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_21

    move v0, v3

    .line 161
    .end local v1    # "before":I
    .end local v2    # "after":I
    goto :goto_25

    .line 159
    :catch_21
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return v0
.end method

.method private init(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I

    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    .line 455
    return-void
.end method

.method private init(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mContext:Landroid/content/Context;

    .line 461
    iput v2, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    .line 462
    new-instance v3, Landroid/app/SemWallpaperColorsArea;

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/app/SemWallpaperColorsArea;-><init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    iput-object v3, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    .line 464
    iget v3, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v3}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v3

    const/4 v7, 0x3

    const-wide/16 v8, 0x40

    const/4 v10, 0x2

    const/4 v6, 0x0

    const-wide/16 v11, 0x10

    const-wide/16 v13, 0x20

    if-eqz v3, :cond_6d

    .line 465
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v15, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v15, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v13, v14, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x4

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x5

    const-wide/16 v8, 0x100

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_158

    .line 471
    :cond_6d
    iget v3, v0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v3}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 472
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceLargeDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 473
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v15, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v15, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v13, v14, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x4

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x5

    const-wide/16 v8, 0x100

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_158

    .line 479
    :cond_c2
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 480
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v11, v12, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0x9

    invoke-direct {v6, v0, v13, v14, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0x8

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/16 v7, 0xa

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const-wide/16 v7, 0x100

    const/4 v9, 0x4

    invoke-direct {v6, v0, v7, v8, v9}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x7

    const-wide/16 v8, 0x200

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_158

    .line 486
    :cond_113
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColors;->isVirtualDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 487
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, v0, v11, v12, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v6, v0, v13, v14, v10}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_158

    .line 490
    :cond_12e
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v7, v0, v13, v14, v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    const/4 v7, 0x6

    const-wide/16 v8, 0x80

    invoke-direct {v6, v0, v8, v9, v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;JI)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_158

    .line 495
    :cond_151
    const-string v3, "SemWallpaperColors"

    const-string v6, "init custom"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_158
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Landroid/app/SemWallpaperColorsArea;->buildKeyMap(Ljava/util/ArrayList;)V

    .line 499
    return-void
.end method

.method private static isHome(I)Z
    .registers 3
    .param p0, "which"    # I

    .line 1089
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private static isLock(I)Z
    .registers 3
    .param p0, "which"    # I

    .line 1093
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isVirtualDisplay(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 1394
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_c

    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_c

    .line 1395
    const/4 v0, 0x1

    return v0

    .line 1397
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isWatchFaceDisplay(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 1386
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_10

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_10

    .line 1388
    const/4 v0, 0x1

    return v0

    .line 1390
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private isWatchFaceLargeDisplay(I)Z
    .registers 3
    .param p1, "which"    # I

    .line 1379
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColors;->isWatchFaceDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_c

    .line 1380
    const/4 v0, 0x1

    return v0

    .line 1382
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static saveBitmaptoJpeg(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveBitmaptoJpeg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-nez p1, :cond_1c

    .line 1047
    return-void

    .line 1050
    :cond_1c
    const/4 v0, 0x0

    .line 1052
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1053
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_36
    .catchall {:try_start_1d .. :try_end_2a} :catchall_34

    .line 1058
    nop

    .line 1059
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 1063
    :cond_2e
    :goto_2e
    goto :goto_40

    .line 1061
    :catch_2f
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1064
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_40

    .line 1057
    :catchall_34
    move-exception v1

    goto :goto_41

    .line 1054
    :catch_36
    move-exception v1

    .line 1055
    .local v1, "e":Ljava/lang/Exception;
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    .line 1058
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2e

    .line 1059
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_2f

    goto :goto_2e

    .line 1065
    :goto_40
    return-void

    .line 1058
    :goto_41
    if-eqz v0, :cond_4c

    .line 1059
    :try_start_43
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4c

    .line 1061
    :catch_47
    move-exception v2

    .line 1062
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .line 1063
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4c
    :goto_4c
    nop

    .line 1064
    :goto_4d
    throw v1
.end method

.method private setSeedColors(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 759
    if-nez p1, :cond_b

    .line 760
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "setSeedColors: bitmap is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void

    .line 764
    :cond_b
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 765
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 767
    invoke-static {p1}, Lcom/samsung/android/wallpaper/colortheme/ColorThemeExtractor;->getSeedColors(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 768
    return-void
.end method

.method private static stringToIntArray(Ljava/lang/String;)[I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .line 918
    const-string v0, "["

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 921
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v3, v1

    if-ge v2, v3, :cond_26

    .line 922
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 925
    .end local v2    # "i":I
    :cond_26
    return-object v1
.end method

.method private workaround()V
    .registers 7

    .line 445
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 446
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    if-nez v2, :cond_42

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data.getItem() == null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWallpaperColors"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v2, Landroid/app/SemWallpaperColors$Item;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    invoke-virtual {v1, v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    .line 450
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_42
    goto :goto_6

    .line 451
    :cond_43
    return-void
.end method

.method private xmlGenerator()Ljava/lang/String;
    .registers 13

    .line 827
    const-string v0, "SeedColors"

    const-string v1, "DarkModeDimOpacity"

    const-string v2, "AdaptiveDimColor"

    const-string v3, "AdaptiveDimOpacity"

    const-string v4, "Which"

    const-string v5, "Version"

    const-string v6, ""

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 828
    .local v7, "serial":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 830
    .local v8, "writer":Ljava/io/Writer;
    :try_start_17
    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 831
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 832
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 834
    invoke-interface {v7, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 835
    const-string v9, "22"

    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    invoke-interface {v7, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    invoke-interface {v7, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    invoke-interface {v7, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 842
    invoke-interface {v7, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 844
    invoke-interface {v7, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 846
    invoke-interface {v7, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 848
    invoke-interface {v7, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    invoke-interface {v7, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    invoke-interface {v7, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_b9

    array-length v1, v1

    if-lez v1, :cond_b9

    .line 855
    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    :cond_b9
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 860
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    invoke-direct {p0, v7, v2, v3}, Landroid/app/SemWallpaperColors;->xmlWrite(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    .line 861
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_bf

    .line 863
    :cond_d7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_da} :catch_db

    .line 866
    goto :goto_df

    .line 864
    :catch_db
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_df
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private xmlParser(Ljava/lang/String;)V
    .registers 14
    .param p1, "xml"    # Ljava/lang/String;

    .line 929
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v1, "xmlParser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v0, 0x0

    .line 933
    .local v0, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_16

    move-object v0, v1

    .line 936
    goto :goto_1a

    .line 934
    :catch_16
    move-exception v1

    .line 935
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    :try_start_1a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 940
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 941
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 942
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 944
    .local v3, "eventType":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 945
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/app/SemWallpaperColors$Item;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V
    :try_end_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_3b} :catch_1da
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_3b} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3b} :catch_1d0

    .line 946
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    const/4 v7, 0x0

    .line 947
    .local v7, "count":I
    :goto_3c
    const/4 v8, 0x1

    if-eq v3, v8, :cond_1cf

    .line 948
    const-string v8, "Legibility"

    packed-switch v3, :pswitch_data_1e0

    goto/16 :goto_1c8

    .line 1012
    :pswitch_46
    :try_start_46
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1013
    .local v9, "endTag":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c8

    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1c8

    .line 1014
    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "count":I
    .local v10, "count":I
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1015
    .local v7, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v7, :cond_81

    .line 1017
    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v8

    if-nez v8, :cond_7a

    .line 1018
    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    if-nez v8, :cond_75

    .line 1019
    const/4 v8, -0x1

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    goto :goto_7a

    .line 1021
    :cond_75
    const/high16 v8, -0x1000000

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    .line 1024
    :cond_7a
    :goto_7a
    invoke-virtual {v7, v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setRect(Landroid/graphics/Rect;)V

    .line 1025
    invoke-virtual {v7, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->setItem(Landroid/app/SemWallpaperColors$Item;)V

    goto :goto_8b

    .line 1027
    :cond_81
    iget-object v8, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    new-instance v11, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    invoke-direct {v11, p0, v4, v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;-><init>(Landroid/app/SemWallpaperColors;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    .end local v7    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v9    # "endTag":Ljava/lang/String;
    :goto_8b
    move v7, v10

    goto/16 :goto_1c8

    .line 950
    .end local v10    # "count":I
    .local v7, "count":I
    :pswitch_8e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 951
    .local v9, "startTag":Ljava/lang/String;
    const-string v10, "Which"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_a6

    .line 952
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 953
    .local v10, "which":I
    invoke-direct {p0, v6, v10, v11}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 955
    .end local v10    # "which":I
    :cond_a6
    const-string v10, "Default"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 956
    const/4 v10, 0x2

    invoke-direct {p0, v6, v10, v11}, Landroid/app/SemWallpaperColors;->init(Landroid/content/Context;II)V

    .line 958
    :cond_b2
    const-string v10, "AdaptiveDimOpacity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c4

    .line 959
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    .line 961
    :cond_c4
    const-string v10, "AdaptieDimColor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 962
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    .line 964
    :cond_d6
    const-string v10, "DarkModeDimOpacity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 965
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    .line 967
    :cond_e8
    const-string v10, "Rect"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f6

    .line 968
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v10

    .line 970
    :cond_f6
    const-string v10, "Left"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_108

    .line 971
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->left:I

    .line 973
    :cond_108
    const-string v10, "Top"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11a

    .line 974
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 976
    :cond_11a
    const-string v10, "Right"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12c

    .line 977
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 979
    :cond_12c
    const-string v10, "Bottom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13e

    .line 980
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 982
    :cond_13e
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14a

    .line 983
    new-instance v8, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v8, v6}, Landroid/app/SemWallpaperColors$Item;-><init>(Landroid/app/SemWallpaperColors$Item-IA;)V

    move-object v5, v8

    .line 985
    :cond_14a
    const-string v8, "avgHSV"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_163

    .line 986
    const/4 v8, 0x3

    new-array v8, v8, [F

    .line 987
    .local v8, "hsv":[F
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 988
    .local v10, "color":I
    invoke-static {v10, v8}, Lcom/samsung/android/wallpaper/legibilitycolors/ColorHSV;->colorToHSV(I[F)V

    .line 989
    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetHSV(Landroid/app/SemWallpaperColors$Item;[F)V

    .line 991
    .end local v8    # "hsv":[F
    .end local v10    # "color":I
    :cond_163
    const-string v8, "FontColor"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_176

    .line 992
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColor(Landroid/app/SemWallpaperColors$Item;I)V

    .line 994
    :cond_176
    const-string v8, "FontColorRgb"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_189

    .line 995
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetFontColorRgb(Landroid/app/SemWallpaperColors$Item;I)V

    .line 997
    :cond_189
    const-string v8, "ShadowSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19c

    .line 998
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowSize(Landroid/app/SemWallpaperColors$Item;F)V

    .line 1000
    :cond_19c
    const-string v8, "ShadowOpacity"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1af

    .line 1001
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v5, v8}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$msetShadowOpacity(Landroid/app/SemWallpaperColors$Item;F)V

    .line 1003
    :cond_1af
    const-string v8, "SeedColors"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c8

    .line 1004
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1005
    .local v8, "seeds":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c7

    .line 1006
    invoke-static {v8}, Landroid/app/SemWallpaperColors;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 1008
    .end local v8    # "seeds":Ljava/lang/String;
    :cond_1c7
    nop

    .line 1032
    .end local v9    # "startTag":Ljava/lang/String;
    :cond_1c8
    :goto_1c8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_1cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_1cc} :catch_1da
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_1cc} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_1cc} :catch_1d0

    move v3, v8

    goto/16 :goto_3c

    .line 947
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "count":I
    :cond_1cf
    goto :goto_1de

    .line 1038
    :catch_1d0
    move-exception v1

    .line 1039
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1df

    .line 1036
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1d5
    move-exception v1

    .line 1037
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_1de

    .line 1034
    :catch_1da
    move-exception v1

    .line 1035
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1040
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1de
    nop

    .line 1041
    :goto_1df
    return-void

    :pswitch_data_1e0
    .packed-switch 0x2
        :pswitch_8e
        :pswitch_46
    .end packed-switch
.end method

.method private xmlWrite(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/Rect;Landroid/app/SemWallpaperColors$Item;)V
    .registers 20
    .param p1, "serial"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "item"    # Landroid/app/SemWallpaperColors$Item;

    .line 872
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "ShadowOpacity"

    const-string v3, "ShadowSize"

    const-string v4, "FontColorRgb"

    const-string v5, "avgHSV"

    const-string v6, "FontColor"

    const-string v7, "Legibility"

    const-string v8, "Bottom"

    const-string v9, "Right"

    const-string v10, "Top"

    const-string v11, "Left"

    const-string v12, "Rect"

    const-string v13, ""

    if-eqz v2, :cond_14f

    if-nez p3, :cond_22

    goto/16 :goto_14f

    .line 878
    :cond_22
    const/4 v14, 0x0

    :try_start_23
    invoke-interface {v1, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    invoke-interface {v1, v14, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v14, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    const/4 v14, 0x0

    invoke-interface {v1, v14, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 882
    invoke-interface {v1, v14, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v14, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    const/4 v11, 0x0

    invoke-interface {v1, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    invoke-interface {v1, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    const/4 v10, 0x0

    invoke-interface {v1, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    invoke-interface {v1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 889
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    const/4 v9, 0x0

    invoke-interface {v1, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    invoke-interface {v1, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 893
    invoke-interface {v1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    invoke-static/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$fgetmHSV(Landroid/app/SemWallpaperColors$Item;)[F

    move-result-object v8

    if-eqz v8, :cond_c9

    .line 895
    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->HSVToColor([F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    const/4 v8, 0x0

    invoke-interface {v1, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 899
    :cond_c9
    const/4 v5, 0x0

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 901
    const/4 v5, 0x0

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 903
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 905
    invoke-interface {v1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 906
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 907
    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 908
    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    invoke-interface {v1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_149} :catch_14a

    .line 914
    goto :goto_14e

    .line 912
    :catch_14a
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 915
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14e
    return-void

    .line 873
    :cond_14f
    :goto_14f
    const-string v0, "SemWallpaperColors"

    const-string/jumbo v3, "xmlWrite check null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/SemWallpaperColors;
    .registers 6

    .line 1407
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    .line 1408
    .local v0, "clone":Landroid/app/SemWallpaperColors;
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    invoke-virtual {v1}, Landroid/app/SemWallpaperColorsArea;->clone()Landroid/app/SemWallpaperColorsArea;

    move-result-object v1

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mArea:Landroid/app/SemWallpaperColorsArea;

    .line 1409
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mCurrentResolution:Ljava/lang/String;

    .line 1411
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3a

    .line 1412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    .line 1413
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1414
    .local v2, "wallpaperColorsData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->clone()Landroid/app/SemWallpaperColors$WallpaperColorsData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    nop

    .end local v2    # "wallpaperColorsData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_23

    .line 1417
    :cond_3a
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_46

    .line 1418
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    .line 1420
    :cond_46
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    if-eqz v1, :cond_56

    .line 1421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    .line 1422
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1424
    :cond_56
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    if-eqz v1, :cond_66

    .line 1425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    .line 1426
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_66
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_66} :catch_67

    .line 1429
    :cond_66
    return-object v0

    .line 1430
    .end local v0    # "clone":Landroid/app/SemWallpaperColors;
    :catch_67
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperColors"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method public get(J)Landroid/app/SemWallpaperColors$Item;
    .registers 12
    .param p1, "area"    # J

    .line 276
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isHome(I)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string v4, "SemWallpaperColors"

    if-nez v0, :cond_22

    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v0}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 277
    const-string v0, "SemWallpaperColors is not support default area"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v0, v3, v2, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object v0

    .line 281
    :cond_22
    const/4 v0, 0x0

    .line 282
    .local v0, "item":Landroid/app/SemWallpaperColors$Item;
    iget-object v5, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 283
    .local v6, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v6, :cond_44

    .line 284
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v7

    cmp-long v7, p1, v7

    if-nez v7, :cond_44

    .line 285
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    .line 286
    goto :goto_45

    .line 289
    .end local v6    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_44
    goto :goto_29

    .line 291
    :cond_45
    :goto_45
    if-nez v0, :cond_64

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "returning default dummy Item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v4, Landroid/app/SemWallpaperColors$Item;

    invoke-direct {v4, v3, v2, v1}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    move-object v0, v4

    .line 296
    :cond_64
    return-object v0
.end method

.method public get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 300
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 301
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 302
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 303
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    return-object v0

    .line 306
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    :cond_29
    goto :goto_6

    .line 307
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdaptiveDimColor()I
    .registers 2

    .line 327
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    return v0
.end method

.method public getAdaptiveDimOpacity()F
    .registers 2

    .line 331
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    return v0
.end method

.method public getColorDataSize()I
    .registers 2

    .line 1401
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getColorTableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 1204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperColors;->getColorTableList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getColorTableList(Z)Ljava/util/List;
    .registers 7
    .param p1, "fromGoogle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 1214
    if-eqz p1, :cond_f

    .line 1215
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1216
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    return-object v0

    .line 1219
    :cond_f
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1220
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    return-object v0

    .line 1224
    :cond_1c
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    const-string v1, "SemWallpaperColors"

    if-eqz v0, :cond_88

    array-length v0, v0

    if-lez v0, :cond_88

    .line 1225
    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;-><init>()V

    .line 1226
    .local v0, "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;
    iget-object v2, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->setColors([I)V

    .line 1227
    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->generateColorPalette(Z)V

    .line 1228
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getColorPalettes()Ljava/util/List;

    move-result-object v2

    .line 1229
    .local v2, "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    if-eqz v2, :cond_82

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_82

    .line 1230
    if-eqz p1, :cond_61

    .line 1231
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1232
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_81

    .line 1233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_60

    .line 1234
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mColorTableListGoogle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .end local v1    # "i":I
    :cond_60
    goto :goto_81

    .line 1238
    :cond_61
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1239
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_81

    .line 1240
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_81

    .line 1241
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 1246
    .end local v1    # "i":I
    :cond_81
    :goto_81
    return-object v2

    .line 1248
    :cond_82
    const-string v3, "getColorTableList: Error while generating color palettes."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    .end local v0    # "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;
    .end local v2    # "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    goto :goto_8d

    .line 1251
    :cond_88
    const-string v0, "getColorTableList: No seed colors."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :goto_8d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorThemeColor(J)I
    .registers 22
    .param p1, "key"    # J

    .line 1288
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    const-string v2, "SemWallpaperColors"

    if-eqz v1, :cond_1b6

    array-length v1, v1

    if-gtz v1, :cond_d

    goto/16 :goto_1b6

    .line 1293
    :cond_d
    const/4 v1, 0x0

    .line 1294
    .local v1, "retColor":I
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_78

    .line 1295
    new-instance v3, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;

    invoke-direct {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;-><init>()V

    .line 1296
    .local v3, "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;
    iget-object v5, v0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {v3, v5}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->setColors([I)V

    .line 1297
    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->generateColorPalette()V

    .line 1298
    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;->getColorPalettes()Ljava/util/List;

    move-result-object v5

    .line 1299
    .local v5, "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1300
    if-eqz v5, :cond_4a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4a

    .line 1301
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_36
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4a

    .line 1302
    iget-object v7, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 1306
    .end local v6    # "i":I
    :cond_4a
    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_5c

    .line 1307
    const-string v4, "getColorThemeColor: Error while generating color palette."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColors;->getItemFontColor(J)I

    move-result v2

    return v2

    .line 1311
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColorThemeColor mColorTableList size : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    .end local v3    # "paletteCreator":Lcom/samsung/android/wallpaper/colortheme/ColorPaletteCreator5;
    .end local v5    # "palettes":Ljava/util/List;, "Ljava/util/List<[[I>;"
    :cond_78
    iget-object v3, v0, Landroid/app/SemWallpaperColors;->mColorTableList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 1315
    .local v3, "colorPalette":[[I
    const/4 v5, 0x0

    .line 1317
    .local v5, "retData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    const-wide/high16 v6, 0x1000000000000L

    cmp-long v8, p1, v6

    const-string v9, "getColorThemeColor: item is null. return WHITE"

    const-wide/16 v10, 0x20

    const-wide/16 v12, 0x40

    const/16 v14, 0xa

    const/4 v15, 0x3

    const/16 v16, -0x1

    if-eqz v8, :cond_17e

    const-wide/high16 v17, 0x2000000000000L

    cmp-long v8, p1, v17

    if-nez v8, :cond_9b

    goto/16 :goto_17e

    .line 1333
    :cond_9b
    iget-object v6, v0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1334
    .local v7, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-nez v7, :cond_b6

    .line 1335
    const-string v8, "getColorThemeColor: data is null. return FONT_COLOR_WHITE"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    .line 1336
    :cond_b6
    invoke-virtual {v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v17

    cmp-long v8, v17, p1

    if-nez v8, :cond_128

    .line 1337
    invoke-virtual {v7}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    .line 1338
    .local v6, "item":Landroid/app/SemWallpaperColors$Item;
    if-nez v6, :cond_c8

    .line 1339
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return v16

    .line 1343
    :cond_c8
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v8

    .line 1345
    .local v8, "fontColor":I
    if-nez v3, :cond_d9

    .line 1346
    const-string v4, "getColorThemeColor: colorPalette is null. return fontColor"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    if-nez v8, :cond_d6

    goto :goto_d8

    :cond_d6
    const/high16 v16, -0x1000000

    :goto_d8
    return v16

    .line 1350
    :cond_d9
    cmp-long v9, p1, v10

    if-eqz v9, :cond_11a

    cmp-long v9, p1, v12

    if-nez v9, :cond_e2

    goto :goto_11a

    .line 1354
    :cond_e2
    const-wide/16 v9, 0x80

    cmp-long v9, p1, v9

    if-nez v9, :cond_f6

    .line 1355
    if-nez v8, :cond_ef

    aget-object v4, v3, v4

    aget v4, v4, v14

    goto :goto_f3

    :cond_ef
    aget-object v4, v3, v4

    aget v4, v4, v15

    :goto_f3
    move v1, v4

    .line 1356
    move-object v5, v7

    .line 1357
    goto :goto_12a

    .line 1358
    :cond_f6
    const-wide/16 v9, 0x100

    cmp-long v9, p1, v9

    if-eqz v9, :cond_109

    const-wide/16 v9, 0x200

    cmp-long v9, p1, v9

    if-nez v9, :cond_103

    goto :goto_109

    .line 1363
    :cond_103
    const-string v4, "getColorThemeColor not matched."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    goto :goto_12a

    .line 1359
    :cond_109
    :goto_109
    if-nez v8, :cond_111

    aget-object v4, v3, v4

    const/4 v9, 0x4

    aget v4, v4, v9

    goto :goto_117

    :cond_111
    aget-object v4, v3, v4

    const/16 v9, 0x8

    aget v4, v4, v9

    :goto_117
    move v1, v4

    .line 1360
    move-object v5, v7

    .line 1361
    goto :goto_12a

    .line 1351
    :cond_11a
    :goto_11a
    if-nez v8, :cond_121

    aget-object v4, v3, v4

    aget v4, v4, v15

    goto :goto_125

    :cond_121
    aget-object v4, v3, v4

    aget v4, v4, v14

    :goto_125
    move v1, v4

    .line 1352
    move-object v5, v7

    .line 1353
    goto :goto_12a

    .line 1367
    .end local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v8    # "fontColor":I
    :cond_128
    :goto_128
    goto/16 :goto_a1

    .line 1369
    :cond_12a
    :goto_12a
    if-eqz v5, :cond_167

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    if-eqz v4, :cond_167

    .line 1370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColorThemeColor :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v7

    invoke-static {v7}, Landroid/app/SemWallpaperColors$Item;->-$$Nest$fgetmFontColor(Landroid/app/SemWallpaperColors$Item;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17d

    .line 1372
    :cond_167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColorThemeColor retColor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_17d
    return v1

    .line 1318
    :cond_17e
    :goto_17e
    nop

    .line 1319
    cmp-long v6, p1, v6

    if-nez v6, :cond_184

    goto :goto_185

    :cond_184
    move-wide v10, v12

    :goto_185
    invoke-virtual {v0, v10, v11}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    .line 1320
    .restart local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    if-nez v6, :cond_18f

    .line 1321
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return v16

    .line 1324
    :cond_18f
    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v7

    .line 1326
    .local v7, "fontColor":I
    if-nez v7, :cond_19a

    aget-object v4, v3, v4

    aget v4, v4, v14

    goto :goto_19e

    .line 1327
    :cond_19a
    aget-object v4, v3, v4

    aget v4, v4, v15

    :goto_19e
    move v1, v4

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getColorThemeColor nio text retColor: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return v1

    .line 1289
    .end local v1    # "retColor":I
    .end local v3    # "colorPalette":[[I
    .end local v5    # "retData":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "fontColor":I
    :cond_1b6
    :goto_1b6
    const-string v1, "getColorThemeColor: We don\'t have seed colors."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColors;->getItemFontColor(J)I

    move-result v1

    return v1
.end method

.method public getDarkModeDimColor()I
    .registers 2

    .line 335
    const/high16 v0, -0x1000000

    return v0
.end method

.method public getDarkModeDimOpacity()F
    .registers 2

    .line 339
    iget v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    return v0
.end method

.method public getKey()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 313
    .local v2, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v2    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_b

    .line 315
    :cond_1f
    return-object v0
.end method

.method public getSeedColors()[I
    .registers 2

    .line 1197
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    return-object v0
.end method

.method public getStandardPaletteList(Z)Ljava/util/List;
    .registers 5
    .param p1, "monet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[[I>;"
        }
    .end annotation

    .line 1263
    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;-><init>()V

    .line 1264
    .local v0, "standardColorPaletteCreator":Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->initSeedColors()V

    .line 1265
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->getSeedColors()[I

    move-result-object v1

    .line 1266
    .local v1, "seeds":[I
    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->setColors([I)V

    .line 1267
    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->generateColorPalette(Z)V

    .line 1268
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->getColorPalettes()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getStandardSeedColors()[I
    .registers 3

    .line 1258
    new-instance v0, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;-><init>()V

    .line 1259
    .local v0, "standardColorPaletteCreator":Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/colortheme/StandardColorPaletteCreator;->getSeedColors()[I

    move-result-object v1

    return-object v1
.end method

.method public getWhich()I
    .registers 2

    .line 319
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    return v0
.end method

.method public getXml()Ljava/lang/String;
    .registers 2

    .line 323
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->xmlGenerator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public save(Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperColors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez p1, :cond_22

    .line 245
    const-string/jumbo v0, "save, path == null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 249
    :cond_22
    const/4 v0, 0x0

    .line 250
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, "file":Ljava/io/File;
    :try_start_28
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 256
    goto :goto_30

    .line 254
    :catch_2c
    move-exception v3

    .line 255
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 259
    .end local v3    # "e":Ljava/io/IOException;
    :goto_30
    :try_start_30
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 260
    invoke-direct {p0}, Landroid/app/SemWallpaperColors;->xmlGenerator()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 261
    const-string/jumbo v3, "save done"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_55
    .catchall {:try_start_30 .. :try_end_49} :catchall_53

    .line 266
    nop

    .line 267
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 271
    :cond_4d
    :goto_4d
    goto :goto_5f

    .line 269
    :catch_4e
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_5f

    .line 265
    :catchall_53
    move-exception v1

    goto :goto_60

    .line 262
    :catch_55
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    :try_start_56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_4d

    .line 267
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_4e

    goto :goto_4d

    .line 273
    :goto_5f
    return-void

    .line 266
    :goto_60
    if-eqz v0, :cond_6b

    .line 267
    :try_start_62
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6b

    .line 269
    :catch_66
    move-exception v3

    .line 270
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    .line 271
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6b
    :goto_6b
    nop

    .line 272
    :goto_6c
    throw v1
.end method

.method public toSimpleString()Ljava/lang/String;
    .registers 12

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-static {v1}, Landroid/app/SemWallpaperColors;->isLock(I)Z

    move-result v1

    const-string v2, "["

    if-nez v1, :cond_51

    .line 1149
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_af

    .line 1150
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1151
    .local v3, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1152
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v5

    .line 1153
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    if-eqz v5, :cond_4f

    .line 1154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .end local v3    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    :cond_4f
    goto :goto_17

    :cond_50
    goto :goto_af

    .line 1159
    :cond_51
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_af

    .line 1160
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1161
    .local v1, "size":I
    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1162
    .local v4, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1163
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v6

    .line 1164
    .local v6, "item":Landroid/app/SemWallpaperColors$Item;
    iget-object v7, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1165
    .local v7, "index":I
    if-eqz v6, :cond_ae

    .line 1166
    if-lez v7, :cond_84

    if-ge v7, v1, :cond_84

    .line 1167
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_84
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v8

    invoke-static {v8}, Landroid/app/SemWallpaperColorsArea;->name(I)Ljava/lang/String;

    move-result-object v8

    .line 1170
    .local v8, "name":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .end local v4    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v5    # "rect":Landroid/graphics/Rect;
    .end local v6    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v7    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_ae
    goto :goto_5f

    .line 1176
    .end local v1    # "size":I
    :cond_af
    :goto_af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "[version:22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", which:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adaptive dim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", darkmode dim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    if-eqz v1, :cond_8f

    array-length v1, v1

    if-lez v1, :cond_8f

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\t[SeedColors, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    :cond_8f
    iget-object v1, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1131
    .local v3, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1132
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v5

    .line 1133
    .local v5, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v6

    invoke-static {v6}, Landroid/app/SemWallpaperColorsArea;->name(I)Ljava/lang/String;

    move-result-object v6

    .line 1134
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\t["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .end local v3    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "item":Landroid/app/SemWallpaperColors$Item;
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_95

    .line 1137
    :cond_e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1098
    iget v0, p0, Landroid/app/SemWallpaperColors;->mWhich:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 1102
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1104
    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object v2

    .line 1105
    .local v2, "item":Landroid/app/SemWallpaperColors$Item;
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1108
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1109
    invoke-virtual {v2}, Landroid/app/SemWallpaperColors$Item;->getHSV()[F

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1110
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    .end local v2    # "item":Landroid/app/SemWallpaperColors$Item;
    goto :goto_14

    .line 1112
    :cond_50
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1113
    iget v0, p0, Landroid/app/SemWallpaperColors;->mAdaptiveDimColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    iget v0, p0, Landroid/app/SemWallpaperColors;->mDarkModeDimOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1115
    iget-object v0, p0, Landroid/app/SemWallpaperColors;->mSeedColors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1116
    return-void
.end method
