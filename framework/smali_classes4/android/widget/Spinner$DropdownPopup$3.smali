.class Landroid/widget/Spinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .param p1, "this$1"    # Landroid/widget/Spinner$DropdownPopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1466
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 1468
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1469
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_f

    .line 1470
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1472
    :cond_f
    return-void
.end method
