.class public Landroid/window/ScreenCapture$DisplayCaptureArgs;
.super Landroid/window/ScreenCapture$CaptureArgs;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final mDisplayToken:Landroid/os/IBinder;

.field private final mHeight:I

.field private final mNativeLayer:J

.field private final mUseIdentityTransform:Z

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture$CaptureArgs-IA;)V

    .line 537
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmDisplayToken(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mDisplayToken:Landroid/os/IBinder;

    .line 538
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmWidth(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mWidth:I

    .line 539
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmHeight(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mHeight:I

    .line 540
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmUseIdentityTransform(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mUseIdentityTransform:Z

    .line 542
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 543
    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mNativeLayer:J

    goto :goto_2f

    .line 545
    :cond_2b
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mNativeLayer:J

    .line 548
    :goto_2f
    return-void
.end method

.method synthetic constructor <init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;Landroid/window/ScreenCapture$DisplayCaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs;-><init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)V

    return-void
.end method
