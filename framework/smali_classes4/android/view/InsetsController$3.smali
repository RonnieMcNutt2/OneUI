.class Landroid/view/InsetsController$3;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/InsetsState$OnTraverseCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mToState:Landroid/view/InsetsState;

.field private mTypes:I

.field final synthetic this$0:Landroid/view/InsetsController;


# direct methods
.method constructor <init>(Landroid/view/InsetsController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/InsetsController;

    .line 811
    iput-object p1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 14
    .param p1, "state1"    # Landroid/view/InsetsState;
    .param p2, "state2"    # Landroid/view/InsetsState;

    .line 848
    iget v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    if-nez v0, :cond_5

    .line 849
    return-void

    .line 851
    :cond_5
    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1, v0}, Landroid/view/InsetsController;->-$$Nest$mcancelExistingControllers(Landroid/view/InsetsController;I)V

    .line 852
    new-instance v0, Landroid/view/InsetsResizeAnimationRunner;

    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v5, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    sget-object v6, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0x12c

    iget v9, p0, Landroid/view/InsetsController$3;->mTypes:I

    iget-object v10, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/InsetsResizeAnimationRunner;-><init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V

    .line 855
    .local v0, "runner":Landroid/view/InsetsAnimationControlRunner;
    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmRunningAnimations(Landroid/view/InsetsController;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsController$RunningAnimation;

    invoke-interface {v0}, Landroid/view/InsetsAnimationControlRunner;->getAnimationType()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/InsetsController$RunningAnimation;-><init>(Landroid/view/InsetsAnimationControlRunner;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startResizingAnimationIfNeeded: types="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsController$3;->mTypes:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v2}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v2

    .line 859
    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    const-string v2, "InsetsController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void
.end method

.method public onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V
    .registers 6
    .param p1, "source1"    # Landroid/view/InsetsSource;
    .param p2, "source2"    # Landroid/view/InsetsSource;

    .line 824
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    .line 826
    .local v0, "type":I
    nop

    .line 827
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 829
    return-void

    .line 832
    :cond_c
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_69

    .line 833
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 834
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v1

    .line 835
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Landroid/view/InsetsController$3;->this$0:Landroid/view/InsetsController;

    invoke-static {v1}, Landroid/view/InsetsController;->-$$Nest$fgetmFrame(Landroid/view/InsetsController;)Landroid/graphics/Rect;

    move-result-object v1

    .line 836
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_69

    .line 839
    :cond_4e
    iget v1, p0, Landroid/view/InsetsController$3;->mTypes:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 840
    iget-object v1, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    if-nez v1, :cond_5e

    .line 841
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 843
    :cond_5e
    iget-object v1, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 844
    return-void

    .line 837
    :cond_69
    :goto_69
    return-void
.end method

.method public onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 4
    .param p1, "state1"    # Landroid/view/InsetsState;
    .param p2, "state2"    # Landroid/view/InsetsState;

    .line 818
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsController$3;->mTypes:I

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsController$3;->mToState:Landroid/view/InsetsState;

    .line 820
    return-void
.end method
