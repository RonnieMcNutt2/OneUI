.class public Landroid/app/SemWallpaperResourcesInfo;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemWallpaperResourcesInfo$Item;,
        Landroid/app/SemWallpaperResourcesInfo$TypeParams;,
        Landroid/app/SemWallpaperResourcesInfo$Ascending;
    }
.end annotation


# static fields
.field private static final MAIN_SCREEN:I = 0x0

.field private static final SUB_SCREEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WallpaperResourcesInfo"

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field private static final WALLPAPER_TYPE_PRELOADED_LIVE:I = 0xa


# instance fields
.field private final mBespokeCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColorCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDefaultMultipackStyle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperResourcesInfo$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSupportCMF:Z

.field private final mKnownColorCode:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLiveItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperResourcesInfo$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I

.field private final mVideoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperResourcesInfo$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVersion:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultTypeMap:Ljava/util/HashMap;

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultMultipackStyle:Ljava/util/HashMap;

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mKnownColorCode:Ljava/util/HashSet;

    .line 68
    :try_start_3a
    const-string v1, "com.samsung.android.wallpaper.res"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    .line 69
    if-eqz v0, :cond_4a

    .line 70
    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->parsingJson()V

    .line 72
    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->ascendingSort()V

    .line 74
    :cond_4a
    invoke-direct {p0}, Landroid/app/SemWallpaperResourcesInfo;->checkCMF()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_50} :catch_51

    .line 77
    goto :goto_55

    .line 75
    :catch_51
    move-exception v0

    .line 76
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_55
    return-void
.end method

.method private addItem(Landroid/app/SemWallpaperResourcesInfo$Item;)V
    .registers 4
    .param p1, "item"    # Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 391
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 392
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 393
    :cond_e
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 394
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 395
    :cond_1a
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettype(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_27

    .line 396
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_27
    :goto_27
    return-void
.end method

.method private ascendingSort()V
    .registers 4

    .line 546
    new-instance v0, Landroid/app/SemWallpaperResourcesInfo$Ascending;

    invoke-direct {v0}, Landroid/app/SemWallpaperResourcesInfo$Ascending;-><init>()V

    .line 547
    .local v0, "ascending":Landroid/app/SemWallpaperResourcesInfo$Ascending;
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_15

    .line 548
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 551
    :cond_15
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_24

    .line 552
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 555
    :cond_24
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_33

    .line 556
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 558
    :cond_33
    return-void
.end method

.method private checkCMF()Z
    .registers 6

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "isCMF":Z
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 563
    .local v2, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_29

    .line 564
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo;->isValidCode(Ljava/util/ArrayList;)Z

    move-result v0

    .line 565
    if-eqz v0, :cond_29

    .line 566
    return v3

    .line 569
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_29
    goto :goto_7

    .line 570
    :cond_2a
    if-nez v0, :cond_54

    .line 571
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 572
    .restart local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_53

    .line 573
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo;->isValidCode(Ljava/util/ArrayList;)Z

    move-result v0

    .line 574
    if-eqz v0, :cond_53

    .line 575
    return v3

    .line 578
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_53
    goto :goto_32

    .line 580
    :cond_54
    if-nez v0, :cond_7e

    .line 581
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 582
    .restart local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7d

    .line 583
    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo;->isValidCode(Ljava/util/ArrayList;)Z

    move-result v0

    .line 584
    if-eqz v0, :cond_7d

    .line 585
    return v3

    .line 588
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_7d
    goto :goto_5c

    .line 590
    :cond_7e
    return v0
.end method

.method private convertJsonObjectToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 9
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 504
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 508
    .local v3, "value":Ljava/lang/Object;
    :try_start_18
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1c} :catch_65

    move-object v3, v4

    .line 512
    nop

    .line 514
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_29

    .line 515
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 516
    :cond_29
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_38

    .line 517
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_64

    .line 518
    :cond_38
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_47

    .line 519
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_64

    .line 520
    :cond_47
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_56

    .line 521
    move-object v4, v3

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_64

    .line 522
    :cond_56
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_64

    .line 523
    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Landroid/app/SemWallpaperResourcesInfo;->convertJsonObjectToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 525
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_64
    :goto_64
    goto :goto_9

    .line 509
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :catch_65
    move-exception v4

    .line 510
    .local v4, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertJsonObjectToBundle: failed to get value. key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperResourcesInfo"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    goto :goto_9

    .line 526
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_7f
    return-object v0
