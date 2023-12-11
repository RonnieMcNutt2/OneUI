.class public Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
.super Ljava/lang/Object;
.source "CocktailProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COCKTAIL_AUTO_SCALE:Ljava/lang/String; = "autoScale"

.field private static final COCKTAIL_CATEGORY:Ljava/lang/String; = "category"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_EXPRESS_ME:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_CATEGORY_FEEDS:I = 0x100

.field public static final COCKTAIL_CATEGORY_HOME_SCREEN:I = 0x8

.field public static final COCKTAIL_CATEGORY_INVALID:I = -0x1

.field public static final COCKTAIL_CATEGORY_LOCK_SCREEN:I = 0x10

.field public static final COCKTAIL_CATEGORY_NIGHT_MODE:I = 0x80

.field public static final COCKTAIL_CATEGORY_NORMAL:I = 0x1

.field public static final COCKTAIL_CATEGORY_QUICK_TOOL:I = 0x4

.field public static final COCKTAIL_CATEGORY_TABLE_MODE:I = 0x20

.field public static final COCKTAIL_CATEGORY_WHISPER:I = 0x200

.field private static final COCKTAIL_COCKTAIL_WIDTH:Ljava/lang/String; = "cocktailWidth"

.field private static final COCKTAIL_CONFIGURE:Ljava/lang/String; = "configure"

.field private static final COCKTAIL_CSC_PREVIEW_IMAGE:Ljava/lang/String; = "cscPreviewImage"

.field private static final COCKTAIL_DATETIME_ENABLED:Ljava/lang/String; = "dateTimeEnabled"

.field private static final COCKTAIL_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final COCKTAIL_ICON:Ljava/lang/String; = "icon"

.field private static final COCKTAIL_LABEL:Ljava/lang/String; = "label"

.field private static final COCKTAIL_LABEL_HIDE:Ljava/lang/String; = "labelhide"

.field private static final COCKTAIL_LAND_LAYOUT:Ljava/lang/String; = "landlayout"

.field private static final COCKTAIL_LAUNCH_ON_CLICK:Ljava/lang/String; = "launchOnClick"

.field private static final COCKTAIL_LOGO_ID:Ljava/lang/String; = "logoResourceId"

.field private static final COCKTAIL_PERMIT_VISIBILITY_CHANGED:Ljava/lang/String; = "permitVisibilityChanged"

.field private static final COCKTAIL_PREVIEW_IMAGE:Ljava/lang/String; = "previewImage"

.field private static final COCKTAIL_PRIVATE_MODE:Ljava/lang/String; = "privateMode"

.field private static final COCKTAIL_PULL_TO_REFRESH:Ljava/lang/String; = "pullToRefresh"

.field private static final COCKTAIL_UPDATE_TIME:Ljava/lang/String; = "updatePeriodMillis"

.field private static final COCKTAIL_WHISPER:Ljava/lang/String; = "whisper"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cocktailbar/CocktailProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CocktailProviderInfo"

.field private static final VAL_DEFAULT_COCKTAIL_WIDTH:I = 0xa0

.field private static final XMLVAL_CONTEXTUAL:Ljava/lang/String; = "contextual"

.field private static final XMLVAL_FEEDS:Ljava/lang/String; = "feeds"

.field private static final XMLVAL_HOME_SCREEN:Ljava/lang/String; = "homescreen"

.field private static final XMLVAL_LOCK_SCREEN:Ljava/lang/String; = "lockscreen"

.field private static final XMLVAL_NIGHT_MODE:Ljava/lang/String; = "nightmode"

.field private static final XMLVAL_NORMAL:Ljava/lang/String; = "normal"

.field private static final XMLVAL_QUICK_TOOL:Ljava/lang/String; = "quicktool"

.field private static final XMLVAL_TABLE_MODE:Ljava/lang/String; = "tablemode"

.field private static final XMLVAL_WHISPER:Ljava/lang/String; = "whisper"


# instance fields
.field public autoScale:Z

.field public category:I

.field public cocktailWidth:I

.field public configure:Landroid/content/ComponentName;

.field public cscPreviewImage:Z

.field public description:I

.field public icon:I

.field public isDateTimeEnabled:Z

.field public label:I

.field public labelHide:Z

.field public landLayout:Z

.field public launchOnClick:Ljava/lang/String;

.field public logoResourceId:I

.field public permitVisibilityChanged:Z

.field public previewImage:I

.field public privateMode:Ljava/lang/String;

.field public provider:Landroid/content/ComponentName;

.field public pullToRefresh:Z

.field public updatePeriodMillis:I

