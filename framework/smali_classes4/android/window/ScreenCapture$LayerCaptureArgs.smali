.class public Landroid/window/ScreenCapture$LayerCaptureArgs;
.super Landroid/window/ScreenCapture$CaptureArgs;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final mChildrenOnly:Z

.field private final mNativeLayer:J


# direct methods
.method private constructor <init>(Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture$CaptureArgs-IA;)V

    .line 641
    invoke-static {p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->-$$Nest$fgetmChildrenOnly(Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$LayerCaptureArgs;->mChildrenOnly:Z

    .line 642
    invoke-static {p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v0, p0, Landroid/window/ScreenCapture$LayerCaptureArgs;->mNativeLayer:J

    .line 643
    return-void
.end method

.method synthetic constructor <init>(Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;Landroid/window/ScreenCapture$LayerCaptureArgs-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs;-><init>(Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;)V

    return-void
.end method
