.class Landroid/view/WindowManagerGlobal$2;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/WindowManagerGlobal;

    .line 440
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 442
    iget-object v0, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-static {v0}, Landroid/view/WindowManagerGlobal;->-$$Nest$fgetmLock(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_7
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->-$$Nest$fgetmRoots(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_27

    .line 444
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$2;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-static {v2}, Landroid/view/WindowManagerGlobal;->-$$Nest$fgetmRoots(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 443
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 446
    .end local v1    # "i":I
    :cond_27
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
