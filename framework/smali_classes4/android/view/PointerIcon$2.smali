.class Landroid/view/PointerIcon$2;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PointerIcon;->registerDisplayListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1360
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1369
    invoke-static {}, Landroid/view/PointerIcon;->-$$Nest$sfgetgSystemIconsByDisplay()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1370
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1364
    invoke-static {}, Landroid/view/PointerIcon;->-$$Nest$sfgetgSystemIconsByDisplay()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1365
    return-void
.end method
