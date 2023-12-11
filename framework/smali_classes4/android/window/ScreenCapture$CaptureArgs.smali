.class public Landroid/window/ScreenCapture$CaptureArgs;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$CaptureArgs$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCapture$CaptureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAllowProtected:Z

.field public final mCaptureSecureLayers:Z

.field final mExcludeLayers:[Landroid/view/SurfaceControl;

.field public final mFrameScaleX:F

.field public final mFrameScaleY:F

.field public final mGrayscale:Z

.field public final mHintForSeamlessTransition:Z

.field public final mPixelFormat:I

.field public final mSourceCrop:Landroid/graphics/Rect;

.field public final mUid:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 506
    new-instance v0, Landroid/window/ScreenCapture$CaptureArgs$1;

    invoke-direct {v0}, Landroid/window/ScreenCapture$CaptureArgs$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCapture$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    .line 295
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .local v0, "excludeLayersLength":I
    if-lez v0, :cond_54

    .line 305
    new-array v1, v0, [Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 306
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_42
    if-ge v1, v0, :cond_53

    .line 307
    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    aput-object v3, v2, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .end local v1    # "index":I
    :cond_53
    goto :goto_57

    .line 310
    :cond_54
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 312
    :goto_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/ScreenCapture$CaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
            "+",
            "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 280
    .local p1, "builder":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<+Landroid/window/ScreenCapture$CaptureArgs$Builder<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    .line 281
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmPixelFormat(Landroid/window/ScreenCapture$CaptureArgs$Builder;)I

    move-result v1

    iput v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    .line 282
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmSourceCrop(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleX(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    .line 284
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleY(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    .line 285
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmCaptureSecureLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    .line 286
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmAllowProtected(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    .line 287
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmUid(Landroid/window/ScreenCapture$CaptureArgs$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    .line 288
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmGrayscale(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    .line 289
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 290
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmHintForSeamlessTransition(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    .line 291
    return-void
.end method

.method synthetic constructor <init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture$CaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;)V

    return-void
.end method

.method private getNativeExcludeLayers()[J
    .registers 5

    .line 333
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_1b

    .line 337
    :cond_8
    array-length v0, v0

    new-array v0, v0, [J

    .line 338
    .local v0, "nativeExcludeLayers":[J
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_c
    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 339
    aget-object v2, v2, v1

    iget-wide v2, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    aput-wide v2, v0, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 342
    .end local v1    # "index":I
    :cond_1a
    return-object v0

    .line 334
    .end local v0    # "nativeExcludeLayers":[J
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .registers 5

    .line 317
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_17

    .line 321
    :cond_8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 322
    .local v3, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v3, :cond_13

    .line 323
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 321
    .end local v3    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 326
    :cond_16
    return-void

    .line 318
    :cond_17
    :goto_17
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 487
    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 489
    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 490
    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 491
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    iget-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 494
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 495
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 496
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v2, v0

    :goto_34
    if-ge v1, v2, :cond_41

    aget-object v3, v0, v1

    .line 498
    .local v3, "excludeLayer":Landroid/view/SurfaceControl;
    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 497
    .end local v3    # "excludeLayer":Landroid/view/SurfaceControl;
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 501
    :cond_3e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    :cond_41
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 504
    return-void
.end method
