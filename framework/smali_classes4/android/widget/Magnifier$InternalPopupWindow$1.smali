.class Landroid/widget/Magnifier$InternalPopupWindow$1;
.super Ljava/lang/Object;
.source "Magnifier.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Magnifier$InternalPopupWindow;->setupOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Magnifier$InternalPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Magnifier$InternalPopupWindow;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/Magnifier$InternalPopupWindow;

    .line 1198
    iput-object p1, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1202
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$mdrawOverlay(Landroid/widget/Magnifier$InternalPopupWindow;)V

    .line 1203
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$fgetmCallback(Landroid/widget/Magnifier$InternalPopupWindow;)Landroid/widget/Magnifier$Callback;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1204
    iget-object v0, p0, Landroid/widget/Magnifier$InternalPopupWindow$1;->this$0:Landroid/widget/Magnifier$InternalPopupWindow;

    invoke-static {v0}, Landroid/widget/Magnifier$InternalPopupWindow;->-$$Nest$mupdateCurrentContentForTesting(Landroid/widget/Magnifier$InternalPopupWindow;)V

    .line 1206
    :cond_12
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 1210
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1211
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 1215
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1216
    return-void
.end method