.end method

.method private getDefaultImageResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;
    .registers 13
    .param p1, "which"    # I

    .line 323
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    const-string v1, "WallpaperResourcesInfo"

    if-eqz v0, :cond_14b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_14b

    .line 327
    :cond_e
    const/4 v0, 0x0

    .line 328
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    const/4 v2, 0x0

    .line 329
    .local v2, "firstResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_18

    .line 330
    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 331
    .local v3, "screen":I
    :goto_19
    iget-boolean v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    const-string v5, " , "

    const-string v6, ", "

    if-eqz v4, :cond_a5

    .line 333
    :try_start_21
    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    .line 334
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a0

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultItem: colorCode = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " , screen = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 337
    .local v7, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-object v8, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-direct {p0, v7, p1, v3, v8}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by color code: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_9d} :catch_a1

    .line 339
    move-object v0, v7

    .line 340
    goto :goto_a0

    .line 342
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_9f
    goto :goto_57

    .line 346
    :cond_a0
    :goto_a0
    goto :goto_a5

    .line 344
    :catch_a1
    move-exception v4

    .line 345
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a5
    :goto_a5
    const/4 v4, 0x0

    .line 350
    .local v4, "isFirst":Z
    if-nez v0, :cond_113

    .line 351
    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_ae
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_113

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 352
    .local v8, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v9

    .line 353
    .local v9, "resourceWhich":I
    and-int v10, p1, v9

    if-ne v10, v9, :cond_112

    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v10

    if-ne v3, v10, :cond_112

    .line 354
    if-nez v4, :cond_d2

    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v10

    if-nez v10, :cond_d2

    .line 355
    move-object v2, v8

    .line 356
    const/4 v4, 0x1

    .line 358
    :cond_d2
    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v10

    if-eqz v10, :cond_112

    invoke-static {v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v10

    if-nez v10, :cond_112

    .line 359
    move-object v0, v8

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDefaultItem by default attr: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    goto :goto_113

    .line 364
    .end local v8    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v9    # "resourceWhich":I
    :cond_112
    goto :goto_ae

    .line 367
    :cond_113
    :goto_113
    if-nez v0, :cond_14a

    if-eqz v2, :cond_14a

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by first resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-object v2

    .line 371
    :cond_14a
    return-object v0

    .line 324
    .end local v0    # "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v2    # "firstResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v3    # "screen":I
    .end local v4    # "isFirst":Z
    :cond_14b
    :goto_14b
    const-string v0, "getDefaultItem: mImageItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultLiveWallpaperResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;
    .registers 11
    .param p1, "which"    # I

    .line 268
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "WallpaperResourcesInfo"

    if-nez v0, :cond_11

    .line 269
    const-string v0, "getDefaultLiveWallpaperResource: mLiveItems is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    return-object v0

    .line 273
    :cond_11
    const/4 v0, 0x0

    .line 274
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-boolean v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    const/4 v3, 0x0

    const-string v4, " , "

    const-string v5, ", "

    if-eqz v2, :cond_bb

    .line 276
    :try_start_1b
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    .line 277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 278
    and-int/lit8 v2, p1, 0x10

    const/16 v6, 0x10

    if-ne v2, v6, :cond_31

    .line 279
    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v3

    .line 280
    .local v2, "screen":I
    :goto_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultLiveWallpaperResource: colorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , screen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v6, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 282
    .local v7, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-object v8, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-direct {p0, v7, p1, v2, v8}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultLiveWallpaperResource by color code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_a0} :catch_a4

    .line 284
    move-object v0, v7

    .line 285
    goto :goto_a3

    .line 287
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_a2
    goto :goto_5a

    .line 291
    .end local v2    # "screen":I
    :cond_a3
    :goto_a3
    goto :goto_bb

    .line 289
    :catch_a4
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultLiveWallpaperResource: e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_bb
    :goto_bb
    if-nez v0, :cond_110

    .line 295
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_110

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 296
    .local v6, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, p1, v6}, Landroid/app/SemWallpaperResourcesInfo;->isWhichMatched(ILandroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v7

    if-eqz v7, :cond_10f

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultLiveWallpaperResource by default attr: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object v0, v6

    .line 299
    goto :goto_110

    .line 301
    .end local v6    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_10f
    goto :goto_c3

    .line 304
    :cond_110
    :goto_110
    if-nez v0, :cond_153

    .line 305
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 306
    .local v2, "firstItem":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, p1, v2}, Landroid/app/SemWallpaperResourcesInfo;->isWhichMatched(ILandroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v3

    if-eqz v3, :cond_153

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultLiveWallpaperResource by first resource: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object v0, v2

    .line 312
    .end local v2    # "firstItem":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_153
    return-object v0
.end method

.method private getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 539
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 540
    :catch_5
    move-exception v0

    .line 541
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 531
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 532
    :catch_5
    move-exception v0

    .line 533
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private isBespokeCode(Ljava/lang/String;)Z
    .registers 6
    .param p1, "colorCode"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "isBespoke":Z
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 120
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    .local v2, "code":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 122
    const/4 v0, 0x1

    .line 123
    goto :goto_24

    .line 125
    .end local v2    # "code":Ljava/lang/String;
    :cond_23
    goto :goto_f

    .line 127
    :cond_24
    :goto_24
    return v0
.end method

.method private isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z
    .registers 10
    .param p1, "item"    # Landroid/app/SemWallpaperResourcesInfo$Item;
    .param p2, "which"    # I
    .param p3, "screen"    # I
    .param p4, "colorCode"    # Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "isDefaultResource":Z
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v1

    .line 377
    .local v1, "resourceWhich":I
    and-int v2, p2, v1

    if-ne v2, v1, :cond_3b

    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v2

    .line 378
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v2

    if-ne p3, v2, :cond_3b

    .line 381
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 382
    .local v3, "cmfInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 383
    const/4 v0, 0x1

    .line 385
    .end local v3    # "cmfInfo":Ljava/lang/String;
    :cond_3a
    goto :goto_21

    .line 387
    :cond_3b
    return v0
.end method

.method private isPhone(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 609
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 611
    .local v0, "isPhone":Z
    :goto_f
    return v0
.end method

.method private isValidCode(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 594
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 595
    .local v0, "isValid":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 596
    .local v2, "code":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 597
    const/4 v0, 0x1

    .line 598
    goto :goto_1a

    .line 600
    .end local v2    # "code":Ljava/lang/String;
    :cond_19
    goto :goto_5

    .line 601
    :cond_1a
    :goto_1a
    return v0
.end method

.method private isWhichMatched(ILandroid/app/SemWallpaperResourcesInfo$Item;)Z
    .registers 8
    .param p1, "which"    # I
    .param p2, "item"    # Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 316
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_a

    .line 317
    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 318
    .local v0, "targetItemScreen":I
    :goto_b
    and-int/lit8 v3, p1, 0x3

    .line 319
    .local v3, "targetItemWhich":I
    invoke-static {p2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetwhich(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v4

    if-ne v4, v3, :cond_1a

    invoke-static {p2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetscreen(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v4

    if-ne v4, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method private parsingJson()V
    .registers 18

    .line 401
    move-object/from16 v1, p0

    const-string v2, "WallpaperResourcesInfo"

    iget-object v0, v1, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v3, "raw"

    const-string v4, "com.samsung.android.wallpaper.res"

    const-string/jumbo v5, "resources_info"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 402
    .local v3, "resId":I
    const/4 v4, 0x0

    .line 403
    .local v4, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v5, v0

    .line 404
    .local v5, "writer":Ljava/io/Writer;
    const/16 v0, 0x400

    new-array v6, v0, [C

    .line 406
    .local v6, "buffer":[C
    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_23
    iget-object v0, v1, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 407
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 409
    .local v0, "reader":Ljava/io/Reader;
    :goto_3a
    invoke-virtual {v0, v6}, Ljava/io/Reader;->read([C)I

    move-result v9

    move v10, v9

    .local v10, "n":I
    if-eq v9, v8, :cond_45

    .line 410
    invoke-virtual {v5, v6, v7, v10}, Ljava/io/Writer;->write([CII)V
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_44} :catch_77
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_44} :catch_67
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_44} :catch_57
    .catchall {:try_start_23 .. :try_end_44} :catchall_53

    goto :goto_3a

    .line 424
    .end local v0    # "reader":Ljava/io/Reader;
    .end local v10    # "n":I
    :cond_45
    if-eqz v4, :cond_52

    .line 425
    :try_start_47
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_52

    .line 427
    :catch_4b
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 428
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_87

    .line 429
    :cond_52
    :goto_52
    goto :goto_87

    .line 423
    :catchall_53
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1d9

    .line 419
    :catch_57
    move-exception v0

    .line 420
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_58
    const-string/jumbo v9, "parsingJson: IOException"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_53

    .line 424
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_52

    .line 425
    :try_start_63
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_4b

    goto :goto_52

    .line 416
    :catch_67
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_68
    const-string/jumbo v9, "parsingJson: UnsupportedEncodingException"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_53

    .line 424
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    if-eqz v4, :cond_52

    .line 425
    :try_start_73
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_4b

    goto :goto_52

    .line 413
    :catch_77
    move-exception v0

    .line 414
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_78
    const-string/jumbo v9, "parsingJson: json file is not exist"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_53

    .line 424
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v4, :cond_52

    .line 425
    :try_start_83
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_4b

    goto :goto_52

    .line 432
    :goto_87
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "jsonData":Ljava/lang/String;
    :try_start_8b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "phone"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 438
    .local v9, "jsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_98
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_8b .. :try_end_9c} :catch_1d2

    const-string/jumbo v12, "type"

    const-string/jumbo v13, "which"

    const-string/jumbo v14, "screen"

    if-ge v10, v11, :cond_16c

    .line 439
    :try_start_a7
    new-instance v11, Landroid/app/SemWallpaperResourcesInfo$Item;

    invoke-direct {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;-><init>()V

    .line 440
    .local v11, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 441
    .local v15, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "isDefault"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V

    .line 442
    const-string v8, "isBespoke"

    invoke-virtual {v15, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputisBespoke(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V

    .line 443
    const-string v8, "isBlackFirstFrame"

    invoke-virtual {v15, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;Z)V

    .line 444
    const-string v8, "index"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputindex(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/Integer;)V

    .line 445
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputtype(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 446
    const-string v8, "filename"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputfileName(Landroid/app/SemWallpaperResourcesInfo$Item;Ljava/lang/String;)V

    .line 447
    const/4 v8, -0x1

    invoke-virtual {v15, v13, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputwhich(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 448
    invoke-virtual {v15, v14, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputscreen(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 449
    const-string v12, "frame_no"

    invoke-virtual {v15, v12, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v11, v12}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fputvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;I)V

    .line 450
    const-string v12, "cmf_info"

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 451
    .local v12, "cmfArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_108
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_129

    .line 452
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 453
    .local v14, "colorCode":Ljava/lang/String;
    invoke-static {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v7, v1, Landroid/app/SemWallpaperResourcesInfo;->mKnownColorCode:Ljava/util/HashSet;

    invoke-virtual {v7, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    nop

    .end local v14    # "colorCode":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_108

    .line 458
    .end local v13    # "j":I
    :cond_129
    const-string/jumbo v7, "type_params"

    invoke-direct {v1, v15, v7}, Landroid/app/SemWallpaperResourcesInfo;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 459
    .local v7, "typeParams":Lorg/json/JSONObject;
    if-eqz v7, :cond_15f

    .line 460
    invoke-static {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v13

    const-string/jumbo v14, "service_package_name"

    invoke-direct {v1, v7, v14}, Landroid/app/SemWallpaperResourcesInfo;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    .line 461
    invoke-static {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v13

    const-string/jumbo v14, "service_class_name"

    invoke-direct {v1, v7, v14}, Landroid/app/SemWallpaperResourcesInfo;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    .line 462
    const-string/jumbo v13, "service_settings"

    invoke-direct {v1, v7, v13}, Landroid/app/SemWallpaperResourcesInfo;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 463
    .local v13, "svcSettingsObj":Lorg/json/JSONObject;
    if-eqz v13, :cond_15f

    .line 464
    invoke-static {v11}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v14

    invoke-direct {v1, v13}, Landroid/app/SemWallpaperResourcesInfo;->convertJsonObjectToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v14, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceSettings:Landroid/os/Bundle;

    .line 468
    .end local v13    # "svcSettingsObj":Lorg/json/JSONObject;
    :cond_15f
    invoke-direct {v1, v11}, Landroid/app/SemWallpaperResourcesInfo;->addItem(Landroid/app/SemWallpaperResourcesInfo$Item;)V
    :try_end_162
    .catch Lorg/json/JSONException; {:try_start_a7 .. :try_end_162} :catch_168

    .line 438
    .end local v7    # "typeParams":Lorg/json/JSONObject;
    .end local v11    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v12    # "cmfArray":Lorg/json/JSONArray;
    .end local v15    # "object":Lorg/json/JSONObject;
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    goto/16 :goto_98

    .line 496
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :catch_168
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_1d5

    .line 472
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsonArray":Lorg/json/JSONArray;
    :cond_16c
    :try_start_16c
    const-string/jumbo v7, "types"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 473
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .local v7, "jsonArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_1a6

    .line 474
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_176
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1a3

    .line 475
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 476
    .local v9, "object":Lorg/json/JSONObject;
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 477
    .local v10, "screen":I
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 478
    .local v11, "which":I
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 479
    .local v15, "type":I
    invoke-direct {v1, v10, v11, v15}, Landroid/app/SemWallpaperResourcesInfo;->setDefaultWallpaperType(III)V
    :try_end_18f
    .catch Lorg/json/JSONException; {:try_start_16c .. :try_end_18f} :catch_1d2

    .line 480
    move-object/from16 v16, v2

    .end local v2    # "jsonData":Ljava/lang/String;
    .local v16, "jsonData":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v15, v2, :cond_19e

    .line 481
    :try_start_194
    const-string/jumbo v2, "style"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "style":Ljava/lang/String;
    invoke-direct {v1, v10, v11, v2}, Landroid/app/SemWallpaperResourcesInfo;->setDefaultMultipackStyle(IILjava/lang/String;)V

    .line 474
    .end local v2    # "style":Ljava/lang/String;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v10    # "screen":I
    .end local v11    # "which":I
    .end local v15    # "type":I
    :cond_19e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    goto :goto_176

    .end local v16    # "jsonData":Ljava/lang/String;
    .local v2, "jsonData":Ljava/lang/String;
    :cond_1a3
    move-object/from16 v16, v2

    .end local v2    # "jsonData":Ljava/lang/String;
    .restart local v16    # "jsonData":Ljava/lang/String;
    goto :goto_1a8

    .line 473
    .end local v8    # "i":I
    .end local v16    # "jsonData":Ljava/lang/String;
    .restart local v2    # "jsonData":Ljava/lang/String;
    :cond_1a6
    move-object/from16 v16, v2

    .line 487
    .end local v2    # "jsonData":Ljava/lang/String;
    .restart local v16    # "jsonData":Ljava/lang/String;
    :goto_1a8
    const-string v2, "bespoke"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 488
    .local v2, "bespokeArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_1cf

    .line 489
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1b1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1cf

    .line 490
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 491
    .local v9, "colorCode":Ljava/lang/String;
    iget-object v10, v1, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v10, v1, Landroid/app/SemWallpaperResourcesInfo;->mKnownColorCode:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1cb
    .catch Lorg/json/JSONException; {:try_start_194 .. :try_end_1cb} :catch_1d0

    .line 489
    nop

    .end local v9    # "colorCode":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b1

    .line 498
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "bespokeArray":Lorg/json/JSONArray;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "i":I
    :cond_1cf
    goto :goto_1d8

    .line 496
    :catch_1d0
    move-exception v0

    goto :goto_1d5

    .end local v16    # "jsonData":Ljava/lang/String;
    .local v2, "jsonData":Ljava/lang/String;
    :catch_1d2
    move-exception v0

    move-object/from16 v16, v2

    .line 497
    .end local v2    # "jsonData":Ljava/lang/String;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v16    # "jsonData":Ljava/lang/String;
    :goto_1d5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 499
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1d8
    return-void

    .line 424
    .end local v16    # "jsonData":Ljava/lang/String;
    :goto_1d9
    if-eqz v4, :cond_1e6

    .line 425
    :try_start_1db
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1de} :catch_1df

    goto :goto_1e6

    .line 427
    :catch_1df
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 428
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e7

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e6
    :goto_1e6
    nop

    .line 430
    :goto_1e7
    throw v2
.end method

.method private setDefaultMultipackStyle(IILjava/lang/String;)V
    .registers 7
    .param p1, "screen"    # I
    .param p2, "which"    # I
    .param p3, "style"    # Ljava/lang/String;

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 633
    :cond_6
    if-nez p1, :cond_a

    or-int/lit8 v0, v0, 0x4

    .line 634
    :cond_a
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultMultipackStyle:Ljava/util/HashMap;

    or-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    return-void
.end method

.method private setDefaultWallpaperType(III)V
    .registers 8
    .param p1, "screen"    # I
    .param p2, "which"    # I
    .param p3, "type"    # I

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 617
    :cond_6
    if-nez p1, :cond_a

    or-int/lit8 v0, v0, 0x4

    .line 618
    :cond_a
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultTypeMap:Ljava/util/HashMap;

    or-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    return-void
.end method


# virtual methods
.method public getDefaultImageFileName(I)Ljava/lang/String;
    .registers 4
    .param p1, "which"    # I

    .line 150
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    .line 151
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    if-nez v0, :cond_8

    .line 152
    const/4 v1, 0x0

    return-object v1

    .line 155
    :cond_8
    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "resourceName":Ljava/lang/String;
    return-object v1
.end method

.method public getDefaultImageWallpaper(I)Ljava/io/InputStream;
    .registers 9
    .param p1, "which"    # I

    .line 131
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const-string v2, "WallpaperResourcesInfo"

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_70

    .line 136
    :cond_e
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "resourceName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultImageWallpaper: resourceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_6f

    .line 139
    :cond_31
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "inputStream":Ljava/io/InputStream;
    iget-object v4, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.samsung.android.wallpaper.res"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "wallpaperResId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultImageWallpaper: wallpaperResId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-gtz v4, :cond_64

    return-object v1

    .line 145
    :cond_64
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 146
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    return-object v1

    .line 138
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "wallpaperResId":I
    :cond_6f
    :goto_6f
    return-object v1

    .line 132
    .end local v0    # "resourceName":Ljava/lang/String;
    :cond_70
    :goto_70
    const-string v0, "getDefaultWallpaper: mItem is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v1
.end method

.method public getDefaultLiveWallpaperComponentName(I)Landroid/content/ComponentName;
    .registers 6
    .param p1, "which"    # I

    .line 244
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    .line 245
    .local v0, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v1

    iget-object v1, v1, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v1

    iget-object v1, v1, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_31

    .line 250
    :cond_1f
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v2

    iget-object v2, v2, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServicePkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v3

    iget-object v3, v3, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceClassName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 248
    :cond_31
    :goto_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultLiveWallpaperSettings(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "which"    # I

    .line 254
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperResource(I)Landroid/app/SemWallpaperResourcesInfo$Item;

    move-result-object v0

    .line 255
    .local v0, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgettypeParams(Landroid/app/SemWallpaperResourcesInfo$Item;)Landroid/app/SemWallpaperResourcesInfo$TypeParams;

    move-result-object v1

    iget-object v1, v1, Landroid/app/SemWallpaperResourcesInfo$TypeParams;->mServiceSettings:Landroid/os/Bundle;

    return-object v1
.end method

.method public getDefaultMultipackStyle(I)Ljava/lang/String;
    .registers 4
    .param p1, "which"    # I

    .line 638
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isPhone(I)Z

    move-result v0

    if-eqz v0, :cond_8

    or-int/lit8 p1, p1, 0x4

    .line 639
    :cond_8
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultMultipackStyle:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVideoFrameInfo(Ljava/lang/String;)I
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WallpaperResourcesInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 205
    const-string v0, "getDefaultVideoFrameInfo: fileName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v2

    .line 209
    :cond_f
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_43

    .line 214
    :cond_1a
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 215
    .local v1, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 216
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetvideoFrameInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result v0

    return v0

    .line 218
    .end local v1    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_41
    goto :goto_20

    .line 220
    :cond_42
    return v2

    .line 210
    :cond_43
    :goto_43
    const-string v0, "getDefaultVideoFrameInfo: mVideoItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v2
.end method

.method public getDefaultVideoWallpaperFileName(I)Ljava/lang/String;
    .registers 11
    .param p1, "which"    # I

    .line 160
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    const-string v1, "WallpaperResourcesInfo"

    if-eqz v0, :cond_13e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_13e

    .line 164
    :cond_e
    const/4 v0, 0x0

    .line 165
    .local v0, "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    and-int/lit8 v2, p1, 0x10

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-ne v2, v3, :cond_18

    .line 166
    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    move v2, v4

    .line 167
    .local v2, "screen":I
    :goto_19
    iget-boolean v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    const-string v5, " , "

    const-string v6, ", "

    if-eqz v3, :cond_a5

    .line 169
    :try_start_21
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDeviceColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    .line 170
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultItem: colorCode = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " , screen = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 173
    .local v7, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    iget-object v8, p0, Landroid/app/SemWallpaperResourcesInfo;->mColorCode:Ljava/lang/String;

    invoke-direct {p0, v7, p1, v2, v8}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9f

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by color code: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_9d} :catch_a1

    .line 175
    move-object v0, v7

    .line 176
    goto :goto_a0

    .line 178
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_9f
    goto :goto_57

    .line 182
    :cond_a0
    :goto_a0
    goto :goto_a5

    .line 180
    :catch_a1
    move-exception v3

    .line 181
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a5
    :goto_a5
    if-nez v0, :cond_f4

    .line 186
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 187
    .restart local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisDefault(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v8

    if-eqz v8, :cond_f3

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by default attr: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object v0, v7

    .line 190
    goto :goto_f4

    .line 192
    .end local v7    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_f3
    goto :goto_ad

    .line 195
    :cond_f4
    :goto_f4
    if-nez v0, :cond_139

    .line 196
    iget-object v3, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 197
    .local v3, "firstVideo":Landroid/app/SemWallpaperResourcesInfo$Item;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultItem by first resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 200
    .end local v3    # "firstVideo":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_139
    invoke-static {v0}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 161
    .end local v0    # "defaultResource":Landroid/app/SemWallpaperResourcesInfo$Item;
    .end local v2    # "screen":I
    :cond_13e
    :goto_13e
    const-string v0, "getDefaultVideoWallpaperFileName: mVideoItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultWallpaperType(I)I
    .registers 5
    .param p1, "which"    # I

    .line 622
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isPhone(I)Z

    move-result v0

    if-eqz v0, :cond_8

    or-int/lit8 p1, p1, 0x4

    .line 623
    :cond_8
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mDefaultTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 624
    .local v0, "type":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_22

    .line 625
    const/4 v0, 0x7

    .line 627
    :cond_22
    return v0
.end method

.method public getDefaultWallpaperType(ILjava/lang/String;)I
    .registers 12
    .param p1, "which"    # I
    .param p2, "colorCode"    # Ljava/lang/String;

    .line 81
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 83
    .local v0, "screen":I
    :goto_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WallpaperResourcesInfo"

    if-nez v2, :cond_12c

    invoke-direct {p0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isBespokeCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12c

    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mBespokeCode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12c

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaperType: colorCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , screen = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_40
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_128

    const-string v5, " , "

    const-string v6, ", "

    const-string v7, "getDefaultWallpaperType by color code: "

    if-eqz v4, :cond_92

    :try_start_52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 88
    .local v4, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, v4, p1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/16 v1, 0x8

    return v1

    .line 92
    .end local v4    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_91
    goto :goto_46

    .line 93
    :cond_92
    iget-object v2, p0, Landroid/app/SemWallpaperResourcesInfo;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 94
    .restart local v4    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, v4, p1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1

    .line 98
    .end local v4    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_db
    goto :goto_98

    .line 99
    :cond_dc
    iget-object v1, p0, Landroid/app/SemWallpaperResourcesInfo;->mLiveItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 100
    .local v2, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-direct {p0, v2, p1, v0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultResource(Landroid/app/SemWallpaperResourcesInfo$Item;IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetcmfInfo(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_124} :catch_128

    .line 102
    const/4 v1, 0x7

    return v1

    .line 104
    .end local v2    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_126
    goto :goto_e2

    .line 107
    :cond_127
    goto :goto_12c

    .line 105
    :catch_128
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12c
    :goto_12c
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(I)I

    move-result v1

    .line 110
    .local v1, "type":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_135

    .line 111
    const/4 v1, 0x7

    .line 113
    :cond_135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaperType: which = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v1
.end method

.method public isBlackFirstFrame(Ljava/lang/String;)Z
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WallpaperResourcesInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 225
    const-string v0, "isBlackFirstFrame: fileName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v2

    .line 229
    :cond_f
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_43

    .line 234
    :cond_1a
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mVideoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 235
    .local v1, "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetfileName(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 236
    invoke-static {v1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetisBlackFirstFrame(Landroid/app/SemWallpaperResourcesInfo$Item;)Z

    move-result v0

    return v0

    .line 238
    .end local v1    # "item":Landroid/app/SemWallpaperResourcesInfo$Item;
    :cond_41
    goto :goto_20

    .line 240
    :cond_42
    return v2

    .line 230
    :cond_43
    :goto_43
    const-string v0, "isBlackFirstFrame: mVideoItems is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v2
.end method

.method public isDefaultMultipack(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 647
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isDefaultVideo(I)Z
    .registers 4
    .param p1, "which"    # I

    .line 643
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isKnownColorCode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "colorCode"    # Ljava/lang/String;

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 260
    const/4 v0, 0x0

    return v0

    .line 262
    :cond_8
    iget-object v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mKnownColorCode:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 263
    .local v0, "isKnown":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKnownColorCode: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isKnown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperResourcesInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v0
.end method

.method public isSupportCMF()Z
    .registers 2

    .line 605
    iget-boolean v0, p0, Landroid/app/SemWallpaperResourcesInfo;->mIsSupportCMF:Z

    return v0
.end method
