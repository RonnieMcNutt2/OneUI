.class Lcom/android/internal/jank/DisplayResolutionTracker$1;
.super Ljava/lang/Object;
.source "DisplayResolutionTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/DisplayResolutionTracker;-><init>(Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/jank/DisplayResolutionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 79
    iput-object p1, p0, Lcom/android/internal/jank/DisplayResolutionTracker$1;->this$0:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 82
    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$1;->this$0:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-static {v0, p1}, Lcom/android/internal/jank/DisplayResolutionTracker;->-$$Nest$mupdateDisplay(Lcom/android/internal/jank/DisplayResolutionTracker;I)V

    .line 83
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 87
    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker$1;->this$0:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-static {v0, p1}, Lcom/android/internal/jank/DisplayResolutionTracker;->-$$Nest$mupdateDisplay(Lcom/android/internal/jank/DisplayResolutionTracker;I)V

    .line 88
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 93
    return-void
.end method