.field public whisper:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 347
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 171
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;I)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "provider"    # Landroid/content/ComponentName;
    .param p5, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p6, "info"    # Landroid/content/pm/ResolveInfo;
    .param p7, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 207
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 208
    iput-object v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 209
    const-string/jumbo v5, "icon"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 210
    const-string/jumbo v5, "label"

    invoke-interface {v3, v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 211
    const-string v5, "description"

    invoke-interface {v3, v6, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 212
    const-string v5, "category"

    const-string/jumbo v7, "normal"

    invoke-direct {p0, v3, v1, v5, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "category":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3d

    .line 214
    iput v8, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_94

    .line 216
    :cond_3d
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x7c

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 217
    .local v7, "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v7, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 218
    :goto_47
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    .line 219
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "c":Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v10

    .line 221
    .local v10, "categoryId":I
    const/4 v11, 0x0

    .line 222
    .local v11, "isBreak":Z
    sparse-switch v10, :sswitch_data_132

    .line 239
    iget v12, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    or-int/2addr v12, v10

    iput v12, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    goto :goto_90

    .line 226
    :sswitch_63
    iput v10, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 227
    goto :goto_90

    .line 231
    :sswitch_66
    iput v10, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 232
    const/4 v11, 0x1

    .line 233
    goto :goto_90

    .line 235
    :sswitch_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " specified an invalid catetory of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CocktailProviderInfo"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v4, -0x1

    iput v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 237
    return-void

    .line 242
    :goto_90
    if-eqz v11, :cond_93

    .line 243
    goto :goto_94

    .line 245
    .end local v9    # "c":Ljava/lang/String;
    .end local v10    # "categoryId":I
    .end local v11    # "isBreak":Z
    :cond_93
    goto :goto_47

    .line 247
    .end local v7    # "categorySplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_94
    :goto_94
    const/16 v7, 0xa0

    move/from16 v9, p7

    if-le v9, v8, :cond_d7

    .line 248
    const-string v10, "cocktailWidth"

    invoke-direct {p0, v3, v1, v10, v7}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    .line 249
    const-string/jumbo v7, "launchOnClick"

    invoke-direct {p0, v3, v1, v7, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    .line 250
    const-string v7, "autoScale"

    invoke-direct {p0, v3, v1, v7, v8}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    .line 251
    const-string/jumbo v7, "logoResourceId"

    invoke-interface {v3, v6, v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    .line 252
    const-string v7, "dateTimeEnabled"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    .line 253
    const-string/jumbo v7, "labelhide"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    .line 254
    const-string/jumbo v7, "landlayout"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    goto :goto_d9

    .line 256
    :cond_d7
    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    .line 258
    :goto_d9
    const-string/jumbo v7, "privateMode"

    invoke-direct {p0, v3, v1, v7, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 259
    const-string/jumbo v7, "previewImage"

    invoke-interface {v3, v6, v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 260
    const-string/jumbo v7, "updatePeriodMillis"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 261
    const-string/jumbo v7, "permitVisibilityChanged"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 262
    const-string/jumbo v7, "pullToRefresh"

    invoke-direct {p0, v3, v1, v7, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    .line 263
    const-string v7, "configure"

    invoke-direct {p0, v3, v1, v7, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "configureClassName":Ljava/lang/String;
    if-eqz v7, :cond_119

    .line 265
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 267
    :cond_119
    const-string v8, "cscPreviewImage"

    invoke-direct {p0, v3, v1, v8, v4}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 268
    iget v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v8, 0x200

    if-ne v4, v8, :cond_130

    .line 269
    const-string/jumbo v4, "whisper"

    invoke-direct {p0, v3, v1, v4, v6}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    .line 271
    :cond_130
    return-void

    nop

    :sswitch_data_132
    .sparse-switch
        -0x1 -> :sswitch_6a
        0x4 -> :sswitch_66
        0x8 -> :sswitch_63
        0x10 -> :sswitch_63
        0x20 -> :sswitch_66
        0x80 -> :sswitch_66
        0x100 -> :sswitch_63
    .end sparse-switch
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    goto :goto_14

    :cond_13
    move-object v1, v2

    :goto_14
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    :cond_4b
    move-object v1, v2

    :goto_4c
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_57

    move v1, v3

    goto :goto_58

    :cond_57
    move v1, v0

    :goto_58
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_62

    move v1, v3

    goto :goto_63

    :cond_62
    move v1, v0

    :goto_63
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    goto :goto_72

    :cond_71
    move-object v1, v2

    :goto_72
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :cond_7e
    iput-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_88

    move v1, v3

    goto :goto_89

    :cond_88
    move v1, v0

    :goto_89
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_93

    move v1, v3

    goto :goto_94

    :cond_93
    move v1, v0

    :goto_94
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_a4

    move v1, v3

    goto :goto_a5

    :cond_a4
    move v1, v0

    :goto_a5
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_af

    move v1, v3

    goto :goto_b0

    :cond_af
    move v1, v0

    :goto_b0
    iput-boolean v1, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_b9

    move v0, v3

    :cond_b9
    iput-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    .line 342
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/cocktailbar/CocktailProviderInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;II)Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p4, "configuredCategoryFilter"    # I
    .param p5, "version"    # I

    .line 178
    const-string v1, "CocktailProviderInfo"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 180
    .local v10, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 182
    .local v11, "identity":J
    const/4 v13, 0x0

    :try_start_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_64
    .catchall {:try_start_b .. :try_end_f} :catchall_5e

    move-object/from16 v14, p1

    :try_start_11
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 183
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 182
    invoke-virtual {v10, v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_1f} :catch_5c
    .catchall {:try_start_11 .. :try_end_1f} :catchall_5a

    .line 188
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 191
    :try_start_23
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-object v2, v0

    move-object v3, p0

    move-object v4, v10

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/content/res/XmlResourceParser;Landroid/content/pm/ResolveInfo;I)V
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_33} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_33} :catch_47

    .line 192
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    move/from16 v2, p4

    :try_start_35
    invoke-static {v2, v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->enforceValidCategory(ILcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_3d} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3d} :catch_43

    const/4 v3, -0x1

    if-ne v1, v3, :cond_41

    goto :goto_42

    .line 195
    :cond_41
    return-object v0

    .line 193
    :cond_42
    :goto_42
    return-object v13

    .line 199
    .end local v0    # "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    :catch_43
    move-exception v0

    goto :goto_4a

    .line 197
    :catch_45
    move-exception v0

    goto :goto_53

    .line 199
    :catch_47
    move-exception v0

    move/from16 v2, p4

    .line 200
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_4a
    const-string v3, "IllegalArgumentException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_50
    move-exception v0

    move/from16 v2, p4

    .line 198
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_53
    const-string v3, "XML resources failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    nop

    .line 202
    :goto_59
    return-object v13

    .line 188
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catchall_5a
    move-exception v0

    goto :goto_61

    .line 184
    :catch_5c
    move-exception v0

    goto :goto_67

    .line 188
    :catchall_5e
    move-exception v0

    move-object/from16 v14, p1

    :goto_61
    move/from16 v2, p4

    goto :goto_74

    .line 184
    :catch_64
    move-exception v0

    move-object/from16 v14, p1

    :goto_67
    move/from16 v2, p4

    .line 185
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_69
    const-string v3, "failed to load find package"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_73

    .line 186
    nop

    .line 188
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    return-object v13

    .line 188
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_73
    move-exception v0

    :goto_74
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v0
.end method

.method private static enforceValidCategory(ILcom/samsung/android/cocktailbar/CocktailProviderInfo;)Z
    .registers 5
    .param p0, "configuredCategoryFilter"    # I
    .param p1, "pInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    .line 274
    const/4 v0, 0x1

    if-nez p0, :cond_b

    .line 275
    const-string v1, "CocktailProviderInfo"

    const-string v2, "enforceValidCategory: there is no category filters"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v0

    .line 278
    :cond_b
    iget-object v1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 279
    return v2

    .line 281
    :cond_11
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_17

    .line 282
    return v0

    .line 284
    :cond_17
    return v2
.end method

.method private static getCategoryId(Ljava/lang/String;)I
    .registers 2
    .param p0, "category"    # Ljava/lang/String;

    .line 299
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 300
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_b
    const-string v0, "contextual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 302
    const/high16 v0, 0x10000

    return v0

    .line 303
    :cond_16
    const-string/jumbo v0, "homescreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 304
    const/16 v0, 0x8

    return v0

    .line 305
    :cond_22
    const-string v0, "feeds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 306
    const/16 v0, 0x100

    return v0

    .line 307
    :cond_2d
    const-string/jumbo v0, "whisper"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 308
    const/16 v0, 0x200

    return v0

    .line 309
    :cond_39
    const-string/jumbo v0, "quicktool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 310
    const/4 v0, 0x4

    return v0

    .line 311
    :cond_44
    const-string/jumbo v0, "tablemode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 312
    const/16 v0, 0x20

    return v0

    .line 313
    :cond_50
    const-string/jumbo v0, "nightmode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 314
    const/16 v0, 0x80

    return v0

    .line 315
    :cond_5c
    const-string/jumbo v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 316
    const/16 v0, 0x10

    return v0

    .line 318
    :cond_68
    const/4 v0, -0x1

    return v0
.end method

.method public static getCategoryIds(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 288
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 289
    .local v0, "ids":I
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 292
    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "category":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryId(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    .line 294
    .end local v2    # "category":Ljava/lang/String;
    goto :goto_e

    .line 295
    :cond_20
    return v0

    .line 290
    :cond_21
    :goto_21
    return v0
.end method

.method private loadXmlBoolean(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .line 471
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 472
    .local v0, "refId":I
    if-eqz v0, :cond_10

    .line 474
    :try_start_8
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    .line 477
    .local v1, "value":Z
    :goto_c
    goto :goto_14

    .line 475
    .end local v1    # "value":Z
    :catch_d
    move-exception v1

    .line 476
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    move v1, p4

    .local v1, "value":Z
    goto :goto_c

    .line 479
    .end local v1    # "value":Z
    :cond_10
    invoke-interface {p1, v1, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 481
    .restart local v1    # "value":Z
    :goto_14
    return v1
.end method

.method private loadXmlDimension(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 486
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 487
    .local v0, "refId":I
    if-eqz v0, :cond_10

    .line 489
    :try_start_8
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    .line 492
    .local v1, "value":I
    :goto_c
    goto :goto_14

    .line 490
    .end local v1    # "value":I
    :catch_d
    move-exception v1

    .line 491
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    move v1, p4

    .local v1, "value":I
    goto :goto_c

    .line 494
    .end local v1    # "value":I
    :cond_10
    invoke-interface {p1, v1, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 496
    .restart local v1    # "value":I
    :goto_14
    return v1
.end method

.method private loadXmlInt(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 436
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 437
    .local v0, "refId":I
    if-eqz v0, :cond_10

    .line 439
    :try_start_8
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    .line 442
    .local v1, "value":I
    :goto_c
    goto :goto_14

    .line 440
    .end local v1    # "value":I
    :catch_d
    move-exception v1

    .line 441
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    move v1, p4

    .local v1, "value":I
    goto :goto_c

    .line 444
    .end local v1    # "value":I
    :cond_10
    invoke-interface {p1, v1, p3, p4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 446
    .restart local v1    # "value":I
    :goto_14
    return v1
.end method

.method private loadXmlString(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pkgRes"    # Landroid/content/res/Resources;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 453
    .local v0, "refId":I
    if-eqz v0, :cond_10

    .line 455
    :try_start_8
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    .line 458
    .local v1, "value":Ljava/lang/String;
    :goto_c
    goto :goto_17

    .line 456
    .end local v1    # "value":Ljava/lang/String;
    :catch_d
    move-exception v1

    .line 457
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v1, p4

    .local v1, "value":Ljava/lang/String;
    goto :goto_c

    .line 460
    .end local v1    # "value":Ljava/lang/String;
    :cond_10
    invoke-interface {p1, v1, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .restart local v1    # "value":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 462
    move-object v1, p4

    .line 465
    :cond_17
    :goto_17
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 364
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 365
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 368
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    :goto_12
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->description:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->previewImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cocktailWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 378
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_45

    .line 381
    :cond_42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    :goto_45
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->permitVisibilityChanged:Z

    if-eqz v0, :cond_4d

    .line 384
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_50

    .line 386
    :cond_4d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 388
    :goto_50
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->pullToRefresh:Z

    if-eqz v0, :cond_58

    .line 389
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_5b

    .line 391
    :cond_58
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 393
    :goto_5b
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_68

    .line 394
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6b

    .line 397
    :cond_68
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    :goto_6b
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->launchOnClick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_7b

    .line 403
    :cond_78
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    :goto_7b
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->cscPreviewImage:Z

    if-eqz v0, :cond_83

    .line 406
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_86

    .line 408
    :cond_83
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 410
    :goto_86
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->autoScale:Z

    if-eqz v0, :cond_8e

    .line 411
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_91

    .line 413
    :cond_8e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 415
    :goto_91
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->logoResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->isDateTimeEnabled:Z

    if-eqz v0, :cond_9e

    .line 417
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_a1

    .line 419
    :cond_9e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 421
    :goto_a1
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->labelHide:Z

    if-eqz v0, :cond_a9

    .line 422
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_ac

    .line 424
    :cond_a9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 426
    :goto_ac
    iget-boolean v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->landLayout:Z

    if-eqz v0, :cond_b4

    .line 427
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_b7

    .line 429
    :cond_b4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 431
    :goto_b7
    return-void
.end method
