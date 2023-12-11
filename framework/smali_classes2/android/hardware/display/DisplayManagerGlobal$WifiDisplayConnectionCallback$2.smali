.class Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;I)V
    .registers 3
    .param p1, "this$1"    # Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1662
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    iput p2, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1665
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->-$$Nest$fgetmUserCallback(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;)Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1666
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->this$1:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;->-$$Nest$fgetmUserCallback(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;)Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback$2;->val$reason:I

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;->onFailure(I)V

    .line 1668
    :cond_13
    return-void
.end method
