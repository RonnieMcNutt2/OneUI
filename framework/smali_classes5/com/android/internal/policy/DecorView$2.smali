.class Lcom/android/internal/policy/DecorView$2;
.super Landroid/view/ViewOutlineProvider;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 443
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmIsDexEnabled(Lcom/android/internal/policy/DecorView;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/DecorView$2;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmPopOverRadius(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/samsung/android/util/SemViewUtils;->getSmoothRoundedRect(IIIII)Landroid/graphics/Path;

    move-result-object v0

    .local v0, "path":Landroid/graphics/Path;
    goto :goto_28

    .line 450
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemViewUtils;->getPopOverSmoothRoundedRect(II)Landroid/graphics/Path;

    move-result-object v0

    .line 452
    .restart local v0    # "path":Landroid/graphics/Path;
    :goto_28
    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 453
    return-void
.end method
