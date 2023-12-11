.class public Landroid/graphics/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field private native_instance:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeConstructor()V

    .line 30
    return-void
.end method

.method private native nativeApplyToCanvas(J)V
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeDestructor()V
.end method

.method private native nativeGetMatrix(J)V
.end method


# virtual methods
.method public applyToCanvas(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Camera;->nativeApplyToCanvas(J)V

    .line 151
    return-void
.end method

.method public native dotWithNormal(FFF)F
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeDestructor()V

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Camera;->native_instance:J
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_c

    .line 160
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 161
    nop

    .line 162
    return-void

    .line 160
    :catchall_c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 161
    throw v0
.end method

.method public native getLocationX()F
.end method

.method public native getLocationY()F
.end method

.method public native getLocationZ()F
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Camera;->nativeGetMatrix(J)V

    .line 141
    return-void
.end method

.method public native restore()V
.end method

.method public native rotate(FFF)V
.end method

.method public native rotateX(F)V
.end method

.method public native rotateY(F)V
.end method

.method public native rotateZ(F)V
.end method

.method public native save()V
.end method

.method public native setLocation(FFF)V
.end method

.method public native translate(FFF)V
.end method
