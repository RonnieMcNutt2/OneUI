.class Lcom/android/internal/widget/ResolverDrawerLayout$1;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 138
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .registers 5
    .param p1, "isInTouchMode"    # Z

    .line 141
    if-nez p1, :cond_1d

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$misDescendantClipped(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$1;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$msmoothScrollTo(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V

    .line 144
    :cond_1d
    return-void
.end method
