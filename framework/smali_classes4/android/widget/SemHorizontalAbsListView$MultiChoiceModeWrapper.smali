.class Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 9430
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 2

    .line 9438
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 9458
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 9443
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 9445
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setLongClickable(Z)V

    .line 9446
    const/4 v0, 0x1

    return v0

    .line 9448
    :cond_10
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 9463
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 9464
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 9467
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    .line 9469
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    .line 9470
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 9471
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    .line 9473
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setLongClickable(Z)V

    .line 9474
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .line 9479
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 9482
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmSemCustomMultiChoiceMode(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 9483
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 9485
    :cond_1c
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 9453
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .registers 2
    .param p1, "wrapped"    # Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    .line 9434
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    .line 9435
    return-void
.end method
