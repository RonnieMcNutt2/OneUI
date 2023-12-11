.class public Landroid/view/SurfaceControl$JankData;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$JankData$JankType;
    }
.end annotation


# static fields
.field public static final BUFFER_STUFFING:I = 0x40

.field public static final DISPLAY_HAL:I = 0x1

.field public static final JANK_APP_DEADLINE_MISSED:I = 0x8

.field public static final JANK_NONE:I = 0x0

.field public static final JANK_SURFACEFLINGER_DEADLINE_MISSED:I = 0x2

.field public static final JANK_SURFACEFLINGER_GPU_DEADLINE_MISSED:I = 0x4

.field public static final PREDICTION_ERROR:I = 0x10

.field public static final SURFACE_FLINGER_SCHEDULING:I = 0x20

.field public static final UNKNOWN:I = 0x80


# instance fields
.field public final frameVsyncId:J

.field public final jankType:I


# direct methods
.method public constructor <init>(JI)V
    .registers 4
    .param p1, "frameVsyncId"    # J
    .param p3, "jankType"    # I

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-wide p1, p0, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    .line 459
    iput p3, p0, Landroid/view/SurfaceControl$JankData;->jankType:I

    .line 460
    return-void
.end method
