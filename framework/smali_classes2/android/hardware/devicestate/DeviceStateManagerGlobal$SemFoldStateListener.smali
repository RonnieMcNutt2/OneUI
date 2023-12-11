.class Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemFoldStateListener"
.end annotation


# instance fields
.field private mFolded:Ljava/lang/Boolean;

.field private mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field private mTableMode:Ljava/lang/Boolean;

.field final synthetic this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;)Lcom/samsung/android/view/SemWindowManager$FoldStateListener;
    .registers 1

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    return-object p0
.end method

.method constructor <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    .param p2, "listener"    # Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 488
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 490
    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .line 494
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v1, :cond_c

    const/4 v2, 0x5

    if-ne p1, v2, :cond_a

    goto :goto_c

    :cond_a
    move v2, v0

    goto :goto_d

    :cond_c
    :goto_c
    move v2, v1

    .line 496
    .local v2, "folded":Z
    :goto_d
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_22

    .line 497
    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    .line 498
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onFoldStateChanged(Z)V

    .line 501
    :cond_22
    const/4 v3, 0x2

    if-ne p1, v3, :cond_26

    move v0, v1

    .line 502
    .local v0, "tableMode":Z
    :cond_26
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_3b

    .line 503
    :cond_30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    .line 504
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onTableModeChanged(Z)V

    .line 506
    :cond_3b
    return-void
.end method
