.class public final Landroid/view/SurfaceSession;
.super Ljava/lang/Object;
.source "SurfaceSession.java"


# instance fields
.field private mNativeClient:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Landroid/view/SurfaceSession;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    .line 40
    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/view/SurfaceSession;->kill()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 49
    nop

    .line 50
    return-void

    .line 48
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 49
    throw v0
.end method

.method public kill()V
    .registers 6

    .line 58
    iget-wide v0, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 59
    invoke-static {v0, v1}, Landroid/view/SurfaceSession;->nativeDestroy(J)V

    .line 60
    iput-wide v2, p0, Landroid/view/SurfaceSession;->mNativeClient:J

    .line 62
    :cond_d
    return-void
.end method
