.class Landroid/view/Display$HdrSdrRatioListenerWrapper;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrSdrRatioListenerWrapper"
.end annotation


# instance fields
.field mLastReportedRatio:F

.field mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/Display;


# direct methods
.method private constructor <init>(Landroid/view/Display;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 2873
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/Display;>;"
    iput-object p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2871
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    .line 2874
    iput-object p2, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    .line 2875
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Display;Ljava/util/function/Consumer;Landroid/view/Display$HdrSdrRatioListenerWrapper-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/Display$HdrSdrRatioListenerWrapper;-><init>(Landroid/view/Display;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2880
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 2889
    iget-object v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1b

    .line 2890
    iget-object v0, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHdrSdrRatio()F

    move-result v0

    .line 2891
    .local v0, "newRatio":F
    iget v1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mLastReportedRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1b

    .line 2892
    iget-object v1, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/view/Display$HdrSdrRatioListenerWrapper;->this$0:Landroid/view/Display;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2895
    .end local v0    # "newRatio":F
    :cond_1b
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 2885
    return-void
.end method
