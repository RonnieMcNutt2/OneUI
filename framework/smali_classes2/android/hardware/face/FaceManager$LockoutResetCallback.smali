.class public abstract Landroid/hardware/face/FaceManager$LockoutResetCallback;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LockoutResetCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockoutReset(I)V
    .registers 2
    .param p1, "sensorId"    # I

    .line 1349
    return-void
.end method
