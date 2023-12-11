.class public Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotHardwareBuffer"
.end annotation


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mContainsHdrLayers:Z

.field private final mContainsSecureLayers:Z

.field private final mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method public constructor <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .registers 5
    .param p1, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p3, "containsSecureLayers"    # Z
    .param p4, "containsHdrLayers"    # Z

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 191
    iput-object p2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 192
    iput-boolean p3, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    .line 193
    iput-boolean p4, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    .line 194
    return-void
.end method

.method private static createFromNative(Landroid/hardware/HardwareBuffer;IZZ)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 7
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p1, "dataspace"    # I
    .param p2, "containsSecureLayers"    # Z
    .param p3, "containsHdrLayers"    # Z

    .line 209
    invoke-static {p1}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 210
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    new-instance v1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 212
    if-eqz v0, :cond_a

    move-object v2, v0

    goto :goto_10

    :cond_a
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    :goto_10
    invoke-direct {v1, p0, v2, p2, p3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V

    .line 210
    return-object v1
.end method


# virtual methods
.method public asBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 254
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_d

    .line 255
    const-string v0, "ScreenCapture"

    const-string v1, "Failed to take screenshot. Null screenshot object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_d
    iget-object v1, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public containsHdrLayers()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return v0
.end method

.method public containsSecureLayers()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return v0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method
