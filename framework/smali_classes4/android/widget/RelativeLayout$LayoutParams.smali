.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;
    }
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mNeedsLayoutResolution:Z

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRules(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1391
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1392
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1296
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1298
    sget-object v2, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1301
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1302
    .local v3, "targetSdkVersion":I
    const/4 v4, 0x1

    const/16 v5, 0x11

    if-lt v3, v5, :cond_30

    .line 1303
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_30

    :cond_2e
    move v6, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v6, v4

    :goto_31
    iput-boolean v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1305
    iget-object v6, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1307
    .local v6, "rules":[I
    iget-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1309
    .local v7, "initialRules":[I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    .line 1310
    .local v8, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3c
    if-ge v9, v8, :cond_13d

    .line 1311
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1312
    .local v10, "attr":I
    const/4 v11, -0x1

    packed-switch v10, :pswitch_data_146

    goto/16 :goto_139

    .line 1380
    :pswitch_48
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_4f

    goto :goto_50

    :cond_4f
    move v11, v1

    :goto_50
    const/16 v12, 0x15

    aput v11, v6, v12

    goto/16 :goto_139

    .line 1377
    :pswitch_56
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_5d

    goto :goto_5e

    :cond_5d
    move v11, v1

    :goto_5e
    const/16 v12, 0x14

    aput v11, v6, v12

    .line 1378
    goto/16 :goto_139

    .line 1374
    :pswitch_64
    const/16 v11, 0x13

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1375
    goto/16 :goto_139

    .line 1371
    :pswitch_6e
    const/16 v11, 0x12

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1372
    goto/16 :goto_139

    .line 1368
    :pswitch_78
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v6, v5

    .line 1369
    goto/16 :goto_139

    .line 1365
    :pswitch_80
    const/16 v11, 0x10

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1366
    goto/16 :goto_139

    .line 1314
    :pswitch_8a
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1315
    goto/16 :goto_139

    .line 1362
    :pswitch_92
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_99

    goto :goto_9a

    :cond_99
    move v11, v1

    :goto_9a
    const/16 v12, 0xf

    aput v11, v6, v12

    .line 1363
    goto/16 :goto_139

    .line 1359
    :pswitch_a0
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_a7

    goto :goto_a8

    :cond_a7
    move v11, v1

    :goto_a8
    const/16 v12, 0xe

    aput v11, v6, v12

    .line 1360
    goto/16 :goto_139

    .line 1356
    :pswitch_ae
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_b5

    goto :goto_b6

    :cond_b5
    move v11, v1

    :goto_b6
    const/16 v12, 0xd

    aput v11, v6, v12

    .line 1357
    goto/16 :goto_139

    .line 1353
    :pswitch_bc
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_c3

    goto :goto_c4

    :cond_c3
    move v11, v1

    :goto_c4
    const/16 v12, 0xc

    aput v11, v6, v12

    .line 1354
    goto/16 :goto_139

    .line 1350
    :pswitch_ca
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_d1

    goto :goto_d2

    :cond_d1
    move v11, v1

    :goto_d2
    const/16 v12, 0xb

    aput v11, v6, v12

    .line 1351
    goto/16 :goto_139

    .line 1347
    :pswitch_d8
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_df

    goto :goto_e0

    :cond_df
    move v11, v1

    :goto_e0
    const/16 v12, 0xa

    aput v11, v6, v12

    .line 1348
    goto :goto_139

    .line 1344
    :pswitch_e5
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-eqz v12, :cond_ec

    goto :goto_ed

    :cond_ec
    move v11, v1

    :goto_ed
    const/16 v12, 0x9

    aput v11, v6, v12

    .line 1345
    goto :goto_139

    .line 1341
    :pswitch_f2
    const/16 v11, 0x8

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1342
    goto :goto_139

    .line 1338
    :pswitch_fb
    const/4 v11, 0x7

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1339
    goto :goto_139

    .line 1335
    :pswitch_103
    const/4 v11, 0x6

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1336
    goto :goto_139

    .line 1332
    :pswitch_10b
    const/4 v11, 0x5

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1333
    goto :goto_139

    .line 1329
    :pswitch_113
    const/4 v11, 0x4

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1330
    goto :goto_139

    .line 1326
    :pswitch_11b
    const/4 v11, 0x3

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1327
    goto :goto_139

    .line 1323
    :pswitch_123
    const/4 v11, 0x2

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    aput v12, v6, v11

    .line 1324
    goto :goto_139

    .line 1320
    :pswitch_12b
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v6, v4

    .line 1321
    goto :goto_139

    .line 1317
    :pswitch_132
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    aput v11, v6, v1

    .line 1318
    nop

    .line 1310
    .end local v10    # "attr":I
    :goto_139
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3c

    .line 1384
    .end local v9    # "i":I
    :cond_13d
    iput-boolean v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1385
    invoke-static {v6, v1, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1387
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1388
    return-void

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_132
        :pswitch_12b
        :pswitch_123
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_f2
        :pswitch_e5
        :pswitch_d8
        :pswitch_ca
        :pswitch_bc
        :pswitch_ae
        :pswitch_a0
        :pswitch_92
        :pswitch_8a
        :pswitch_80
        :pswitch_78
        :pswitch_6e
        :pswitch_64
        :pswitch_56
        :pswitch_48
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1398
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1399
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1405
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1406
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1415
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1417
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1418
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1419
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1421
    iget-object v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1422
    iget-object v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    return-void
.end method

.method private hasRelativeRules()Z
    .registers 3

    .line 1525
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x11

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x12

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x13

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x14

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method

.method private isRelativeRule(I)Z
    .registers 3
    .param p1, "rule"    # I

    .line 1531
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x15

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private resolveRules(I)V
    .registers 20
    .param p1, "layoutDirection"    # I

    .line 1550
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    if-ne v3, v2, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    .line 1553
    .local v4, "isLayoutRtl":Z
    :goto_b
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x16

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1556
    iget-boolean v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v6, 0x14

    const/16 v7, 0x10

    const/16 v8, 0x12

    const/16 v9, 0x15

    const/16 v10, 0x11

    const/16 v11, 0x13

    const/16 v12, 0xb

    const/16 v13, 0x9

    const/4 v14, 0x7

    const/4 v15, 0x5

    if-eqz v5, :cond_76

    .line 1557
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v16, v5, v8

    if-eqz v16, :cond_38

    .line 1558
    aget v17, v5, v15

    if-nez v17, :cond_36

    .line 1561
    aput v16, v5, v15

    .line 1563
    :cond_36
    aput v1, v5, v8

    .line 1566
    :cond_38
    aget v8, v5, v11

    if-eqz v8, :cond_44

    .line 1567
    aget v15, v5, v14

    if-nez v15, :cond_42

    .line 1570
    aput v8, v5, v14

    .line 1572
    :cond_42
    aput v1, v5, v11

    .line 1575
    :cond_44
    aget v8, v5, v7

    if-eqz v8, :cond_50

    .line 1576
    aget v11, v5, v1

    if-nez v11, :cond_4e

    .line 1579
    aput v8, v5, v1

    .line 1581
    :cond_4e
    aput v1, v5, v7

    .line 1584
    :cond_50
    aget v7, v5, v10

    if-eqz v7, :cond_5c

    .line 1585
    aget v8, v5, v2

    if-nez v8, :cond_5a

    .line 1588
    aput v7, v5, v2

    .line 1590
    :cond_5a
    aput v1, v5, v10

    .line 1593
    :cond_5c
    aget v2, v5, v6

    if-eqz v2, :cond_68

    .line 1594
    aget v7, v5, v13

    if-nez v7, :cond_66

    .line 1597
    aput v2, v5, v13

    .line 1599
    :cond_66
    aput v1, v5, v6

    .line 1602
    :cond_68
    aget v2, v5, v9

    if-eqz v2, :cond_f8

    .line 1603
    aget v6, v5, v12

    if-nez v6, :cond_72

    .line 1606
    aput v2, v5, v12

    .line 1608
    :cond_72
    aput v1, v5, v9

    goto/16 :goto_f8

    .line 1612
    :cond_76
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v16, v5, v8

    if-nez v16, :cond_80

    aget v17, v5, v11

    if-eqz v17, :cond_8c

    :cond_80
    aget v17, v5, v15

    if-nez v17, :cond_88

    aget v17, v5, v14

    if-eqz v17, :cond_8c

    .line 1615
    :cond_88
    aput v1, v5, v15

    .line 1616
    aput v1, v5, v14

    .line 1618
    :cond_8c
    if-eqz v16, :cond_99

    .line 1620
    if-eqz v4, :cond_93

    move/from16 v17, v14

    goto :goto_95

    :cond_93
    move/from16 v17, v15

    :goto_95
    aput v16, v5, v17

    .line 1621
    aput v1, v5, v8

    .line 1623
    :cond_99
    aget v8, v5, v11

    if-eqz v8, :cond_a4

    .line 1625
    if-eqz v4, :cond_a0

    move v14, v15

    :cond_a0
    aput v8, v5, v14

    .line 1626
    aput v1, v5, v11

    .line 1629
    :cond_a4
    aget v8, v5, v7

    if-nez v8, :cond_ac

    aget v11, v5, v10

    if-eqz v11, :cond_b8

    :cond_ac
    aget v11, v5, v1

    if-nez v11, :cond_b4

    aget v11, v5, v2

    if-eqz v11, :cond_b8

    .line 1632
    :cond_b4
    aput v1, v5, v1

    .line 1633
    aput v1, v5, v2

    .line 1635
    :cond_b8
    if-eqz v8, :cond_c3

    .line 1637
    if-eqz v4, :cond_be

    move v11, v2

    goto :goto_bf

    :cond_be
    move v11, v1

    :goto_bf
    aput v8, v5, v11

    .line 1638
    aput v1, v5, v7

    .line 1640
    :cond_c3
    aget v7, v5, v10

    if-eqz v7, :cond_ce

    .line 1642
    if-eqz v4, :cond_ca

    move v2, v1

    :cond_ca
    aput v7, v5, v2

    .line 1643
    aput v1, v5, v10

    .line 1646
    :cond_ce
    aget v2, v5, v6

    if-nez v2, :cond_d6

    aget v7, v5, v9

    if-eqz v7, :cond_e2

    :cond_d6
    aget v7, v5, v13

    if-nez v7, :cond_de

    aget v7, v5, v12

    if-eqz v7, :cond_e2

    .line 1649
    :cond_de
    aput v1, v5, v13

    .line 1650
    aput v1, v5, v12

    .line 1652
    :cond_e2
    if-eqz v2, :cond_ed

    .line 1654
    if-eqz v4, :cond_e8

    move v7, v12

    goto :goto_e9

    :cond_e8
    move v7, v13

    :goto_e9
    aput v2, v5, v7

    .line 1655
    aput v1, v5, v6

    .line 1657
    :cond_ed
    aget v2, v5, v9

    if-eqz v2, :cond_f8

    .line 1659
    if-eqz v4, :cond_f4

    move v12, v13

    :cond_f4
    aput v2, v5, v12

    .line 1660
    aput v1, v5, v9

    .line 1664
    :cond_f8
    :goto_f8
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1665
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1666
    return-void
.end method

.method private shouldResolveLayoutDirection(I)Z
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1719
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_a
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_17

    .line 1720
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1719
    :goto_18
    return v0
.end method


# virtual methods
.method public addRule(I)V
    .registers 3
    .param p1, "verb"    # I

    .line 1452
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1453
    return-void
.end method

.method public addRule(II)V
    .registers 5
    .param p1, "verb"    # I
    .param p2, "subject"    # I

    .line 1478
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    .line 1480
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1483
    :cond_15
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1484
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1485
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1486
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "output"    # Ljava/lang/String;

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1429
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1726
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1727
    const-string v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1728
    return-void
.end method

.method public getRule(I)I
    .registers 3
    .param p1, "verb"    # I

    .line 1521
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRules()[I
    .registers 2

    .line 1696
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1683
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 1684
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .registers 3
    .param p1, "verb"    # I

    .line 1505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1506
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1710
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1711
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1715
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1716
    return-void
.end method
