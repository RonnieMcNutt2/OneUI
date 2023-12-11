.class public final Landroid/view/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputWindowHandle$InputConfigFlags;
    }
.end annotation


# instance fields
.field public dispatchingTimeoutMillis:J

.field public displayId:I

.field public focusTransferTarget:Landroid/os/IBinder;

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public inputApplicationHandle:Landroid/view/InputApplicationHandle;

.field public inputConfig:I

.field public layoutParamsFlags:I

.field public layoutParamsSamsungFlags:I

.field public layoutParamsType:I

.field public name:Ljava/lang/String;

.field public oneHandOffsetX:F

.field public oneHandOffsetY:F

.field public oneHandScale:F

.field public ownerPid:I

.field public ownerUid:I

.field public packageName:Ljava/lang/String;

.field public final pointerTouchableRegion:Landroid/graphics/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private ptr:J

.field public replaceTouchableRegionWithCrop:Z

.field public scaleFactor:F

.field public surfaceInset:I

.field public token:Landroid/os/IBinder;

.field public touchOcclusionMode:I

.field public final touchableRegion:Landroid/graphics/Region;

.field public touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Landroid/graphics/Matrix;

.field private window:Landroid/view/IWindow;

.field private windowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/view/InputApplicationHandle;I)V
    .registers 5
    .param p1, "inputApplicationHandle"    # Landroid/view/InputApplicationHandle;
    .param p2, "displayId"    # I

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 126
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 187
    iput-object p1, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 188
    iput p2, p0, Landroid/view/InputWindowHandle;->displayId:I

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/view/InputWindowHandle;)V
    .registers 5
    .param p1, "other"    # Landroid/view/InputWindowHandle;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 126
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/InputWindowHandle;->pointerTouchableRegion:Landroid/graphics/Region;

    .line 137
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 161
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 193
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/InputWindowHandle;->ptr:J

    .line 194
    new-instance v1, Landroid/view/InputApplicationHandle;

    iget-object v2, p1, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    invoke-direct {v1, v2}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    iput-object v1, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 195
    iget-object v1, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 196
    iget-object v1, p1, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    .line 197
    iget-object v1, p1, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    .line 198
    iget-object v1, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 199
    iget v1, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    iput v1, p0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 200
    iget v1, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput v1, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 201
    iget-wide v1, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    iput-wide v1, p0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 202
    iget v1, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 203
    iget v1, p1, Landroid/view/InputWindowHandle;->frameTop:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameTop:I

    .line 204
    iget v1, p1, Landroid/view/InputWindowHandle;->frameRight:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 205
    iget v1, p1, Landroid/view/InputWindowHandle;->frameBottom:I

    iput v1, p0, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 206
    iget v1, p1, Landroid/view/InputWindowHandle;->surfaceInset:I

    iput v1, p0, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 207
    iget v1, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    iput v1, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 208
    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 209
    iget v0, p1, Landroid/view/InputWindowHandle;->inputConfig:I

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 210
    iget v0, p1, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    iput v0, p0, Landroid/view/InputWindowHandle;->touchOcclusionMode:I

    .line 211
    iget v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 212
    iget v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    iput v0, p0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 213
    iget-object v0, p1, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    .line 214
    iget v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    iput v0, p0, Landroid/view/InputWindowHandle;->displayId:I

    .line 215
    iget-object v0, p1, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 216
    iget-boolean v0, p1, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 217
    iget-object v0, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_92

    .line 218
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    .line 219
    iget-object v1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 221
    :cond_92
    iget-object v0, p1, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/view/InputWindowHandle;->focusTransferTarget:Landroid/os/IBinder;

    .line 222
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/view/InputWindowHandle;->nativeDispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 244
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    nop

    .line 246
    return-void

    .line 244
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    throw v0
.end method

.method public getWindow()Landroid/view/IWindow;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    if-eqz v0, :cond_5

    .line 278
    return-object v0

    .line 280
    :cond_5
    iget-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    .line 281
    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "bounds"    # Landroid/view/SurfaceControl;

    .line 256
    invoke-virtual {p0, p1}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 258
    return-void
.end method

.method public setInputConfig(IZ)V
    .registers 5
    .param p1, "inputConfig"    # I
    .param p2, "value"    # Z

    .line 290
    if-eqz p2, :cond_8

    .line 291
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 292
    return-void

    .line 294
    :cond_8
    iget v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 295
    return-void
.end method

.method public setTouchableRegionCrop(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "bounds"    # Landroid/view/SurfaceControl;

    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegionSurfaceControl:Ljava/lang/ref/WeakReference;

    .line 265
    return-void
.end method

.method public setWindowToken(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "iwindow"    # Landroid/view/IWindow;

    .line 268
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    .line 269
    iput-object p1, p0, Landroid/view/InputWindowHandle;->window:Landroid/view/IWindow;

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_9

    :cond_7
    const-string v1, ""

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    const-string v1, ", frame=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->frameLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/InputWindowHandle;->frameTop:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->frameBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    const-string v1, ", touchableRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    const-string v1, ", transform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    const-string v1, ", windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputWindowHandle;->windowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string v1, ", isClone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    return-object v0
.end method
