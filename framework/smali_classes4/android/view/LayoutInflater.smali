.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Filter;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$BlinkLayout;
    }
.end annotation


# static fields
.field private static final ATTRS_THEME:[I

.field private static final ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field private static final BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final COMPILED_VIEW_DEX_FILE_NAME:Ljava/lang/String; = "/compiled_view.dex"

.field private static final DEBUG:Z = false

.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field private static final USE_PRECOMPILED_LAYOUT:Ljava/lang/String; = "view.precompiled_layout_enabled"

.field static final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrecompiledClassLoader:Ljava/lang/ClassLoader;

.field private mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

.field private mTempValue:Landroid/util/TypedValue;

.field private mUseCompiledView:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 88
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/LayoutInflater;->TAG:Ljava/lang/String;

    .line 98
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    sput-object v1, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 141
    const-class v1, Landroid/content/Context;

    const-class v2, Landroid/util/AttributeSet;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 161
    const/high16 v1, 0x1010000

    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    .line 761
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 266
    const-string v0, "LayoutInflater"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 268
    invoke-direct {p0}, Landroid/view/LayoutInflater;->initPrecompiledViews()V

    .line 269
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 4
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 280
    const-string v0, "LayoutInflater"

    invoke-static {p2, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 282
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 283
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 284
    iget-object v0, p1, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 285
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 286
    invoke-direct {p0}, Landroid/view/LayoutInflater;->initPrecompiledViews()V

    .line 287
    return-void
.end method

.method private advanceToRootNode(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/InflateException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 606
    nop

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    goto :goto_1

    .line 611
    :cond_d
    if-ne v1, v2, :cond_10

    .line 615
    return-void

    .line 612
    :cond_10
    new-instance v0, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": No start tag found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1325
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1326
    .local v0, "currentDepth":I
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    .line 1327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_16

    :cond_12
    const/4 v1, 0x1

    if-eq v2, v1, :cond_16

    goto :goto_4

    .line 1330
    :cond_16
    return-void
.end method

.method private createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 989
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 924
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 925
    if-eqz p2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_29
    move-object v2, p1

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 293
    nop

    .line 294
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 295
    .local v0, "LayoutInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_c

    .line 298
    return-object v0

    .line 296
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 752
    invoke-static {p1}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    .line 753
    .local v0, "sourceResId":I
    if-nez v0, :cond_b

    .line 754
    invoke-interface {p1}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 756
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    return-object v1
.end method

.method private idsUiUpdated()V
    .registers 3

    .line 747
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getIdsController()Landroid/app/IdsController;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/IdsController;->uiUpdated(I)V

    .line 748
    return-void
.end method

.method private initPrecompiledViews()V
    .registers 2

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "enabled":Z
    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;->initPrecompiledViews(Z)V

    .line 432
    return-void
.end method

.method private initPrecompiledViews(Z)V
    .registers 8
    .param p1, "enablePrecompiledViews"    # Z

    .line 435
    iput-boolean p1, p0, Landroid/view/LayoutInflater;->mUseCompiledView:Z

    .line 437
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 438
    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrecompiledClassLoader:Ljava/lang/ClassLoader;

    .line 439
    return-void

    .line 443
    :cond_8
    iget-object v1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 444
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5f

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_5f

    .line 451
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Landroid/view/LayoutInflater;->mPrecompiledClassLoader:Ljava/lang/ClassLoader;

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/compiled_view.dex"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "dexFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 454
    new-instance v4, Ldalvik/system/PathClassLoader;

    iget-object v5, p0, Landroid/view/LayoutInflater;->mPrecompiledClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v4, v2, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v4, p0, Landroid/view/LayoutInflater;->mPrecompiledClassLoader:Ljava/lang/ClassLoader;

    goto :goto_54

    .line 458
    :cond_52
    iput-boolean v3, p0, Landroid/view/LayoutInflater;->mUseCompiledView:Z
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_55

    .line 465
    .end local v2    # "dexFile":Ljava/lang/String;
    :goto_54
    goto :goto_58

    .line 460
    :catchall_55
    move-exception v2

    .line 464
    .local v2, "e":Ljava/lang/Throwable;
    iput-boolean v3, p0, Landroid/view/LayoutInflater;->mUseCompiledView:Z

    .line 466
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_58
    iget-boolean v2, p0, Landroid/view/LayoutInflater;->mUseCompiledView:Z

    if-nez v2, :cond_5e

    .line 467
    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrecompiledClassLoader:Ljava/lang/ClassLoader;

    .line 469
    :cond_5e
    return-void

    .line 445
    :cond_5f
    :goto_5f
    iput-boolean v3, p0, Landroid/view/LayoutInflater;->mUseCompiledView:Z

    .line 446
    return-void
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 27
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    instance-of v1, v8, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a3

    .line 1197
    sget-object v1, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1198
    .local v10, "ta":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 1199
    .local v12, "themeResId":I
    const/4 v13, 0x1

    if-eqz v12, :cond_1c

    move v1, v13

    goto :goto_1d

    :cond_1c
    move v1, v11

    :goto_1d
    move v14, v1

    .line 1200
    .local v14, "hasThemeOverride":Z
    if-eqz v14, :cond_28

    .line 1201
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    move-object v15, v0

    .end local p2    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    goto :goto_29

    .line 1200
    .end local v0    # "context":Landroid/content/Context;
    .restart local p2    # "context":Landroid/content/Context;
    :cond_28
    move-object v15, v0

    .line 1203
    .end local p2    # "context":Landroid/content/Context;
    .local v15, "context":Landroid/content/Context;
    :goto_29
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1207
    const/4 v0, 0x0

    const-string v1, "layout"

    invoke-interface {v9, v0, v1, v11}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1208
    .local v2, "layout":I
    if-nez v2, :cond_5c

    .line 1209
    invoke-interface {v9, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1210
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_54

    .line 1217
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1218
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1217
    const-string v0, "attr"

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_5c

    .line 1211
    :cond_54
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    .end local v3    # "value":Ljava/lang/String;
    :cond_5c
    :goto_5c
    iget-object v0, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    if-nez v0, :cond_67

    .line 1224
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    .line 1226
    :cond_67
    if-eqz v2, :cond_7b

    invoke-virtual {v15}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v3, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    invoke-virtual {v0, v2, v3, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1227
    iget-object v0, v7, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    move v6, v2

    goto :goto_7c

    .line 1230
    :cond_7b
    move v6, v2

    .end local v2    # "layout":I
    .local v6, "layout":I
    :goto_7c
    if-eqz v6, :cond_17f

    .line 1236
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v1, v8

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v7, v6, v0, v1, v13}, Landroid/view/LayoutInflater;->tryInflatePrecompiled(ILandroid/content/res/Resources;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1238
    .local v16, "precompiled":Landroid/view/View;
    if-nez v16, :cond_179

    .line 1239
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 1242
    .local v5, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_93
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v4, v0

    .line 1244
    .local v4, "childAttrs":Landroid/util/AttributeSet;
    :goto_98
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v0

    .local v3, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a3

    if-eq v3, v13, :cond_a3

    goto :goto_98

    .line 1249
    :cond_a3
    if-ne v3, v1, :cond_14c

    .line 1254
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1256
    .local v2, "childName":Ljava/lang/String;
    const-string/jumbo v0, "merge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b1
    .catchall {:try_start_93 .. :try_end_b1} :catchall_171

    if-eqz v0, :cond_ce

    .line 1259
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "childName":Ljava/lang/String;
    .local v17, "childName":Ljava/lang/String;
    move-object v2, v5

    move/from16 v18, v3

    .end local v3    # "type":I
    .local v18, "type":I
    move-object/from16 v3, p3

    move-object v11, v4

    .end local v4    # "childAttrs":Landroid/util/AttributeSet;
    .local v11, "childAttrs":Landroid/util/AttributeSet;
    move-object v4, v15

    move-object v13, v5

    .end local v5    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v13, "childParser":Landroid/content/res/XmlResourceParser;
    move-object v5, v11

    move/from16 v19, v6

    .end local v6    # "layout":I
    .local v19, "layout":I
    move v6, v0

    :try_start_c4
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_ca

    move-object v4, v13

    goto/16 :goto_144

    .line 1312
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .end local v17    # "childName":Ljava/lang/String;
    .end local v18    # "type":I
    :catchall_ca
    move-exception v0

    move-object v4, v13

    goto/16 :goto_175

    .line 1261
    .end local v13    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "layout":I
    .restart local v2    # "childName":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v4    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v5    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "layout":I
    :cond_ce
    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v6

    move-object v6, v5

    .end local v2    # "childName":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v5    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v6, "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "childName":Ljava/lang/String;
    .restart local v18    # "type":I
    .restart local v19    # "layout":I
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    move-object/from16 p2, v4

    .end local v4    # "childAttrs":Landroid/util/AttributeSet;
    .local p2, "childAttrs":Landroid/util/AttributeSet;
    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v20, v6

    .end local v6    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v20, "childParser":Landroid/content/res/XmlResourceParser;
    move v6, v14

    :try_start_e3
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 1263
    .local v1, "view":Landroid/view/View;
    move-object v0, v8

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1265
    .local v2, "group":Landroid/view/ViewGroup;
    sget-object v0, Lcom/android/internal/R$styleable;->Include:[I

    invoke-virtual {v15, v9, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v3, v0

    .line 1267
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v4, -0x1

    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move v5, v0

    .line 1268
    .local v5, "id":I
    invoke-virtual {v3, v13, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v6, v0

    .line 1269
    .local v6, "visibility":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_101
    .catchall {:try_start_e3 .. :try_end_101} :catchall_148

    .line 1279
    const/16 v21, 0x0

    .line 1281
    .local v21, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_103
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_107
    .catch Ljava/lang/RuntimeException; {:try_start_103 .. :try_end_107} :catch_10f
    .catchall {:try_start_103 .. :try_end_107} :catchall_10a

    move-object/from16 v21, v0

    .line 1284
    goto :goto_110

    .line 1312
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "id":I
    .end local v6    # "visibility":I
    .end local v17    # "childName":Ljava/lang/String;
    .end local v18    # "type":I
    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local p2    # "childAttrs":Landroid/util/AttributeSet;
    :catchall_10a
    move-exception v0

    move-object/from16 v4, v20

    goto/16 :goto_175

    .line 1282
    .restart local v1    # "view":Landroid/view/View;
    .restart local v2    # "group":Landroid/view/ViewGroup;
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    .restart local v5    # "id":I
    .restart local v6    # "visibility":I
    .restart local v17    # "childName":Ljava/lang/String;
    .restart local v18    # "type":I
    .restart local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "childAttrs":Landroid/util/AttributeSet;
    :catch_10f
    move-exception v0

    .line 1285
    :goto_110
    if-nez v21, :cond_11b

    .line 1286
    move-object/from16 v11, p2

    .end local p2    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v11    # "childAttrs":Landroid/util/AttributeSet;
    :try_start_114
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_118
    .catchall {:try_start_114 .. :try_end_118} :catchall_10a

    move-object/from16 v21, v0

    goto :goto_11f

    .line 1285
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .restart local p2    # "childAttrs":Landroid/util/AttributeSet;
    :cond_11b
    move-object/from16 v11, p2

    .end local p2    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v11    # "childAttrs":Landroid/util/AttributeSet;
    move-object/from16 v0, v21

    .line 1288
    .end local v21    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_11f
    :try_start_11f
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_148

    .line 1291
    move-object/from16 v4, v20

    .end local v20    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v4, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_124
    invoke-virtual {v7, v4, v1, v11, v13}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 1293
    const/4 v13, -0x1

    if-eq v5, v13, :cond_12d

    .line 1294
    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 1297
    :cond_12d
    packed-switch v6, :pswitch_data_1ac

    goto :goto_141

    .line 1305
    :pswitch_131
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_141

    .line 1302
    :pswitch_137
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    goto :goto_141

    .line 1299
    :pswitch_13c
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    nop

    .line 1309
    :goto_141
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_144
    .catchall {:try_start_124 .. :try_end_144} :catchall_16f

    .line 1312
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "id":I
    .end local v6    # "visibility":I
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .end local v17    # "childName":Ljava/lang/String;
    :goto_144
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1313
    goto :goto_17b

    .line 1312
    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v18    # "type":I
    .restart local v20    # "childParser":Landroid/content/res/XmlResourceParser;
    :catchall_148
    move-exception v0

    move-object/from16 v4, v20

    .end local v20    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    goto :goto_175

    .line 1250
    .end local v19    # "layout":I
    .local v3, "type":I
    .local v4, "childAttrs":Landroid/util/AttributeSet;
    .local v5, "childParser":Landroid/content/res/XmlResourceParser;
    .local v6, "layout":I
    :cond_14c
    move/from16 v18, v3

    move-object v11, v4

    move-object v4, v5

    move/from16 v19, v6

    .end local v3    # "type":I
    .end local v5    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "layout":I
    .local v4, "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v11    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v18    # "type":I
    .restart local v19    # "layout":I
    :try_start_152
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15, v11}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": No start tag found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .end local v12    # "themeResId":I
    .end local v14    # "hasThemeOverride":Z
    .end local v15    # "context":Landroid/content/Context;
    .end local v16    # "precompiled":Landroid/view/View;
    .end local v19    # "layout":I
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p3    # "parent":Landroid/view/View;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v0
    :try_end_16f
    .catchall {:try_start_152 .. :try_end_16f} :catchall_16f

    .line 1312
    .end local v11    # "childAttrs":Landroid/util/AttributeSet;
    .end local v18    # "type":I
    .restart local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "ta":Landroid/content/res/TypedArray;
    .restart local v12    # "themeResId":I
    .restart local v14    # "hasThemeOverride":Z
    .restart local v15    # "context":Landroid/content/Context;
    .restart local v16    # "precompiled":Landroid/view/View;
    .restart local v19    # "layout":I
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p3    # "parent":Landroid/view/View;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catchall_16f
    move-exception v0

    goto :goto_175

    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "layout":I
    .restart local v5    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "layout":I
    :catchall_171
    move-exception v0

    move-object v4, v5

    move/from16 v19, v6

    .end local v5    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "layout":I
    .restart local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "layout":I
    :goto_175
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1313
    throw v0

    .line 1238
    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v19    # "layout":I
    .restart local v6    # "layout":I
    :cond_179
    move/from16 v19, v6

    .line 1315
    .end local v6    # "layout":I
    .restart local v19    # "layout":I
    :goto_17b
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1316
    return-void

    .line 1231
    .end local v16    # "precompiled":Landroid/view/View;
    .end local v19    # "layout":I
    .restart local v6    # "layout":I
    :cond_17f
    const/4 v0, 0x0

    invoke-interface {v9, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You must specify a valid layout reference. The layout ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    .end local v0    # "value":Ljava/lang/String;
    .end local v6    # "layout":I
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .end local v12    # "themeResId":I
    .end local v14    # "hasThemeOverride":Z
    .end local v15    # "context":Landroid/content/Context;
    .local p2, "context":Landroid/content/Context;
    :cond_1a3
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<include /> can only be used inside of a ViewGroup"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_13c
        :pswitch_137
        :pswitch_131
    .end packed-switch
.end method

.method private parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1175
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/android/internal/R$styleable;->ViewTag:[I

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1176
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1177
    .local v2, "key":I
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1178
    .local v3, "value":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1179
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1181
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1182
    return-void
.end method

.method private tryInflatePrecompiled(ILandroid/content/res/Resources;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 16
    .param p1, "resource"    # I
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "attachToRoot"    # Z

    .line 553
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mUseCompiledView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 554
    return-object v1

    .line 557
    :cond_6
    const-string v0, "inflate (precompiled)"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 560
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "layout":Ljava/lang/String;
    :try_start_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".CompiledView"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/view/LayoutInflater;->mPrecompiledClassLoader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 565
    .local v5, "clazz":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v5, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 566
    .local v8, "inflater":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    aput-object v9, v6, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v8, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 568
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_7d

    if-eqz p3, :cond_7d

    .line 571
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7
    :try_end_5f
    .catchall {:try_start_15 .. :try_end_5f} :catchall_82

    .line 573
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5f
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 574
    .local v9, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v7}, Landroid/view/LayoutInflater;->advanceToRootNode(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 575
    invoke-virtual {p3, v9}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 577
    .local v10, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p4, :cond_70

    .line 578
    invoke-virtual {p3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_73

    .line 580
    :cond_70
    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_77

    .line 583
    .end local v9    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_73
    :try_start_73
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 584
    goto :goto_7d

    .line 583
    :catchall_77
    move-exception v9

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 584
    nop

    .end local v0    # "pkg":Ljava/lang/String;
    .end local v4    # "layout":Ljava/lang/String;
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "resource":I
    .end local p2    # "res":Landroid/content/res/Resources;
    .end local p3    # "root":Landroid/view/ViewGroup;
    .end local p4    # "attachToRoot":Z
    throw v9
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_82

    .line 587
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "pkg":Ljava/lang/String;
    .restart local v4    # "layout":Ljava/lang/String;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "resource":I
    .restart local p2    # "res":Landroid/content/res/Resources;
    .restart local p3    # "root":Landroid/view/ViewGroup;
    .restart local p4    # "attachToRoot":Z
    :cond_7d
    :goto_7d
    nop

    .line 593
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 587
    return-object v6

    .line 588
    .end local v5    # "clazz":Ljava/lang/Class;
    .end local v6    # "view":Landroid/view/View;
    .end local v8    # "inflater":Ljava/lang/reflect/Method;
    :catchall_82
    move-exception v5

    .line 593
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 594
    nop

    .line 595
    return-object v1
.end method

.method private final verifyClassLoader(Ljava/lang/reflect/Constructor;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 764
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 765
    .local v0, "constructorLoader":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    .line 767
    return v2

    .line 771
    :cond_e
    iget-object v1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 773
    .local v1, "cl":Ljava/lang/ClassLoader;
    :cond_14
    if-ne v0, v1, :cond_17

    .line 774
    return v2

    .line 776
    :cond_17
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 777
    if-nez v1, :cond_14

    .line 778
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16
    .param p1, "viewContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 829
    const-string v0, ": Error inflating class "

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v1, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 832
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-eqz v2, :cond_1c

    invoke-direct {p0, v2}, Landroid/view/LayoutInflater;->verifyClassLoader(Ljava/lang/reflect/Constructor;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 833
    const/4 v2, 0x0

    .line 834
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_1c
    const/4 v3, 0x0

    .line 839
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-wide/16 v4, 0x8

    :try_start_1f
    invoke-static {v4, v5, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 841
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_69

    .line 843
    if-eqz p3, :cond_3a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3b

    :cond_3a
    move-object v8, p2

    :goto_3b
    iget-object v9, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 844
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 843
    invoke-static {v8, v7, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-class v9, Landroid/view/View;

    .line 844
    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    move-object v3, v8

    .line 846
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v8, :cond_5b

    if-eqz v3, :cond_5b

    .line 847
    invoke-interface {v8, v3}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v8

    .line 848
    .local v8, "allowed":Z
    if-nez v8, :cond_5b

    .line 849
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 852
    .end local v8    # "allowed":Z
    :cond_5b
    sget-object v8, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    move-object v2, v8

    .line 853
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 854
    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    .line 857
    :cond_69
    iget-object v1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v1, :cond_c4

    .line 859
    iget-object v1, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 860
    .local v1, "allowedState":Ljava/lang/Boolean;
    if-nez v1, :cond_b9

    .line 862
    if-eqz p3, :cond_8b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8c

    :cond_8b
    move-object v8, p2

    :goto_8c
    iget-object v9, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 863
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 862
    invoke-static {v8, v7, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-class v9, Landroid/view/View;

    .line 863
    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    move-object v3, v8

    .line 865
    if-eqz v3, :cond_a9

    iget-object v8, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v8, v3}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a9

    move v8, v6

    goto :goto_aa

    :cond_a9
    move v8, v7

    .line 866
    .restart local v8    # "allowed":Z
    :goto_aa
    iget-object v9, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    if-nez v8, :cond_b8

    .line 868
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 870
    .end local v8    # "allowed":Z
    :cond_b8
    goto :goto_c4

    :cond_b9
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 871
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 876
    .end local v1    # "allowedState":Ljava/lang/Boolean;
    :cond_c4
    :goto_c4
    iget-object v1, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aget-object v8, v1, v7

    .line 877
    .local v8, "lastContext":Ljava/lang/Object;
    aput-object p1, v1, v7

    .line 878
    nop

    .line 879
    .local v1, "args":[Ljava/lang/Object;
    aput-object p4, v1, v6
    :try_end_cd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_cd} :catch_168
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_cd} :catch_12b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_cd} :catch_128
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_cd} :catch_f8
    .catchall {:try_start_1f .. :try_end_cd} :catchall_f5

    .line 882
    :try_start_cd
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 883
    .local v6, "view":Landroid/view/View;
    instance-of v9, v6, Landroid/view/ViewStub;

    if-eqz v9, :cond_e5

    .line 885
    move-object v9, v6

    check-cast v9, Landroid/view/ViewStub;

    .line 886
    .local v9, "viewStub":Landroid/view/ViewStub;
    aget-object v10, v1, v7

    check-cast v10, Landroid/content/Context;

    invoke-virtual {p0, v10}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V
    :try_end_e5
    .catchall {:try_start_cd .. :try_end_e5} :catchall_ee

    .line 888
    .end local v9    # "viewStub":Landroid/view/ViewStub;
    :cond_e5
    nop

    .line 890
    :try_start_e6
    iget-object v9, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v8, v9, v7
    :try_end_ea
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e6 .. :try_end_ea} :catch_168
    .catch Ljava/lang/ClassCastException; {:try_start_e6 .. :try_end_ea} :catch_12b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e6 .. :try_end_ea} :catch_128
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_ea} :catch_f8
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_f5

    .line 916
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 888
    return-object v6

    .line 890
    .end local v6    # "view":Landroid/view/View;
    :catchall_ee
    move-exception v6

    :try_start_ef
    iget-object v9, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v8, v9, v7

    .line 891
    nop

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v6
    :try_end_f5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ef .. :try_end_f5} :catch_168
    .catch Ljava/lang/ClassCastException; {:try_start_ef .. :try_end_f5} :catch_12b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ef .. :try_end_f5} :catch_128
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f5} :catch_f8
    .catchall {:try_start_ef .. :try_end_f5} :catchall_f5

    .line 916
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v8    # "lastContext":Ljava/lang/Object;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catchall_f5
    move-exception v0

    goto/16 :goto_1a4

    .line 909
    :catch_f8
    move-exception v1

    .line 910
    .local v1, "e":Ljava/lang/Exception;
    :try_start_f9
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    invoke-static {p1, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 912
    if-nez v3, :cond_111

    const-string v7, "<unknown>"

    goto :goto_115

    :cond_111
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_115
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 913
    .local v0, "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 914
    nop

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v0

    .line 906
    .end local v0    # "ie":Landroid/view/InflateException;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catch_128
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    nop

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v0

    .line 899
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catch_12b
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    invoke-static {p1, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Class is not a View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 903
    if-eqz p3, :cond_155

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_156

    :cond_155
    move-object v7, p2

    :goto_156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 904
    .local v1, "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 905
    nop

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v1

    .line 892
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "ie":Landroid/view/InflateException;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catch_168
    move-exception v1

    .line 893
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    invoke-static {p1, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 895
    if-eqz p3, :cond_190

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_191

    :cond_190
    move-object v7, p2

    :goto_191
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 896
    .local v0, "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 897
    nop

    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v0
    :try_end_1a4
    .catchall {:try_start_f9 .. :try_end_1a4} :catchall_f5

    .line 916
    .end local v0    # "ie":Landroid/view/InflateException;
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :goto_1a4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 917
    throw v0
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Context;

    .line 801
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_b

    .line 802
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 804
    :cond_b
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/view/LayoutInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .registers 13
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "ignoreThemeAttr"    # Z

    .line 1010
    const-string v0, ": Error inflating class "

    const-string/jumbo v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1011
    const-string v1, "class"

    invoke-interface {p4, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1015
    :cond_12
    const/4 v1, 0x0

    if-nez p5, :cond_2a

    .line 1016
    sget-object v3, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {p3, p4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1017
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1018
    .local v4, "themeResId":I
    if-eqz v4, :cond_27

    .line 1019
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {v5, p3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p3, v5

    .line 1021
    :cond_27
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1025
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    .end local v4    # "themeResId":I
    :cond_2a
    :try_start_2a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/LayoutInflater;->tryCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    .line 1027
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_56

    .line 1028
    iget-object v4, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aget-object v5, v4, v1

    .line 1029
    .local v5, "lastContext":Ljava/lang/Object;
    aput-object p3, v4, v1
    :try_end_36
    .catch Landroid/view/InflateException; {:try_start_2a .. :try_end_36} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_36} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_57

    .line 1031
    const/16 v4, 0x2e

    :try_start_38
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v6, v4, :cond_45

    .line 1032
    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/view/LayoutInflater;->onCreateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .end local v3    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    goto :goto_4a

    .line 1034
    .end local v2    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    :cond_45
    invoke-virtual {p0, p3, p2, v2, p4}, Landroid/view/LayoutInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_4f

    move-object v3, v2

    .line 1037
    :goto_4a
    :try_start_4a
    iget-object v2, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v2, v1

    .line 1038
    goto :goto_56

    .line 1037
    :catchall_4f
    move-exception v2

    iget-object v4, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 1038
    nop

    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parent":Landroid/view/View;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    .end local p5    # "ignoreThemeAttr":Z
    throw v2
    :try_end_56
    .catch Landroid/view/InflateException; {:try_start_4a .. :try_end_56} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4a .. :try_end_56} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_57

    .line 1041
    .end local v5    # "lastContext":Ljava/lang/Object;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parent":Landroid/view/View;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "context":Landroid/content/Context;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    .restart local p5    # "ignoreThemeAttr":Z
    :cond_56
    :goto_56
    return-object v3

    .line 1052
    .end local v3    # "view":Landroid/view/View;
    :catch_57
    move-exception v1

    .line 1053
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    invoke-static {p3, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 1056
    .local v0, "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1057
    throw v0

    .line 1045
    .end local v0    # "ie":Landroid/view/InflateException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7d
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    invoke-static {p3, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 1049
    .restart local v0    # "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1050
    throw v0

    .line 1042
    .end local v0    # "ie":Landroid/view/InflateException;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_a3
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/view/InflateException;
    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public final getFactory2()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .line 491
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 8
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .line 532
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 538
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/LayoutInflater;->tryInflatePrecompiled(ILandroid/content/res/Resources;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 539
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_f

    .line 540
    return-object v1

    .line 542
    :cond_f
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 544
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_13
    invoke-virtual {p0, v2, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 546
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 544
    return-object v3

    .line 546
    :catchall_1b
    move-exception v3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 547
    throw v3
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .line 511
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .line 640
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    iget-object v9, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v9

    .line 641
    :try_start_7
    const-string v0, "inflate"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 643
    iget-object v0, v7, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    move-object v12, v0

    .line 644
    .local v12, "inflaterContext":Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v13, v0

    .line 645
    .local v13, "attrs":Landroid/util/AttributeSet;
    iget-object v0, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v1, v0, v14

    check-cast v1, Landroid/content/Context;

    move-object v15, v1

    .line 646
    .local v15, "lastContext":Landroid/content/Context;
    aput-object v12, v0, v14

    .line 647
    move-object/from16 v16, p2

    .line 649
    .local v16, "result":Landroid/view/View;
    if-eqz v8, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyRendererOfExpensiveFrame()V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_110

    .line 654
    :cond_31
    const/16 v17, 0x0

    const/4 v6, 0x1

    :try_start_34
    invoke-direct/range {p0 .. p1}, Landroid/view/LayoutInflater;->advanceToRootNode(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 655
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "merge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_42} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_42} :catch_bf
    .catchall {:try_start_34 .. :try_end_42} :catchall_ba

    if-eqz v1, :cond_64

    .line 665
    if-eqz v8, :cond_5b

    if-eqz p3, :cond_5b

    .line 670
    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    move v10, v6

    move/from16 v6, v18

    :try_start_55
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    move-object/from16 v3, p1

    goto :goto_99

    .line 665
    :cond_5b
    move v10, v6

    .line 666
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .end local v12    # "inflaterContext":Landroid/content/Context;
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "lastContext":Landroid/content/Context;
    .end local v16    # "result":Landroid/view/View;
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v1

    .line 673
    .restart local v12    # "inflaterContext":Landroid/content/Context;
    .restart local v13    # "attrs":Landroid/util/AttributeSet;
    .restart local v15    # "lastContext":Landroid/content/Context;
    .restart local v16    # "result":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :cond_64
    move v10, v6

    invoke-direct {v7, v8, v0, v12, v13}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 675
    .local v1, "temp":Landroid/view/View;
    if-nez v8, :cond_7a

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_7a

    .line 676
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->notifyRendererOfExpensiveFrame()V

    .line 679
    :cond_7a
    const/4 v2, 0x0

    .line 681
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_87

    .line 687
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 688
    if-nez p3, :cond_87

    .line 691
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_87} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_87} :catch_b2
    .catchall {:try_start_55 .. :try_end_87} :catchall_ae

    .line 700
    :cond_87
    move-object/from16 v3, p1

    :try_start_89
    invoke-virtual {v7, v3, v1, v13, v10}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 708
    if-eqz v8, :cond_93

    if-eqz p3, :cond_93

    .line 709
    invoke-virtual {v8, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_93} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_93} :catch_aa
    .catchall {:try_start_89 .. :try_end_93} :catchall_102

    .line 714
    :cond_93
    if-eqz v8, :cond_97

    if-nez p3, :cond_99

    .line 715
    :cond_97
    move-object/from16 v16, v1

    .line 731
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "temp":Landroid/view/View;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_99
    :goto_99
    :try_start_99
    iget-object v0, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v15, v0, v14

    .line 732
    aput-object v17, v0, v10

    .line 734
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    nop

    .line 738
    invoke-direct/range {p0 .. p0}, Landroid/view/LayoutInflater;->idsUiUpdated()V

    .line 742
    monitor-exit v9
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_115

    return-object v16

    .line 723
    :catch_aa
    move-exception v0

    goto :goto_c3

    .line 719
    :catch_ac
    move-exception v0

    goto :goto_f2

    .line 731
    :catchall_ae
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_103

    .line 723
    :catch_b2
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_c3

    .line 719
    :catch_b6
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_f2

    .line 731
    :catchall_ba
    move-exception v0

    move-object/from16 v3, p1

    move v10, v6

    goto :goto_103

    .line 723
    :catch_bf
    move-exception v0

    move-object/from16 v3, p1

    move v10, v6

    .line 724
    .local v0, "e":Ljava/lang/Exception;
    :goto_c3
    :try_start_c3
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    invoke-static {v12, v13}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 726
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    .local v1, "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 728
    nop

    .end local v12    # "inflaterContext":Landroid/content/Context;
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "lastContext":Landroid/content/Context;
    .end local v16    # "result":Landroid/view/View;
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v1

    .line 719
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Landroid/view/InflateException;
    .restart local v12    # "inflaterContext":Landroid/content/Context;
    .restart local v13    # "attrs":Landroid/util/AttributeSet;
    .restart local v15    # "lastContext":Landroid/content/Context;
    .restart local v16    # "result":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :catch_ee
    move-exception v0

    move-object/from16 v3, p1

    move v10, v6

    .line 720
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_f2
    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    .restart local v1    # "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 722
    nop

    .end local v12    # "inflaterContext":Landroid/content/Context;
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "lastContext":Landroid/content/Context;
    .end local v16    # "result":Landroid/view/View;
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v1
    :try_end_102
    .catchall {:try_start_c3 .. :try_end_102} :catchall_102

    .line 731
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ie":Landroid/view/InflateException;
    .restart local v12    # "inflaterContext":Landroid/content/Context;
    .restart local v13    # "attrs":Landroid/util/AttributeSet;
    .restart local v15    # "lastContext":Landroid/content/Context;
    .restart local v16    # "result":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :catchall_102
    move-exception v0

    :goto_103
    :try_start_103
    iget-object v1, v7, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v15, v1, v14

    .line 732
    aput-object v17, v1, v10

    .line 734
    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 735
    nop

    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v0

    .line 743
    .end local v12    # "inflaterContext":Landroid/content/Context;
    .end local v13    # "attrs":Landroid/util/AttributeSet;
    .end local v15    # "lastContext":Landroid/content/Context;
    .end local v16    # "result":Landroid/view/View;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :catchall_110
    move-exception v0

    move-object/from16 v3, p1

    :goto_113
    monitor-exit v9
    :try_end_114
    .catchall {:try_start_103 .. :try_end_114} :catchall_115

    throw v0

    :catchall_115
    move-exception v0

    goto :goto_113
.end method

.method public onCreateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "viewContext"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 978
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 958
    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 941
    const-string v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1127
    .local v0, "depth":I
    const/4 v1, 0x0

    .line 1129
    .local v1, "pendingRequestFocus":Z
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    .line 1130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_76

    :cond_13
    const/4 v2, 0x1

    if-eq v3, v2, :cond_76

    .line 1132
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    .line 1133
    goto :goto_5

    .line 1136
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1138
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "requestFocus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1139
    const/4 v1, 0x1

    .line 1140
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6d

    .line 1141
    :cond_2c
    const-string/jumbo v5, "tag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1142
    invoke-direct {p0, p1, p2, p4}, Landroid/view/LayoutInflater;->parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_6d

    .line 1143
    :cond_39
    const-string v5, "include"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eqz v2, :cond_4b

    .line 1147
    invoke-direct {p0, p1, p3, p2, p4}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_6d

    .line 1145
    :cond_4b
    new-instance v2, Landroid/view/InflateException;

    const-string v5, "<include /> cannot be the root element"

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1148
    :cond_53
    const-string/jumbo v5, "merge"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 1151
    invoke-direct {p0, p2, v4, p3, p4}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 1152
    .local v5, "view":Landroid/view/View;
    move-object v6, p2

    check-cast v6, Landroid/view/ViewGroup;

    .line 1153
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6, p4}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1154
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1, v5, p4, v2}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 1155
    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_6d
    goto :goto_5

    .line 1149
    .restart local v4    # "name":Ljava/lang/String;
    :cond_6e
    new-instance v2, Landroid/view/InflateException;

    const-string v5, "<merge /> must be the root element"

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1159
    .end local v4    # "name":Ljava/lang/String;
    :cond_76
    if-eqz v1, :cond_7b

    .line 1160
    invoke-virtual {p2}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 1163
    :cond_7b
    if-eqz p5, :cond_80

    .line 1164
    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    .line 1166
    :cond_80
    return-void
.end method

.method final rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 1113
    return-void
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .registers 6
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .line 359
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-nez v0, :cond_23

    .line 362
    if-eqz p1, :cond_1b

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 366
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_10

    .line 367
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_1a

    .line 369
    :cond_10
    new-instance v1, Landroid/view/LayoutInflater$FactoryMerger;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v1, p1, v2, v0, v3}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 371
    :goto_1a
    return-void

    .line 363
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 378
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-nez v0, :cond_26

    .line 381
    if-eqz p1, :cond_1e

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 385
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_12

    .line 386
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_1d

    .line 388
    :cond_12
    new-instance v1, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v1, p1, p1, v0, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 390
    :goto_1d
    return-void

    .line 382
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .registers 3
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .line 422
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 423
    if-eqz p1, :cond_b

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 426
    :cond_b
    return-void
.end method

.method public setPrecompiledLayoutsEnabledForTesting(Z)V
    .registers 2
    .param p1, "enablePrecompiledLayouts"    # Z

    .line 476
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;->initPrecompiledViews(Z)V

    .line 477
    return-void
.end method

.method public setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .registers 4
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 397
    iget-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_7

    .line 398
    iput-object p1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    goto :goto_e

    .line 400
    :cond_7
    new-instance v1, Landroid/view/LayoutInflater$FactoryMerger;

    invoke-direct {v1, p1, p1, v0, v0}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 402
    :goto_e
    return-void
.end method

.method public final tryCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 1082
    const-string v0, "blink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1084
    new-instance v0, Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {v0, p3, p4}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 1088
    :cond_e
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_17

    .line 1089
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_21

    .line 1090
    .end local v0    # "view":Landroid/view/View;
    :cond_17
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_20

    .line 1091
    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_21

    .line 1093
    .end local v0    # "view":Landroid/view/View;
    :cond_20
    const/4 v0, 0x0

    .line 1096
    .restart local v0    # "view":Landroid/view/View;
    :goto_21
    if-nez v0, :cond_2b

    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_2b

    .line 1097
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1100
    :cond_2b
    return-object v0
.end method
