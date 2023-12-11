.class public Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
.super Landroid/window/ScreenCapture$CaptureArgs$Builder;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture$DisplayCaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
        "Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayToken:Landroid/os/IBinder;

.field private mHeight:I

.field private mLayer:Landroid/view/SurfaceControl;

.field private mUseIdentityTransform:Z

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayToken(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLayer(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseIdentityTransform(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I
    .registers 1

    iget p0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mWidth:I

    return p0
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 574
    invoke-direct {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;-><init>()V

    .line 575
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setDisplayToken(Landroid/os/IBinder;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    .line 576
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroid/window/ScreenCapture$CaptureArgs;
    .registers 2

    .line 553
    invoke-virtual {p0}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/window/ScreenCapture$DisplayCaptureArgs;
    .registers 3

    .line 567
    iget-object v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    .line 571
    new-instance v0, Landroid/window/ScreenCapture$DisplayCaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/ScreenCapture$DisplayCaptureArgs;-><init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;Landroid/window/ScreenCapture$DisplayCaptureArgs-IA;)V

    return-object v0

    .line 568
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t take screenshot with null display token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .registers 2

    .line 553
    invoke-virtual {p0}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method getThis()Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 1

    .line 624
    return-object p0
.end method

.method public setDisplayToken(Landroid/os/IBinder;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 2
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 582
    iput-object p1, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mDisplayToken:Landroid/os/IBinder;

    .line 583
    return-object p0
.end method

.method public setLayer(Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 2
    .param p1, "layer"    # Landroid/view/SurfaceControl;

    .line 617
    iput-object p1, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mLayer:Landroid/view/SurfaceControl;

    .line 618
    return-object p0
.end method

.method public setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 596
    iput p1, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mWidth:I

    .line 597
    iput p2, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mHeight:I

    .line 598
    return-object p0
.end method

.method public setUseIdentityTransform(Z)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    .registers 2
    .param p1, "useIdentityTransform"    # Z

    .line 608
    iput-boolean p1, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->mUseIdentityTransform:Z

    .line 609
    return-object p0
.end method
