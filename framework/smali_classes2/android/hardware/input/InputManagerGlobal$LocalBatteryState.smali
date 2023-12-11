.class final Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;
.super Landroid/hardware/BatteryState;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalBatteryState"
.end annotation


# instance fields
.field private final mCapacity:F

.field private final mIsPresent:Z

.field private final mStatus:I


# direct methods
.method constructor <init>()V
    .registers 4

    .line 1213
    const/4 v0, 0x1

    const/high16 v1, 0x7fc00000    # Float.NaN

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V

    .line 1214
    return-void
.end method

.method constructor <init>(ZIF)V
    .registers 4
    .param p1, "isPresent"    # Z
    .param p2, "status"    # I
    .param p3, "capacity"    # F

    .line 1216
    invoke-direct {p0}, Landroid/hardware/BatteryState;-><init>()V

    .line 1217
    iput-boolean p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mIsPresent:Z

    .line 1218
    iput p2, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mStatus:I

    .line 1219
    iput p3, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mCapacity:F

    .line 1220
    return-void
.end method


# virtual methods
.method public getCapacity()F
    .registers 2

    .line 1234
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mCapacity:F

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 1229
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mStatus:I

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 1224
    iget-boolean v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;->mIsPresent:Z

    return v0
.end method
