.class public final Landroid/window/TaskSnapshot$Builder;
.super Ljava/lang/Object;
.source "TaskSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppearance:I

.field private mCaptureTime:J

.field private mColorSpace:Landroid/graphics/ColorSpace;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mCutoutInsets:Landroid/graphics/Rect;

.field private mHasImeSurface:Z

.field private mId:J

.field private mIsRealSnapshot:Z

.field private mIsTranslucent:Z

.field private mLetterboxInsets:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mPixelFormat:I

.field private mRotation:I

.field private mSnapshot:Landroid/hardware/HardwareBuffer;

.field private mTaskSize:Landroid/graphics/Point;

.field private mTopActivity:Landroid/content/ComponentName;

.field private mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/window/TaskSnapshot;
    .registers 23

    .line 475
    move-object/from16 v0, p0

    new-instance v21, Landroid/window/TaskSnapshot;

    move-object/from16 v1, v21

    iget-wide v2, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    iget-wide v4, v0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v8, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v9, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    iget v10, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v12, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    const/4 v14, 0x0

    iget-boolean v15, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    move/from16 v16, v14

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    move/from16 v17, v14

    iget-boolean v14, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v18, v14

    iget-boolean v14, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v19, v14

    iget-object v14, v0, Landroid/window/TaskSnapshot$Builder;->mCutoutInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v14

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v20}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V

    return-object v21
.end method

.method public getPixelFormat()I
    .registers 2

    .line 459
    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "appearance"    # I

    .line 441
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    .line 442
    return-object p0
.end method

.method public setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3
    .param p1, "captureTime"    # J

    .line 383
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mCaptureTime:J

    .line 384
    return-object p0
.end method

.method public setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 398
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 399
    return-object p0
.end method

.method public setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "contentInsets"    # Landroid/graphics/Rect;

    .line 421
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    .line 422
    return-object p0
.end method

.method public setCutoutInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "cutoutInsets"    # Landroid/graphics/Rect;

    .line 469
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mCutoutInsets:Landroid/graphics/Rect;

    .line 470
    return-object p0
.end method

.method public setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "hasImeSurface"    # Z

    .line 454
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    .line 455
    return-object p0
.end method

.method public setId(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3
    .param p1, "id"    # J

    .line 378
    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    .line 379
    return-object p0
.end method

.method public setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "realSnapshot"    # Z

    .line 431
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    .line 432
    return-object p0
.end method

.method public setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "isTranslucent"    # Z

    .line 446
    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    .line 447
    return-object p0
.end method

.method public setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "letterboxInsets"    # Landroid/graphics/Rect;

    .line 426
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    .line 427
    return-object p0
.end method

.method public setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "orientation"    # I

    .line 403
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    .line 404
    return-object p0
.end method

.method public setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "pixelFormat"    # I

    .line 463
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    .line 464
    return-object p0
.end method

.method public setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "rotation"    # I

    .line 408
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    .line 409
    return-object p0
.end method

.method public setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 393
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    .line 394
    return-object p0
.end method

.method public setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "size"    # Landroid/graphics/Point;

    .line 416
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    .line 417
    return-object p0
.end method

.method public setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 388
    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    .line 389
    return-object p0
.end method

.method public setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2
    .param p1, "windowingMode"    # I

    .line 436
    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    .line 437
    return-object p0
.end method
