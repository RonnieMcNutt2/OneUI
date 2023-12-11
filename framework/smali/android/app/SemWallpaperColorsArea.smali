.class public Landroid/app/SemWallpaperColorsArea;
.super Ljava/lang/Object;
.source "SemWallpaperColorsArea.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BACKGROUND:I = 0x7

.field public static final BODY:I = 0x1

.field public static final BODY_BOTTOM:I = 0x4

.field public static final BODY_CENTER:I = 0x8

.field public static final BODY_LEFT:I = 0x9

.field public static final BODY_MID:I = 0x3

.field public static final BODY_RIGHT:I = 0xa

.field public static final BODY_TOP:I = 0x2

.field public static final COVER_DISPLAY_DENSITY:F = 1.0f

.field public static final COVER_LARGE_DISPLAY_DENSITY:F = 2.125f

.field private static final DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"

.field public static final NAME:[Ljava/lang/String;

.field public static final NAVIBAR:I = 0x5

.field public static final NAVIBAR_HOME:I = 0x6

.field public static final RATIO_FOLD_SUB_CRITERIA:I = 0x2

.field public static final STATUSBAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWallpaperColorsArea"

.field private static final mVirtualDisplayHeightDp:I = 0xf4

.field private static final mVirtualDisplayWidthDp:I = 0x99


# instance fields
.field private mContext:Landroid/content/Context;

.field mDensity:F

.field mDpHeight:I

.field mDpNavigationBarHeight:I

.field mDpStatusBarHeight:I

.field mDpStatusBarTopMargin:I

.field mDpWidth:I

.field mHeight:I

.field mInit:Z

.field private mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:I

.field private mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

.field private mWhich:I

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 78
    const-string v0, "STATUSBAR"

    const-string v1, "BODY"

    const-string v2, "BODY_TOP"

    const-string v3, "BODY_MID"

    const-string v4, "BODY_BOTTOM"

    const-string v5, "NAVIBAR"

    const-string v6, "NAVIBAR"

    const-string v7, "BACKGROUND"

    const-string v8, "BODY_CENTER"

    const-string v9, "BODY_LEFT"

    const-string v10, "BODY_RIGHT"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemWallpaperColorsArea;-><init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/app/WallpaperColorOverrideAreas;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "rotation"    # I
    .param p4, "baseOverrideColorArea"    # Landroid/app/WallpaperColorOverrideAreas;

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    .line 101
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/app/SemWallpaperColorsArea;->mInit:Z

    .line 119
    iput-object v1, v0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    .line 120
    iput v2, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    .line 121
    iput v3, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    .line 123
    if-eqz v1, :cond_33

    .line 124
    if-eqz v4, :cond_29

    .line 125
    new-instance v6, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v6, v1, v2, v4}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;ILandroid/app/WallpaperColorOverrideAreas;)V

    iput-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    goto :goto_33

    .line 127
    :cond_29
    new-instance v6, Landroid/app/WallpaperColorOverrideAreas;

    invoke-direct {v6, v1, v2}, Landroid/app/WallpaperColorOverrideAreas;-><init>(Landroid/content/Context;I)V

    iput-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    .line 128
    invoke-virtual {v6}, Landroid/app/WallpaperColorOverrideAreas;->load()V

    .line 132
    :cond_33
    :goto_33
    const/4 v6, 0x0

    .line 133
    .local v6, "width":I
    const/4 v7, 0x0

    .line 135
    .local v7, "height":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 138
    .local v8, "resource":Landroid/content/res/Resources;
    iget-object v9, v0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    if-nez v9, :cond_4a

    .line 139
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 140
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_58

    .line 142
    :cond_4a
    invoke-direct/range {p0 .. p2}, Landroid/app/SemWallpaperColorsArea;->getCoverScreenSize(Landroid/content/Context;I)Landroid/graphics/Point;

    move-result-object v9

    .line 143
    .local v9, "size":Landroid/graphics/Point;
    if-nez v9, :cond_54

    .line 144
    invoke-direct {v0, v2}, Landroid/app/SemWallpaperColorsArea;->getDisplaySize(I)Landroid/graphics/Point;

    move-result-object v9

    .line 146
    :cond_54
    iget v6, v9, Landroid/graphics/Point;->x:I

    .line 147
    iget v7, v9, Landroid/graphics/Point;->y:I

    .line 149
    .end local v9    # "size":Landroid/graphics/Point;
    :goto_58
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SemWallpaperColorsArea ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "] which: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " rotation: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " has Base: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v4, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v5, 0x0

    :goto_8f
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "SemWallpaperColorsArea"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v5, 0x0

    .line 152
    .local v5, "isLandscapeMode":Z
    if-le v6, v7, :cond_a0

    .line 153
    const/4 v5, 0x1

    .line 156
    :cond_a0
    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    .line 157
    iput v7, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    .line 159
    const/4 v11, 0x0

    .line 160
    .local v11, "statusBarHeight":I
    const/4 v12, 0x0

    .line 161
    .local v12, "navigationBarHeight":I
    const/4 v13, 0x0

    .line 163
    .local v13, "statusBarTopMargin":I
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/16 v15, 0x10

    if-eqz v14, :cond_b6

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v14, :cond_b6

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v14, v15

    if-eq v14, v15, :cond_c1

    :cond_b6
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v14, :cond_d1

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    const/16 v15, 0x20

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_d1

    .line 168
    :cond_c1
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v14, :cond_100

    .line 169
    const/16 v11, 0x1e

    .line 170
    const/16 v12, 0x43

    .line 171
    const v14, 0x10504f1

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    goto :goto_100

    .line 174
    :cond_d1
    const v14, 0x1050253

    if-eqz v3, :cond_e8

    .line 175
    if-nez v5, :cond_dc

    .line 176
    iput v7, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    .line 177
    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    .line 179
    :cond_dc
    const v15, 0x10504f6

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 180
    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_100

    .line 182
    :cond_e8
    if-eqz v5, :cond_ee

    .line 183
    iput v7, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    .line 184
    iput v6, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    .line 186
    :cond_ee
    const v15, 0x10504f7

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 187
    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 188
    const v14, 0x10504f1

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 191
    :cond_100
    :goto_100
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v14, :cond_11d

    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v14, :cond_11d

    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    const/16 v15, 0x10

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_11d

    .line 193
    sget-boolean v14, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v14, :cond_118

    .line 194
    const/high16 v14, 0x40080000    # 2.125f

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    goto :goto_125

    .line 196
    :cond_118
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    goto :goto_125

    .line 199
    :cond_11d
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    .line 201
    :goto_125
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v14, v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    .line 202
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v14, v14

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    .line 203
    int-to-float v14, v11

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    .line 204
    int-to-float v14, v12

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    .line 205
    int-to-float v14, v13

    div-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    .line 207
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SemWallpaperColorsArea which = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mDensity : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v1, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private getCoverScreenSize(Landroid/content/Context;I)Landroid/graphics/Point;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 840
    const/4 v0, 0x0

    .line 842
    .local v0, "screenSize":Landroid/graphics/Point;
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_3a

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v1, :cond_3a

    and-int/lit8 v1, p2, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3a

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_3a

    .line 846
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 847
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string v2, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 849
    .local v2, "displays":[Landroid/view/Display;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_3a

    aget-object v5, v2, v4

    .line 850
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    .line 851
    .local v6, "id":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_37

    .line 852
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    move-object v0, v7

    .line 853
    invoke-virtual {v5, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 849
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "id":I
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 857
    .end local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "displays":[Landroid/view/Display;
    :cond_3a
    return-object v0
.end method

.method private getDisplayId(I)I
    .registers 6
    .param p1, "which"    # I

    .line 746
    const/4 v0, 0x0

    .line 749
    .local v0, "displayId":I
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 750
    const/4 v1, 0x2

    return v1

    .line 754
    :cond_9
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_34

    .line 755
    and-int/lit8 v1, p1, 0x10

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 756
    .local v1, "isSubDisplay":Z
    :goto_17
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v3, :cond_21

    .line 757
    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v0

    :goto_1f
    move v0, v2

    goto :goto_34

    .line 759
    :cond_21
    iget-object v2, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 760
    .local v2, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-nez v3, :cond_31

    .line 761
    if-nez v1, :cond_34

    .line 762
    const/4 v0, 0x1

    goto :goto_34

    .line 765
    :cond_31
    if-eqz v1, :cond_34

    .line 766
    const/4 v0, 0x1

    .line 772
    .end local v1    # "isSubDisplay":Z
    .end local v2    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_34
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperColorsArea"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return v0
.end method

.method private getDisplayInfo(II)Landroid/view/DisplayInfo;
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "which"    # I

    .line 811
    iget-object v0, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 812
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 813
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 815
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_3f

    .line 816
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v3, :cond_3b

    and-int/lit8 v3, p2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3b

    .line 817
    const-string v3, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    .line 818
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    if-lez v4, :cond_3a

    .line 819
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 820
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 821
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 822
    .local v4, "screenSize":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 823
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 824
    .local v5, "screenW":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 826
    .end local v3    # "displays":[Landroid/view/Display;
    .end local v4    # "screenSize":Landroid/graphics/Point;
    .end local v5    # "screenW":I
    :cond_3a
    goto :goto_58

    .line 827
    :cond_3b
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_58

    .line 830
    :cond_3f
    const-string v3, "SemWallpaperColorsArea"

    const-string v4, "getDisplayInfo display == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v3, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 832
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 833
    .local v4, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v4, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 836
    .end local v3    # "wm":Landroid/view/WindowManager;
    .end local v4    # "defaultDisplay":Landroid/view/Display;
    :goto_58
    return-object v2
.end method

.method private getDisplaySize(I)Landroid/graphics/Point;
    .registers 13
    .param p1, "which"    # I

    .line 778
    invoke-direct {p0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayId(I)I

    move-result v0

    .line 779
    .local v0, "displayId":I
    invoke-direct {p0, v0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 780
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 781
    .local v2, "size":Landroid/graphics/Point;
    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 782
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplaySize() which:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SemWallpaperColorsArea"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v3, :cond_cd

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v3, :cond_cd

    and-int/lit8 v3, p1, 0x8

    const/16 v6, 0x8

    if-eq v3, v6, :cond_cd

    iget-object v3, p0, Landroid/app/SemWallpaperColorsArea;->mContext:Landroid/content/Context;

    .line 788
    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v3

    if-eqz v3, :cond_5d

    goto/16 :goto_cd

    .line 794
    :cond_5d
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 795
    .local v3, "ratio":F
    and-int/lit8 v6, p1, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    if-ne v6, v9, :cond_6e

    move v6, v7

    goto :goto_6f

    :cond_6e
    move v6, v8

    .line 796
    .local v6, "isSubDisplay":Z
    :goto_6f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDisplaySize() ratio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isSubDisplay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v6, :cond_97

    cmpg-float v10, v3, v9

    if-ltz v10, :cond_9d

    :cond_97
    if-nez v6, :cond_cc

    cmpl-float v9, v3, v9

    if-lez v9, :cond_cc

    .line 800
    :cond_9d
    if-nez v0, :cond_a0

    goto :goto_a1

    :cond_a0
    move v7, v8

    :goto_a1
    move v0, v7

    .line 801
    invoke-direct {p0, v0, p1}, Landroid/app/SemWallpaperColorsArea;->getDisplayInfo(II)Landroid/view/DisplayInfo;

    move-result-object v7

    .line 802
    .local v7, "display":Landroid/view/DisplayInfo;
    iget v8, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 803
    iget v8, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    .line 804
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDisplaySize() wrong displayInfo, changed to displayId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .end local v7    # "display":Landroid/view/DisplayInfo;
    :cond_cc
    return-object v2

    .line 789
    .end local v3    # "ratio":F
    .end local v6    # "isSubDisplay":Z
    :cond_cd
    :goto_cd
    return-object v2
.end method

.method static name(I)Ljava/lang/String;
    .registers 3
    .param p0, "area"    # I

    .line 739
    if-ltz p0, :cond_b

    sget-object v0, Landroid/app/SemWallpaperColorsArea;->NAME:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_8

    goto :goto_b

    .line 742
    :cond_8
    aget-object v0, v0, p0

    return-object v0

    .line 740
    :cond_b
    :goto_b
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public buildKeyMap(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/SemWallpaperColors$WallpaperColorsData;",
            ">;)V"
        }
    .end annotation

    .line 873
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SemWallpaperColors$WallpaperColorsData;>;"
    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_33

    .line 877
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemWallpaperColors$WallpaperColorsData;

    .line 878
    .local v1, "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    if-nez v1, :cond_1c

    .line 879
    goto :goto_d

    .line 882
    :cond_1c
    iget-object v2, p0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getInternalKey()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/SemWallpaperColors$WallpaperColorsData;->getExternalKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .end local v1    # "data":Landroid/app/SemWallpaperColors$WallpaperColorsData;
    goto :goto_d

    .line 884
    :cond_32
    return-void

    .line 874
    :cond_33
    :goto_33
    return-void
.end method

.method public clone()Landroid/app/SemWallpaperColorsArea;
    .registers 4

    .line 863
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColorsArea;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 864
    :catch_7
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 866
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

    const-string v2, "SemWallpaperColorsArea"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
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

    .line 57
    invoke-virtual {p0}, Landroid/app/SemWallpaperColorsArea;->clone()Landroid/app/SemWallpaperColorsArea;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "area"    # I

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/SemWallpaperColorsArea;->get(III)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public get(III)Landroid/graphics/Rect;
    .registers 24
    .param p1, "area"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 218
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 222
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v5

    const-wide v6, 0x3fc3333333333333L    # 0.15

    const-string/jumbo v8, "unhandle area "

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-string v11, "SemWallpaperColorsArea"

    const/16 v12, 0x18

    const/4 v13, 0x0

    if-eqz v5, :cond_254

    .line 223
    const/4 v5, 0x1

    .line 224
    .local v5, "displayType":I
    const-string/jumbo v14, "tablet mode"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v14, :cond_13d

    .line 226
    const/4 v14, 0x3

    .line 227
    .local v14, "rotationType":I
    packed-switch v1, :pswitch_data_a34

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    goto/16 :goto_921

    .line 271
    :pswitch_47
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 272
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 273
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 274
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 275
    goto/16 :goto_921

    .line 265
    :pswitch_55
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 266
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 267
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 268
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 269
    goto/16 :goto_921

    .line 259
    :pswitch_68
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 260
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 261
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 262
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 263
    goto/16 :goto_921

    .line 253
    :pswitch_8c
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 254
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 255
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 256
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 257
    goto/16 :goto_921

    .line 247
    :pswitch_bb
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 248
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 249
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    add-int/lit16 v6, v6, 0x8a

    add-int/lit16 v6, v6, 0x8b

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 250
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 251
    goto/16 :goto_921

    .line 241
    :pswitch_dd
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 242
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 243
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 244
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 245
    goto/16 :goto_921

    .line 235
    :pswitch_fb
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 236
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 237
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb3f7ced916872bL    # 0.078

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 238
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feaf9db22d0e560L    # 0.843

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 239
    goto/16 :goto_921

    .line 229
    :pswitch_12e
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 230
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 231
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 232
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 233
    goto/16 :goto_921

    .line 281
    .end local v14    # "rotationType":I
    :cond_13d
    const/4 v14, 0x0

    .line 282
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_a48

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    goto/16 :goto_921

    .line 326
    :pswitch_157
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 327
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 328
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 329
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 330
    goto/16 :goto_921

    .line 320
    :pswitch_165
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 321
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 322
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 323
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 324
    goto/16 :goto_921

    .line 314
    :pswitch_178
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 315
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 316
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 317
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 318
    goto/16 :goto_921

    .line 308
    :pswitch_19c
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x19

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 309
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 310
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fec000000000000L    # 0.875

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 311
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fef333333333333L    # 0.975

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 312
    goto/16 :goto_921

    .line 302
    :pswitch_1c8
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 303
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 304
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit16 v6, v6, 0xa3

    add-int/lit16 v6, v6, 0x8f

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 305
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 306
    goto/16 :goto_921

    .line 296
    :pswitch_1ef
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 297
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 298
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 299
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0xa3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 300
    goto/16 :goto_921

    .line 290
    :pswitch_212
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3f9999999999999aL    # 0.025

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 291
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 292
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 293
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb020c49ba5e35L    # 0.844

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 294
    goto/16 :goto_921

    .line 284
    :pswitch_245
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 285
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 286
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 287
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 288
    goto/16 :goto_921

    .line 336
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_254
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    const/16 v14, 0x20

    if-eqz v5, :cond_2bb

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v14

    if-ne v5, v14, :cond_2bb

    .line 338
    const/4 v5, 0x4

    .line 339
    .restart local v5    # "displayType":I
    const/4 v14, 0x0

    .line 340
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_a5c

    :pswitch_264
    goto :goto_2b9

    .line 348
    :pswitch_265
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v6, v6

    const v7, 0x3dd62b81

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 349
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 350
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v6, v6

    const v7, 0x3e4da3ac

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 351
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v7, v7

    const v8, 0x3f24b8a8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2b9

    .line 342
    :pswitch_28f
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v6, v6

    const v7, 0x3dd62b81

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 343
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 344
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v6, v6

    const v7, 0x3d38a7de

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 345
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v7, v7

    const v8, 0x3d864b8a

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 346
    nop

    .line 352
    :goto_2b9
    goto/16 :goto_921

    .line 354
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_2bb
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/16 v15, 0x10

    if-eqz v5, :cond_3d2

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_3d2

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v5, :cond_3d2

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-ne v5, v15, :cond_3d2

    .line 357
    const/4 v5, 0x3

    .line 358
    .restart local v5    # "displayType":I
    const/4 v14, 0x0

    .line 359
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_a66

    .line 397
    :pswitch_2d3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    goto/16 :goto_921

    .line 391
    :pswitch_2e9
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 392
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 393
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 394
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 395
    goto/16 :goto_921

    .line 385
    :pswitch_2f7
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fadb22d0e560419L    # 0.058

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 386
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fda7ef9db22d0e5L    # 0.414

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 387
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 388
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 389
    goto/16 :goto_921

    .line 379
    :pswitch_31c
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3feb126e978d4fdfL    # 0.846

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 380
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fee7ef9db22d0e5L    # 0.953

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 381
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe8d4fdf3b645a2L    # 0.776

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 382
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fec6a7ef9db22d1L    # 0.888

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 383
    goto/16 :goto_921

    .line 373
    :pswitch_34e
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fde04189374bc6aL    # 0.469

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 374
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fe10624dd2f1aa0L    # 0.532

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 375
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3f926e978d4fdf3bL    # 0.018

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 376
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fb4fdf3b645a1cbL    # 0.082

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 377
    goto/16 :goto_921

    .line 367
    :pswitch_380
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 368
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 369
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fcb4395810624ddL    # 0.213

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 370
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe5eb851eb851ecL    # 0.685

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 371
    goto/16 :goto_921

    .line 361
    :pswitch_3b2
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    const-wide v8, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 362
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 363
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 364
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 365
    goto/16 :goto_921

    .line 400
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_3d2
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v5, :cond_47f

    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v5, :cond_47f

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-ne v5, v15, :cond_47f

    .line 402
    const/4 v5, 0x3

    .line 403
    .restart local v5    # "displayType":I
    const/4 v14, 0x0

    .line 404
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_a7a

    .line 442
    :pswitch_3e4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    goto/16 :goto_921

    .line 430
    :pswitch_3fa
    const/16 v6, 0x112

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 431
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0xd5

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 432
    const/16 v6, 0x36

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 433
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0xa3

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 434
    goto/16 :goto_921

    .line 424
    :pswitch_410
    const/16 v6, 0x30

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 425
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x116

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 426
    const/16 v6, 0x21

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 427
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x9d

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 428
    goto/16 :goto_921

    .line 418
    :pswitch_426
    const/16 v6, 0x7e

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 419
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x104

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 420
    const/16 v6, 0x26

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 421
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v6, v6, 0x8b

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 422
    goto/16 :goto_921

    .line 436
    :pswitch_43c
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 437
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 438
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 439
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 440
    goto/16 :goto_921

    .line 412
    :pswitch_44a
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0x96

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 413
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x12c

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 414
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x2a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 415
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 416
    goto/16 :goto_921

    .line 406
    :pswitch_465
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    add-int/lit16 v6, v6, -0x1e7

    div-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 407
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 408
    const/4 v6, 0x7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 409
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x2a

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 410
    goto/16 :goto_921

    .line 445
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_47f
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const-wide v16, 0x3fa26e978d4fdf3bL    # 0.036

    const-wide v18, 0x3fc999999999999aL    # 0.2

    if-eqz v5, :cond_69e

    iget v5, v0, Landroid/app/SemWallpaperColorsArea;->mWhich:I

    and-int/2addr v5, v15

    if-nez v5, :cond_69e

    .line 446
    const/4 v5, 0x2

    .line 447
    .restart local v5    # "displayType":I
    iget v14, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v14, :cond_592

    .line 448
    const/4 v14, 0x3

    .line 449
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_a90

    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    goto/16 :goto_921

    .line 493
    :pswitch_4b1
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 494
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 495
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 496
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 497
    goto/16 :goto_921

    .line 487
    :pswitch_4bf
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 488
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 489
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 490
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 491
    goto/16 :goto_921

    .line 481
    :pswitch_4d2
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 482
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 483
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v6, v6, 0x16

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 484
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 485
    goto/16 :goto_921

    .line 475
    :pswitch_4f5
    const/16 v6, 0x40

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 476
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 477
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 478
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 479
    goto/16 :goto_921

    .line 469
    :pswitch_514
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 470
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 471
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 472
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 473
    goto/16 :goto_921

    .line 463
    :pswitch_536
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v9

    double-to-int v8, v12

    add-int/lit16 v8, v8, -0xa0

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 464
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v8, v8, 0x140

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 465
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v6, v8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 466
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 467
    goto/16 :goto_921

    .line 457
    :pswitch_554
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 458
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 459
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb26e978d4fdf3bL    # 0.072

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 460
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 461
    goto/16 :goto_921

    .line 451
    :pswitch_583
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 452
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 453
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 454
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 455
    goto/16 :goto_921

    .line 503
    .end local v14    # "rotationType":I
    :cond_592
    const/4 v14, 0x0

    .line 504
    .restart local v14    # "rotationType":I
    packed-switch v1, :pswitch_data_aa4

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    goto/16 :goto_921

    .line 551
    :pswitch_5ac
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 552
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 553
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 554
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 555
    goto/16 :goto_921

    .line 545
    :pswitch_5ba
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 546
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 547
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 548
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 549
    goto/16 :goto_921

    .line 539
    :pswitch_5cd
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 540
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 541
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 542
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 543
    goto/16 :goto_921

    .line 533
    :pswitch_5f1
    const/16 v6, 0x32

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 534
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 535
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 536
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 537
    goto/16 :goto_921

    .line 527
    :pswitch_610
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 528
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 529
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0x8a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 530
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 531
    goto/16 :goto_921

    .line 521
    :pswitch_633
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    add-int/lit16 v6, v6, -0xa0

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 522
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x140

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 523
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 524
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 525
    goto/16 :goto_921

    .line 515
    :pswitch_652
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 516
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 517
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 518
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb5c28f5c28f5cL    # 0.855

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 519
    goto/16 :goto_921

    .line 506
    :pswitch_681
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 507
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 508
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isWinner()Z

    move-result v6

    if-eqz v6, :cond_694

    .line 509
    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v6, -0x74

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 511
    :cond_694
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 512
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 513
    goto/16 :goto_921

    .line 562
    .end local v5    # "displayType":I
    .end local v14    # "rotationType":I
    :cond_69e
    const/4 v5, 0x0

    .line 563
    .restart local v5    # "displayType":I
    iget v9, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    if-eqz v9, :cond_836

    .line 564
    const/4 v10, 0x3

    .line 565
    .local v10, "rotationType":I
    packed-switch v1, :pswitch_data_ab8

    .line 646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    goto/16 :goto_833

    .line 640
    :pswitch_6bd
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 641
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 642
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 643
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 644
    goto/16 :goto_833

    .line 619
    :pswitch_6cb
    const/16 v6, 0x5a

    if-ne v9, v6, :cond_6e3

    .line 620
    const/4 v14, 0x1

    .line 621
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 622
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 623
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 624
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_921

    .line 625
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_6e3
    const/16 v6, 0x10e

    if-ne v9, v6, :cond_6f6

    .line 626
    const/4 v14, 0x2

    .line 627
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 628
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 629
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 630
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_921

    .line 632
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_6f6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid rotation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 634
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 635
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 636
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 638
    goto/16 :goto_833

    .line 613
    :pswitch_71c
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 614
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 615
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    mul-int/lit8 v6, v6, 0x16

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 616
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 617
    goto/16 :goto_833

    .line 607
    :pswitch_73f
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-int v8, v8

    add-int/lit8 v8, v8, 0x12

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 608
    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v12, v8

    mul-double/2addr v12, v6

    double-to-int v6, v12

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x12

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 609
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3feaa7ef9db22d0eL    # 0.833

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 610
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 611
    goto/16 :goto_833

    .line 601
    :pswitch_768
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 602
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 603
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x67

    add-int/lit8 v6, v6, 0x1a

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 604
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 605
    goto/16 :goto_833

    .line 595
    :pswitch_787
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, -0x8c

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 596
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit16 v6, v6, 0x118

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 597
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    add-int/2addr v6, v14

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 598
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 599
    goto/16 :goto_833

    .line 573
    :pswitch_7a2
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v14, v6

    const-wide v16, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v14, v14, v16

    double-to-int v6, v14

    .line 574
    .local v6, "margin":I
    const/16 v8, 0x5a

    if-ne v9, v8, :cond_7d9

    .line 575
    const/4 v14, 0x1

    .line 576
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 577
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 578
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 579
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_921

    .line 580
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_7d9
    const/16 v8, 0x10e

    if-ne v9, v8, :cond_800

    .line 581
    const/4 v14, 0x2

    .line 582
    .end local v10    # "rotationType":I
    .restart local v14    # "rotationType":I
    add-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 583
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 584
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fb604189374bc6aL    # 0.086

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 585
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v7, v7

    const-wide v9, 0x3fe93f7ced916873L    # 0.789

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_921

    .line 587
    .end local v14    # "rotationType":I
    .restart local v10    # "rotationType":I
    :cond_800
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid rotation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 589
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 590
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 591
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 593
    goto :goto_833

    .line 567
    .end local v6    # "margin":I
    :pswitch_825
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 568
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 569
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 570
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 571
    nop

    .line 707
    :goto_833
    move v14, v10

    goto/16 :goto_921

    .line 650
    .end local v10    # "rotationType":I
    :cond_836
    const/4 v14, 0x0

    .line 651
    .restart local v14    # "rotationType":I
    const/16 v6, 0x28

    packed-switch v1, :pswitch_data_acc

    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_921

    .line 695
    :pswitch_852
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 696
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 697
    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 698
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 699
    goto/16 :goto_921

    .line 689
    :pswitch_860
    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 690
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 691
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 692
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 693
    goto/16 :goto_921

    .line 683
    :pswitch_873
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    mul-int/lit8 v7, v6, 0x16

    div-int/lit8 v7, v7, 0x64

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 684
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 685
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0xb

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 686
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x16

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 687
    goto/16 :goto_921

    .line 677
    :pswitch_897
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 678
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 679
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    const-wide v8, 0x3fe92f1a9fbe76c9L    # 0.787

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 680
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    add-int/lit8 v6, v6, -0x13

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 681
    goto :goto_921

    .line 671
    :pswitch_8b3
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 672
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 673
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x67

    add-int/lit16 v6, v6, 0xb8

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 674
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x14

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 675
    goto :goto_921

    .line 665
    :pswitch_8cd
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 666
    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v7, v6

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 667
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-double v6, v6

    mul-double v6, v6, v18

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 668
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, 0x67

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 669
    goto :goto_921

    .line 659
    :pswitch_8e3
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-double v6, v6

    mul-double v6, v6, v16

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 660
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 661
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fb2f1a9fbe76c8bL    # 0.074

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 662
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDpNavigationBarHeight:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3feb53f7ced91687L    # 0.854

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 663
    goto :goto_921

    .line 653
    :pswitch_911
    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 654
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    sub-int/2addr v6, v12

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 655
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarTopMargin:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 656
    iget v6, v0, Landroid/app/SemWallpaperColorsArea;->mDpStatusBarHeight:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 657
    nop

    .line 707
    :goto_921
    iget-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    if-eqz v6, :cond_9c4

    .line 708
    iget-object v6, v0, Landroid/app/SemWallpaperColorsArea;->mKeyMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 709
    .local v6, "areaFlag":Ljava/lang/Long;
    if-nez v6, :cond_936

    const-wide/16 v7, 0x0

    goto :goto_93a

    :cond_936
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 710
    .local v7, "safeAreaFlag":J
    :goto_93a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get custom area. display type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rotation = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", area = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " areaFlag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v9, v0, Landroid/app/SemWallpaperColorsArea;->mWallpaperColorOverrideAreas:Landroid/app/WallpaperColorOverrideAreas;

    invoke-virtual {v9, v5, v14, v7, v8}, Landroid/app/WallpaperColorOverrideAreas;->get(IIJ)Landroid/graphics/RectF;

    move-result-object v9

    .line 712
    .local v9, "customRectF":Landroid/graphics/RectF;
    if-eqz v9, :cond_9c4

    .line 713
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->left:I

    .line 714
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpWidth:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 715
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->top:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->top:I

    .line 716
    iget v10, v0, Landroid/app/SemWallpaperColorsArea;->mDpHeight:I

    int-to-float v10, v10

    iget v12, v9, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .line 717
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Has custom area. Original : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", calculated = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .end local v6    # "areaFlag":Ljava/lang/Long;
    .end local v7    # "safeAreaFlag":J
    .end local v9    # "customRectF":Landroid/graphics/RectF;
    :cond_9c4
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 722
    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 723
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 724
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, v0, Landroid/app/SemWallpaperColorsArea;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 726
    if-eqz v2, :cond_a1c

    if-eqz v3, :cond_a1c

    .line 727
    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    int-to-float v7, v2

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 728
    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    int-to-float v7, v2

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 729
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 730
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, v0, Landroid/app/SemWallpaperColorsArea;->mHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 733
    :cond_a1c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Final area : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-object v4

    nop

    :pswitch_data_a34
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_fb
        :pswitch_dd
        :pswitch_bb
        :pswitch_8c
        :pswitch_68
        :pswitch_55
        :pswitch_47
    .end packed-switch

    :pswitch_data_a48
    .packed-switch 0x0
        :pswitch_245
        :pswitch_212
        :pswitch_1ef
        :pswitch_1c8
        :pswitch_19c
        :pswitch_178
        :pswitch_165
        :pswitch_157
    .end packed-switch

    :pswitch_data_a5c
    .packed-switch 0x0
        :pswitch_28f
        :pswitch_264
        :pswitch_265
    .end packed-switch

    :pswitch_data_a66
    .packed-switch 0x0
        :pswitch_3b2
        :pswitch_2d3
        :pswitch_380
        :pswitch_34e
        :pswitch_31c
        :pswitch_2f7
        :pswitch_2d3
        :pswitch_2e9
    .end packed-switch

    :pswitch_data_a7a
    .packed-switch 0x2
        :pswitch_465
        :pswitch_3e4
        :pswitch_44a
        :pswitch_3e4
        :pswitch_3e4
        :pswitch_43c
        :pswitch_426
        :pswitch_410
        :pswitch_3fa
    .end packed-switch

    :pswitch_data_a90
    .packed-switch 0x0
        :pswitch_583
        :pswitch_554
        :pswitch_536
        :pswitch_514
        :pswitch_4f5
        :pswitch_4d2
        :pswitch_4bf
        :pswitch_4b1
    .end packed-switch

    :pswitch_data_aa4
    .packed-switch 0x0
        :pswitch_681
        :pswitch_652
        :pswitch_633
        :pswitch_610
        :pswitch_5f1
        :pswitch_5cd
        :pswitch_5ba
        :pswitch_5ac
    .end packed-switch

    :pswitch_data_ab8
    .packed-switch 0x0
        :pswitch_825
        :pswitch_7a2
        :pswitch_787
        :pswitch_768
        :pswitch_73f
        :pswitch_71c
        :pswitch_6cb
        :pswitch_6bd
    .end packed-switch

    :pswitch_data_acc
    .packed-switch 0x0
        :pswitch_911
        :pswitch_8e3
        :pswitch_8cd
        :pswitch_8b3
        :pswitch_897
        :pswitch_873
        :pswitch_860
        :pswitch_852
    .end packed-switch
.end method
