.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsCaptionMenuButton:Z

.field private final mIsDeviceDefault:Z

.field private mIsDexMode:Z

.field private mIsDexStandAlone:Z

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 62
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 63
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    .line 78
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 81
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 82
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200d7

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v5, v1

    :goto_39
    iput-boolean v5, p0, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    .line 85
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 86
    if-eqz v5, :cond_56

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 88
    iget v1, v2, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_56

    .line 89
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 94
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_56
    const/4 v1, 0x0

    if-eqz v5, :cond_67

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109017b

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_74

    .line 95
    :cond_67
    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10901a8

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_74
    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 97
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 101
    const v2, 0x1040e2e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 103
    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 104
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 106
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 107
    const v1, 0x103030e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 108
    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 110
    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .registers 25
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "outParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 163
    move-object/from16 v7, p0

    move-object/from16 v8, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 165
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105053c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 170
    .local v9, "tooltipPreciseAnchorThreshold":I
    iget-boolean v0, v7, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_23

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    move v10, v0

    .local v0, "offsetX":I
    goto :goto_33

    .line 173
    .end local v0    # "offsetX":I
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lt v0, v9, :cond_2d

    .line 175
    move/from16 v0, p2

    move v10, v0

    .restart local v0    # "offsetX":I
    goto :goto_33

    .line 178
    .end local v0    # "offsetX":I
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    move v10, v0

    .line 184
    .local v10, "offsetX":I
    :goto_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v9, :cond_4d

    .line 186
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x105053b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 188
    .local v0, "offsetExtra":I
    add-int v2, p3, v0

    .line 189
    .local v2, "offsetBelow":I
    sub-int v0, p3, v0

    .line 190
    .local v0, "offsetAbove":I
    move v11, v0

    move v12, v2

    goto :goto_54

    .line 192
    .end local v0    # "offsetAbove":I
    .end local v2    # "offsetBelow":I
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 193
    .restart local v2    # "offsetBelow":I
    const/4 v0, 0x0

    move v11, v0

    move v12, v2

    .line 196
    .end local v2    # "offsetBelow":I
    .local v11, "offsetAbove":I
    .local v12, "offsetBelow":I
    :goto_54
    const/16 v0, 0x31

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 198
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    if-eqz p4, :cond_64

    const v2, 0x105053f

    goto :goto_67

    .line 200
    :cond_64
    const v2, 0x105053e

    .line 198
    :goto_67
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 203
    .local v13, "tooltipOffset":I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v2}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "appView":Landroid/view/View;
    const-string v2, "TooltipPopup"

    if-nez v0, :cond_8d

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 208
    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v3, :cond_87

    .line 209
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    goto :goto_8e

    .line 212
    :cond_87
    const-string v1, "Cannot find app view"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 205
    .end local v3    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_8d
    move-object v14, v0

    .line 216
    .end local v0    # "appView":Landroid/view/View;
    .local v14, "appView":Landroid/view/View;
    :goto_8e
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "leftInset":I
    invoke-virtual {v14}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v15

    .line 221
    .local v15, "insets":Landroid/view/WindowInsets;
    if-eqz v15, :cond_b8

    .line 222
    invoke-virtual {v15}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "left inset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v0

    goto :goto_ba

    .line 221
    :cond_b8
    move/from16 v16, v0

    .line 226
    .end local v0    # "leftInset":I
    .local v16, "leftInset":I
    :goto_ba
    new-array v6, v1, [I

    .line 227
    .local v6, "appViewScreenPos":[I
    invoke-virtual {v14, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v6, v3

    const/4 v5, 0x1

    aget v1, v6, v5

    aget v17, v6, v3

    .line 229
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v3, v17, v18

    aget v17, v6, v5

    .line 230
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v5, v17, v18

    invoke-direct {v0, v4, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    .line 231
    .local v5, "displayFrame":Landroid/graphics/Rect;
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v1, v16

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 232
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 236
    iget-boolean v0, v7, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-eqz v0, :cond_fc

    .line 237
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    iget v1, v5, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 238
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aput v1, v0, v3

    goto :goto_101

    .line 241
    :cond_fc
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v14, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 244
    :goto_101
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 246
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_1e0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame left : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame right : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame top : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - displayFrame bottom : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - anchorView locationOnScreen x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - anchorView locationOnScreen y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - appView locationOnScreen x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computePosition - appView locationOnScreen y : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1e0
    iget-object v0, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v17, v3, v1

    sub-int v2, v2, v17

    aput v2, v0, v1

    .line 259
    const/4 v1, 0x1

    aget v17, v0, v1

    aget v3, v3, v1

    sub-int v17, v17, v3

    aput v17, v0, v1

    .line 262
    iget-boolean v0, v7, Lcom/android/internal/view/TooltipPopup;->mIsDeviceDefault:Z

    if-eqz v0, :cond_211

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->semUpdateMaxWidth()V

    .line 264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move/from16 v3, p4

    move v4, v10

    move-object/from16 v17, v5

    .end local v5    # "displayFrame":Landroid/graphics/Rect;
    .local v17, "displayFrame":Landroid/graphics/Rect;
    move/from16 v5, v16

    move-object/from16 v18, v6

    .end local v6    # "appViewScreenPos":[I
    .local v18, "appViewScreenPos":[I
    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/TooltipPopup;->semComputePositionForMultiWindow(Landroid/view/View;Landroid/graphics/Rect;ZIILandroid/view/WindowManager$LayoutParams;)V

    goto :goto_253

    .line 268
    .end local v17    # "displayFrame":Landroid/graphics/Rect;
    .end local v18    # "appViewScreenPos":[I
    .restart local v5    # "displayFrame":Landroid/graphics/Rect;
    .restart local v6    # "appViewScreenPos":[I
    :cond_211
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "displayFrame":Landroid/graphics/Rect;
    .end local v6    # "appViewScreenPos":[I
    .restart local v17    # "displayFrame":Landroid/graphics/Rect;
    .restart local v18    # "appViewScreenPos":[I
    add-int/2addr v2, v10

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    sub-int/2addr v2, v0

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 271
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 272
    .local v0, "spec":I
    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 273
    iget-object v1, v7, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 275
    .local v1, "tooltipHeight":I
    iget-object v2, v7, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int v3, v2, v11

    sub-int/2addr v3, v13

    sub-int/2addr v3, v1

    .line 276
    .local v3, "yAbove":I
    add-int/2addr v2, v12

    add-int/2addr v2, v13

    .line 277
    .local v2, "yBelow":I
    if-eqz p4, :cond_244

    .line 278
    if-ltz v3, :cond_241

    .line 279
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_253

    .line 281
    :cond_241
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_253

    .line 287
    :cond_244
    add-int v4, v2, v1

    iget-object v5, v7, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v4, v5, :cond_251

    .line 288
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_253

    .line 290
    :cond_251
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 294
    .end local v0    # "spec":I
    .end local v1    # "tooltipHeight":I
    .end local v2    # "yBelow":I
    .end local v3    # "yAbove":I
    :goto_253
    return-void
.end method

.method private isFreeForm()Z
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 528
    .local v0, "windowMode":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private isSplitWindow()Z
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 533
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 532
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    return v0
.end method

.method private semComputePositionForMultiWindow(Landroid/view/View;Landroid/graphics/Rect;ZIILandroid/view/WindowManager$LayoutParams;)V
    .registers 35
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "fromTouch"    # Z
    .param p4, "offsetX"    # I
    .param p5, "leftInset"    # I
    .param p6, "outParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    const/4 v3, 0x0

    .line 321
    .local v3, "isMenuButtonInSplitWindow":Z
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 322
    .local v5, "spec":I
    iget-object v6, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    .line 323
    iget-object v6, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 325
    .local v6, "tooltipHeight":I
    const/4 v7, 0x2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 326
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 327
    .local v8, "tooltipWidth":I
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050406

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 330
    .local v9, "tooltipHorizontalPadding":I
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 331
    .local v10, "applicationContext":Landroid/content/Context;
    if-nez v10, :cond_37

    .line 332
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 335
    :cond_37
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 336
    .local v11, "realMetrics":Landroid/util/DisplayMetrics;
    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 337
    .local v12, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 340
    const/4 v14, 0x0

    .line 341
    .local v14, "screenWidth":I
    const/4 v15, 0x0

    .line 342
    .local v15, "screenHeight":I
    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 344
    .local v7, "wm":Landroid/view/WindowManager;
    iget-boolean v13, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v13, :cond_cd

    .line 345
    const-class v13, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v10, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 347
    .local v13, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    const-string v4, "display"

    invoke-virtual {v10, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 350
    .local v4, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v13, :cond_c6

    if-eqz v4, :cond_c6

    .line 351
    invoke-virtual {v13}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v19

    .line 352
    .local v19, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    const/16 v20, 0x0

    .line 354
    .local v20, "displays":[Landroid/view/Display;
    if-eqz v19, :cond_89

    move/from16 v21, v3

    .end local v3    # "isMenuButtonInSplitWindow":Z
    .local v21, "isMenuButtonInSplitWindow":Z
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    move/from16 v22, v5

    .end local v5    # "spec":I
    .local v22, "spec":I
    const/16 v5, 0x65

    if-ne v3, v5, :cond_8d

    .line 355
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .end local v20    # "displays":[Landroid/view/Display;
    .local v3, "displays":[Landroid/view/Display;
    goto :goto_93

    .line 354
    .end local v21    # "isMenuButtonInSplitWindow":Z
    .end local v22    # "spec":I
    .local v3, "isMenuButtonInSplitWindow":Z
    .restart local v5    # "spec":I
    .restart local v20    # "displays":[Landroid/view/Display;
    :cond_89
    move/from16 v21, v3

    move/from16 v22, v5

    .line 357
    .end local v3    # "isMenuButtonInSplitWindow":Z
    .end local v5    # "spec":I
    .restart local v21    # "isMenuButtonInSplitWindow":Z
    .restart local v22    # "spec":I
    :cond_8d
    const-string v3, "com.samsung.android.hardware.display.category.DESKTOP"

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    .line 360
    .end local v20    # "displays":[Landroid/view/Display;
    .local v3, "displays":[Landroid/view/Display;
    :goto_93
    if-eqz v3, :cond_c1

    array-length v5, v3

    if-lez v5, :cond_c1

    const/4 v5, 0x0

    aget-object v20, v3, v5

    if-eqz v20, :cond_c1

    .line 361
    invoke-interface {v7}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 362
    .local v5, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 363
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v20

    move-object/from16 v23, v3

    .end local v3    # "displays":[Landroid/view/Display;
    .local v23, "displays":[Landroid/view/Display;
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v24, v4

    const v4, 0x1050503

    .end local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    .local v24, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int v15, v20, v3

    goto :goto_cc

    .line 360
    .end local v5    # "maxBounds":Landroid/graphics/Rect;
    .end local v23    # "displays":[Landroid/view/Display;
    .end local v24    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "displays":[Landroid/view/Display;
    .restart local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_c1
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .end local v3    # "displays":[Landroid/view/Display;
    .end local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v23    # "displays":[Landroid/view/Display;
    .restart local v24    # "displayManager":Landroid/hardware/display/DisplayManager;
    goto :goto_cc

    .line 350
    .end local v19    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .end local v21    # "isMenuButtonInSplitWindow":Z
    .end local v22    # "spec":I
    .end local v23    # "displays":[Landroid/view/Display;
    .end local v24    # "displayManager":Landroid/hardware/display/DisplayManager;
    .local v3, "isMenuButtonInSplitWindow":Z
    .restart local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    .local v5, "spec":I
    :cond_c6
    move/from16 v21, v3

    move-object/from16 v24, v4

    move/from16 v22, v5

    .line 368
    .end local v3    # "isMenuButtonInSplitWindow":Z
    .end local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v5    # "spec":I
    .end local v13    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .restart local v21    # "isMenuButtonInSplitWindow":Z
    .restart local v22    # "spec":I
    :goto_cc
    goto :goto_d5

    .line 370
    .end local v21    # "isMenuButtonInSplitWindow":Z
    .end local v22    # "spec":I
    .restart local v3    # "isMenuButtonInSplitWindow":Z
    .restart local v5    # "spec":I
    :cond_cd
    move/from16 v21, v3

    move/from16 v22, v5

    .end local v3    # "isMenuButtonInSplitWindow":Z
    .end local v5    # "spec":I
    .restart local v21    # "isMenuButtonInSplitWindow":Z
    .restart local v22    # "spec":I
    iget v14, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 371
    iget v15, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 375
    :goto_d5
    sub-int v3, v14, v9

    if-le v8, v3, :cond_db

    .line 376
    sub-int v8, v14, v9

    .line 380
    :cond_db
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v9

    .line 381
    .local v3, "appWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isSplitWindow()Z

    move-result v4

    if-eqz v4, :cond_fa

    if-le v8, v3, :cond_fa

    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 383
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105013c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    if-lt v3, v4, :cond_fa

    .line 385
    move v8, v3

    .line 390
    :cond_fa
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/TooltipPopup;->isFreeForm()Z

    move-result v4

    const-string v5, "TooltipPopup"

    if-nez v4, :cond_10e

    iget-boolean v4, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-eqz v4, :cond_107

    goto :goto_10e

    .line 394
    :cond_107
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x201

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_119

    .line 391
    :cond_10e
    :goto_10e
    const-string v4, "Add Flag FLAG_LAYOUT_NO_LIMITS for free form mode"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 398
    :goto_119
    const/4 v4, 0x0

    .line 399
    .local v4, "popupLeftPosX":I
    const/4 v13, 0x0

    .line 400
    .local v13, "popupRightPosX":I
    move/from16 v19, v3

    .end local v3    # "appWidth":I
    .local v19, "appWidth":I
    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v20, 0x1

    aget v3, v3, v20

    move/from16 v23, v4

    .end local v4    # "popupLeftPosX":I
    .local v23, "popupLeftPosX":I
    sub-int v4, v3, v6

    .line 401
    .local v4, "yAbove":I
    sget-boolean v24, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v24, :cond_133

    move-object/from16 v24, v10

    .end local v10    # "applicationContext":Landroid/content/Context;
    .local v24, "applicationContext":Landroid/content/Context;
    iget-boolean v10, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-eqz v10, :cond_135

    const/4 v10, 0x0

    goto :goto_139

    .end local v24    # "applicationContext":Landroid/content/Context;
    .restart local v10    # "applicationContext":Landroid/content/Context;
    :cond_133
    move-object/from16 v24, v10

    .line 402
    .end local v10    # "applicationContext":Landroid/content/Context;
    .restart local v24    # "applicationContext":Landroid/content/Context;
    :cond_135
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    :goto_139
    add-int/2addr v3, v10

    .line 404
    .local v3, "yBelow":I
    if-eqz p3, :cond_19b

    iget-boolean v10, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v10, :cond_19b

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v10

    if-nez v10, :cond_166

    .line 407
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v17, 0x0

    aget v10, v10, v17

    add-int v17, v10, p4

    sub-int v17, v17, v8

    add-int v17, v17, v9

    .line 408
    .end local v23    # "popupLeftPosX":I
    .local v17, "popupLeftPosX":I
    add-int v13, v17, v8

    .line 409
    add-int v10, v10, p4

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v23

    add-int v23, v23, v8

    const/16 v16, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v10, v10, v23

    add-int/2addr v10, v9

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_183

    .line 412
    .end local v17    # "popupLeftPosX":I
    .restart local v23    # "popupLeftPosX":I
    :cond_166
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/16 v17, 0x0

    aget v10, v10, v17

    add-int v17, v10, p4

    sub-int v17, v17, v9

    .line 413
    .end local v23    # "popupLeftPosX":I
    .restart local v17    # "popupLeftPosX":I
    add-int v13, v17, v8

    .line 414
    add-int v10, v10, p4

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v23, v23, v8

    const/16 v16, 0x2

    div-int/lit8 v23, v23, 0x2

    sub-int v10, v10, v23

    sub-int/2addr v10, v9

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 418
    :goto_183
    iget-boolean v10, v0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    if-nez v10, :cond_196

    add-int v10, v3, v6

    move/from16 v25, v9

    .end local v9    # "tooltipHorizontalPadding":I
    .local v25, "tooltipHorizontalPadding":I
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v10, v9, :cond_198

    .line 419
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1e0

    .line 418
    .end local v25    # "tooltipHorizontalPadding":I
    .restart local v9    # "tooltipHorizontalPadding":I
    :cond_196
    move/from16 v25, v9

    .line 421
    .end local v9    # "tooltipHorizontalPadding":I
    .restart local v25    # "tooltipHorizontalPadding":I
    :cond_198
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1e0

    .line 404
    .end local v17    # "popupLeftPosX":I
    .end local v25    # "tooltipHorizontalPadding":I
    .restart local v9    # "tooltipHorizontalPadding":I
    .restart local v23    # "popupLeftPosX":I
    :cond_19b
    move/from16 v25, v9

    .line 424
    .end local v9    # "tooltipHorizontalPadding":I
    .restart local v25    # "tooltipHorizontalPadding":I
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int v9, v9, p4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v17

    const/16 v16, 0x2

    div-int/lit8 v17, v17, 0x2

    sub-int v9, v9, v17

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 425
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v9, v9, v10

    add-int v9, v9, p4

    div-int/lit8 v10, v8, 0x2

    sub-int v17, v9, v10

    .line 426
    .end local v23    # "popupLeftPosX":I
    .restart local v17    # "popupLeftPosX":I
    add-int v13, v17, v8

    .line 428
    if-ltz v4, :cond_1c1

    .line 430
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1e0

    .line 431
    :cond_1c1
    add-int v9, v3, v6

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-gt v9, v10, :cond_1ce

    .line 433
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1e0

    .line 436
    :cond_1ce
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x200

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 437
    iget-object v9, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v4

    if-ltz v9, :cond_1de

    .line 440
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1e0

    .line 443
    :cond_1de
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 448
    :goto_1e0
    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int v9, v17, v9

    .line 449
    .local v9, "tooltipLeftOutArea":I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v13

    sub-int/2addr v10, v14

    .line 450
    .local v10, "tooltipRightOutArea":I
    move/from16 v16, v3

    .end local v3    # "yBelow":I
    .local v16, "yBelow":I
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v23, v11

    .end local v11    # "realMetrics":Landroid/util/DisplayMetrics;
    .local v23, "realMetrics":Landroid/util/DisplayMetrics;
    iget v11, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v11

    sub-int/2addr v3, v15

    .line 451
    .local v3, "tooltipBottomOutArea":I
    const/4 v11, 0x0

    .line 453
    .local v11, "navigationBarHeight":I
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 454
    .local v1, "rotation":I
    move-object/from16 v26, v7

    .end local v7    # "wm":Landroid/view/WindowManager;
    .local v26, "wm":Landroid/view/WindowManager;
    const/4 v7, 0x3

    move/from16 v27, v11

    .end local v11    # "navigationBarHeight":I
    .local v27, "navigationBarHeight":I
    if-ne v1, v7, :cond_214

    .line 456
    if-eqz p5, :cond_22a

    .line 457
    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x1050255

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 459
    .end local v27    # "navigationBarHeight":I
    .restart local v11    # "navigationBarHeight":I
    sub-int/2addr v9, v11

    .line 460
    sub-int/2addr v10, v11

    goto :goto_22c

    .line 462
    .end local v11    # "navigationBarHeight":I
    .restart local v27    # "navigationBarHeight":I
    :cond_214
    if-nez v1, :cond_22a

    iget-boolean v7, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-nez v7, :cond_22a

    .line 463
    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x1050253

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 465
    .end local v27    # "navigationBarHeight":I
    .local v7, "navigationBarHeight":I
    add-int/2addr v3, v7

    move v11, v7

    goto :goto_22c

    .line 469
    .end local v7    # "navigationBarHeight":I
    .restart local v27    # "navigationBarHeight":I
    :cond_22a
    move/from16 v11, v27

    .end local v27    # "navigationBarHeight":I
    .restart local v11    # "navigationBarHeight":I
    :goto_22c
    iget-boolean v7, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    if-eqz v7, :cond_24d

    .line 470
    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v27, v1

    const v1, 0x1050503

    .end local v1    # "rotation":I
    .local v27, "rotation":I
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 472
    add-int/2addr v3, v11

    .line 474
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v7, 0x20000

    or-int/2addr v1, v7

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 475
    const-string v1, "Add Flag SEM_EXTENSION_FLAG_FORCE_TRUSTED_OVERLAY for DexMode"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24f

    .line 469
    .end local v27    # "rotation":I
    .restart local v1    # "rotation":I
    :cond_24d
    move/from16 v27, v1

    .line 481
    .end local v1    # "rotation":I
    .restart local v27    # "rotation":I
    :goto_24f
    iget-boolean v1, v0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    if-eqz v1, :cond_261

    .line 482
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x1050253

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 484
    add-int/2addr v3, v11

    .line 488
    :cond_261
    add-int/lit8 v1, v9, 0x0

    .line 489
    .local v1, "leftOffset":I
    if-gez v1, :cond_26b

    .line 490
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v7, v1

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_272

    .line 491
    :cond_26b
    if-lez v10, :cond_272

    .line 492
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v7, v10

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 495
    :cond_272
    :goto_272
    if-lez v3, :cond_276

    .line 496
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 500
    :cond_276
    iget-object v7, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v7, v7, v20

    move/from16 v18, v1

    .end local v1    # "leftOffset":I
    .local v18, "leftOffset":I
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v7, v1

    add-int/2addr v7, v6

    if-le v7, v15, :cond_284

    .line 501
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 506
    :cond_284
    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v8, :cond_294

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v6, :cond_294

    if-lez v10, :cond_29f

    .line 508
    :cond_294
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 509
    const-string v1, "Add Flag FLAG_LAYOUT_NO_LIMITS for small window"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_29f
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, v6, :cond_2b1

    .line 514
    const-string v1, "Add Flag LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME for small height window"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_2b7

    .line 518
    :cond_2b1
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 522
    :goto_2b7
    return-void
.end method

.method private semUpdateMaxWidth()V
    .registers 7

    .line 298
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 299
    .local v0, "mTmpValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503a7

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "tooltipMaxWidth":I
    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 304
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_28

    .line 305
    invoke-virtual {v0, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    goto :goto_38

    .line 306
    :cond_28
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_38

    .line 308
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    float-to-int v1, v3

    .line 311
    :cond_38
    :goto_38
    move v3, v1

    .line 312
    .local v3, "mMessageViewMaxWidth":I
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 313
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 315
    :cond_4f
    iget-object v4, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 316
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 146
    return-void

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 150
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public semShowActionItemTooltip(IIILjava/lang/CharSequence;)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layoutDirection"    # I
    .param p4, "tooltipText"    # Ljava/lang/CharSequence;

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 551
    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 553
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 555
    if-nez p3, :cond_20

    .line 556
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_27

    .line 558
    :cond_20
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 561
    :goto_27
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 562
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    return-void
.end method

.method public setForCaptionMenuButton()V
    .registers 2

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/TooltipPopup;->mIsCaptionMenuButton:Z

    .line 569
    return-void
.end method

.method public show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .registers 13
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "tooltipText"    # Ljava/lang/CharSequence;

    .line 114
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_HOVER_POPUP:Z

    if-eqz v0, :cond_f

    if-nez p1, :cond_f

    .line 115
    const-string v0, "TooltipPopup"

    const-string/jumbo v1, "show - anchorView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 120
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 121
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v2

    :goto_20
    iput-boolean v3, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexMode:Z

    .line 122
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isDesktopModeStandAlone()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    iput-boolean v1, p0, Lcom/android/internal/view/TooltipPopup;->mIsDexStandAlone:Z

    .line 125
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_HOVER_POPUP:Z

    if-eqz v0, :cond_3c

    if-nez p4, :cond_3c

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v0

    .line 127
    .local v0, "hoverPopupType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    .line 128
    return-void

    .line 132
    .end local v0    # "hoverPopupType":I
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 136
    :cond_45
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 141
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void
.end method
