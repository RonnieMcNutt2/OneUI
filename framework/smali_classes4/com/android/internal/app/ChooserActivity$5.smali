.class Lcom/android/internal/app/ChooserActivity$5;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->maybeSetupGlobalLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic val$recyclerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2978
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$5;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$5;->val$recyclerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 2982
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$5;->val$recyclerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2983
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$5;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2984
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_23

    .line 2985
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2986
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 2987
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 2988
    invoke-virtual {v0}, Landroid/widget/TextView;->requestAccessibilityFocus()Z

    .line 2990
    :cond_23
    return-void
.end method
