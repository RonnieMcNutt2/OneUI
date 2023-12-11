.class public Lcom/android/internal/util/ScreenshotRequest$Builder;
.super Ljava/lang/Object;
.source "ScreenshotRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBoundsInScreen:Landroid/graphics/Rect;

.field private mInsets:Landroid/graphics/Insets;

.field private final mSource:I

.field private mTaskId:I

.field private mTopComponent:Landroid/content/ComponentName;

.field private final mType:I

.field private mUserId:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "source"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    .line 168
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    .line 182
    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/16 v0, 0x64

    if-eq p1, v0, :cond_28

    const/16 v0, 0x65

    if-ne p1, v0, :cond_20

    goto :goto_28

    .line 188
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid screenshot type requested!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_28
    :goto_28
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    .line 191
    iput p2, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mSource:I

    .line 192
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/util/ScreenshotRequest;
    .registers 13

    .line 198
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 199
    const-string v0, "ScreenshotRequest"

    const-string v1, "Bitmap provided, but request is fullscreen. Bitmap will be ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_10
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 202
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request is PROVIDED_IMAGE, but no bitmap is provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_22
    :goto_22
    new-instance v0, Lcom/android/internal/util/ScreenshotRequest;

    iget v3, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    iget v4, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mSource:I

    iget-object v5, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTopComponent:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    iget v7, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    iget-object v8, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/util/ScreenshotRequest;-><init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/internal/util/ScreenshotRequest-IA;)V

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 246
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 247
    return-object p0
.end method

.method public setBoundsOnScreen(Landroid/graphics/Rect;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 256
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 257
    return-object p0
.end method

.method public setInsets(Landroid/graphics/Insets;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 266
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    .line 267
    return-object p0
.end method

.method public setTaskId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2
    .param p1, "taskId"    # I

    .line 226
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    .line 227
    return-object p0
.end method

.method public setTopComponent(Landroid/content/ComponentName;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2
    .param p1, "topComponent"    # Landroid/content/ComponentName;

    .line 216
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTopComponent:Landroid/content/ComponentName;

    .line 217
    return-object p0
.end method

.method public setUserId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2
    .param p1, "userId"    # I

    .line 236
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    .line 237
    return-object p0
.end method
