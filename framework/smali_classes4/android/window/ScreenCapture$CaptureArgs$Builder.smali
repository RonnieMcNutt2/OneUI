.class public Landroid/window/ScreenCapture$CaptureArgs$Builder;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture$CaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllowProtected:Z

.field private mCaptureSecureLayers:Z

.field private mExcludeLayers:[Landroid/view/SurfaceControl;

.field private mFrameScaleX:F

.field private mFrameScaleY:F

.field private mGrayscale:Z

.field private mHintForSeamlessTransition:Z

.field private mPixelFormat:I

.field private final mSourceCrop:Landroid/graphics/Rect;

.field private mUid:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowProtected(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mAllowProtected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSecureLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExcludeLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)[Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameScaleX(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F
    .registers 1

    iget p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameScaleY(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F
    .registers 1

    iget p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGrayscale(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mGrayscale:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHintForSeamlessTransition(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mHintForSeamlessTransition:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPixelFormat(Landroid/window/ScreenCapture$CaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mPixelFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSourceCrop(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUid(Landroid/window/ScreenCapture$CaptureArgs$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mUid:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 3

    .line 350
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const/4 v0, 0x1

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mPixelFormat:I

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    .line 353
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    .line 354
    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    .line 357
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mUid:J

    return-void
.end method


# virtual methods
.method public build()Landroid/window/ScreenCapture$CaptureArgs;
    .registers 3

    .line 367
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    new-instance v0, Landroid/window/ScreenCapture$CaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture$CaptureArgs-IA;)V

    return-object v0
.end method

.method getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 476
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    return-object p0
.end method

.method public setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "allowProtected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 428
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mAllowProtected:Z

    .line 429
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "captureSecureLayers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 417
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    .line 418
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "excludeLayers"    # [Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/SurfaceControl;",
            ")TT;"
        }
    .end annotation

    .line 453
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput-object p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 454
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "frameScale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 395
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    .line 396
    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    .line 397
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFrameScale(FF)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 4
    .param p1, "frameScaleX"    # F
    .param p2, "frameScaleY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 405
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    .line 406
    iput p2, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    .line 407
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setGrayscale(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "grayscale"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 445
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mGrayscale:Z

    .line 446
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "hintForSeamlessTransition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 468
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mHintForSeamlessTransition:Z

    .line 469
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "pixelFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 374
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mPixelFormat:I

    .line 375
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 3
    .param p1, "sourceCrop"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 383
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    if-nez p1, :cond_8

    .line 384
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 386
    :cond_8
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 388
    :goto_d
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 4
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 437
    .local p0, "this":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<TT;>;"
    iput-wide p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mUid:J

    .line 438
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method
