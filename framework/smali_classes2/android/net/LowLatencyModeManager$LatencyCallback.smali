.class public Landroid/net/LowLatencyModeManager$LatencyCallback;
.super Ljava/lang/Object;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LowLatencyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatencyCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetLatencyDone(Landroid/net/LowLatencyModeManager$LatencyResult;)V
    .registers 2
    .param p1, "result"    # Landroid/net/LowLatencyModeManager$LatencyResult;

    .line 158
    return-void
.end method
