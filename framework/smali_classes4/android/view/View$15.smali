.class Landroid/view/View$15;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->invalidateCanvasBlur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/View;

    .line 35242
    iput-object p1, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 35245
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 35246
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mCanvasBlurEnabled:Z

    .line 35247
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-static {v0}, Landroid/view/View;->-$$Nest$fgetmBlurColorCurve(Landroid/view/View;)Landroid/view/SemBlurInfo$ColorCurve;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 35248
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mBlurColorCurveEnabled:Z

    .line 35249
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-static {v2}, Landroid/view/View;->-$$Nest$fgetmBlurInfo(Landroid/view/View;)Landroid/view/SemBlurInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo;->getBlurRadius()I

    move-result v2

    iput v2, v0, Landroid/view/ViewRootImpl;->mBlurRadius:I

    .line 35250
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-static {v2}, Landroid/view/View;->-$$Nest$fgetmBlurInfo(Landroid/view/View;)Landroid/view/SemBlurInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo;->getColorCurve()Landroid/view/SemBlurInfo$ColorCurve;

    move-result-object v2

    iput-object v2, v0, Landroid/view/ViewRootImpl;->mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 35253
    :cond_43
    return v1
.end method
