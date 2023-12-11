.class public Landroid/content/res/ResourcesImpl$ThemeImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeImpl"
.end annotation


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field private final mKey:Landroid/content/res/Resources$ThemeKey;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method constructor <init>(Landroid/content/res/ResourcesImpl;)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/res/ResourcesImpl;

    .line 1499
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 1497
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1500
    iget-object v0, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1501
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1502
    invoke-static {}, Landroid/content/res/ResourcesImpl;->-$$Nest$sfgetsThemeRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1503
    return-void
.end method


# virtual methods
.method applyStyle(IZ)V
    .registers 6
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 1532
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/content/res/AssetManager;->applyStyleToTheme(JIZ)V

    .line 1533
    iput p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1534
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V

    .line 1535
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1597
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    .line 1598
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1507
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1508
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 1509
    return-void
.end method

.method getAllAttributes()[I
    .registers 3

    .line 1587
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method getAppliedStyleResId()I
    .registers 2

    .line 1520
    iget v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    return v0
.end method

.method public getAttributeResolutionStack(III)[I
    .registers 10
    .param p1, "defStyleAttr"    # I
    .param p2, "defStyleRes"    # I
    .param p3, "explicitStyleRes"    # I

    .line 1657
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->getAttributeResolutionStack(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method getChangingConfigurations()I
    .registers 3

    .line 1591
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1592
    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeGetChangingConfigurations(J)I

    move-result v0

    .line 1593
    .local v0, "nativeChangingConfig":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    return v1
.end method

.method getKey()Landroid/content/res/Resources$ThemeKey;
    .registers 2

    .line 1512
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method getNativeTheme()J
    .registers 3

    .line 1516
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    return-wide v0
.end method

.method getParentThemeIdentifier(I)I
    .registers 3
    .param p1, "resId"    # I

    .line 1525
    if-lez p1, :cond_9

    .line 1526
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->getParentThemeIdentifier(I)I

    move-result v0

    return v0

    .line 1528
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method getTheme()[Ljava/lang/String;
    .registers 9

    .line 1601
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v0, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1602
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1603
    .local v1, "themes":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "j":I
    :goto_b
    array-length v4, v1

    if-ge v2, v4, :cond_3b

    .line 1604
    iget-object v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v4, v4, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v4, v4, v3

    .line 1605
    .local v4, "resId":I
    iget-object v5, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v5, v5, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v5, v5, v3

    .line 1607
    .local v5, "forced":Z
    :try_start_1a
    iget-object v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v6, v4}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_22} :catch_23

    .line 1610
    goto :goto_2a

    .line 1608
    :catch_23
    move-exception v6

    .line 1609
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 1611
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2a
    add-int/lit8 v6, v2, 0x1

    if-eqz v5, :cond_31

    const-string v7, "forced"

    goto :goto_34

    :cond_31
    const-string/jumbo v7, "not forced"

    :goto_34
    aput-object v7, v1, v6

    .line 1603
    .end local v4    # "resId":I
    .end local v5    # "forced":Z
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    .line 1613
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3b
    return-object v1
.end method

.method obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .registers 22
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 1550
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    array-length v13, v12

    .line 1551
    .local v13, "len":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v13}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1557
    .local v14, "array":Landroid/content/res/TypedArray;
    move-object/from16 v15, p2

    check-cast v15, Landroid/content/res/XmlBlock$Parser;

    .line 1558
    .local v15, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, v0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, v0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-wide v8, v14, Landroid/content/res/TypedArray;->mDataAddress:J

    iget-wide v10, v14, Landroid/content/res/TypedArray;->mIndicesAddress:J

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v15

    move-object/from16 v7, p3

    invoke-virtual/range {v1 .. v11}, Landroid/content/res/AssetManager;->applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V

    .line 1560
    move-object/from16 v1, p1

    iput-object v1, v14, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1561
    iput-object v15, v14, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1562
    return-object v14
.end method

.method rebase()V
    .registers 2

    .line 1622
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase(Landroid/content/res/AssetManager;)V

    .line 1623
    return-void
.end method

.method rebase(Landroid/content/res/AssetManager;)V
    .registers 9
    .param p1, "newAssets"    # Landroid/content/res/AssetManager;

    .line 1633
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v4, v3, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v5, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v6, v3, Landroid/content/res/Resources$ThemeKey;->mCount:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/res/AssetManager;->rebaseTheme(JLandroid/content/res/AssetManager;[I[ZI)Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1634
    return-void
.end method

.method resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .registers 10
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 1583
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    move-result v0

    return v0
.end method

.method resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;
    .registers 15
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "values"    # [I
    .param p3, "attrs"    # [I

    .line 1569
    array-length v0, p3

    .line 1570
    .local v0, "len":I
    if-eqz p2, :cond_23

    array-length v1, p2

    if-ne v0, v1, :cond_23

    .line 1575
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1576
    .local v1, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v9, v1, Landroid/content/res/TypedArray;->mData:[I

    iget-object v10, v1, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v10}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 1577
    iput-object p1, v1, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1578
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1579
    return-object v1

    .line 1571
    .end local v1    # "array":Landroid/content/res/TypedArray;
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Base attribute values must the same length as attrs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .registers 8
    .param p1, "other"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1538
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v3, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v4, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/AssetManager;->setThemeTo(JLandroid/content/res/AssetManager;J)V

    .line 1540
    iget v0, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1541
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 1542
    return-void
.end method
