.class public Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$RecentTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistedTaskSnapshotData"
.end annotation


# instance fields
.field public bufferSize:Landroid/graphics/Point;

.field public contentInsets:Landroid/graphics/Rect;

.field public taskSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)V
    .registers 3
    .param p1, "other"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 2496
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 2497
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 2498
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 2499
    return-void
.end method

.method public set(Landroid/window/TaskSnapshot;)V
    .registers 6
    .param p1, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 2506
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 2507
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 2508
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 2509
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 2510
    return-void

    .line 2512
    :cond_a
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2513
    .local v1, "buffer":Landroid/hardware/HardwareBuffer;
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 2514
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 2515
    if-eqz v1, :cond_34

    .line 2516
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_35

    .line 2517
    :cond_34
    nop

    :goto_35
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 2518
    return-void
.end method
