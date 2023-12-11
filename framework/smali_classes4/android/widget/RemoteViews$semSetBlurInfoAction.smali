.class Landroid/widget/RemoteViews$semSetBlurInfoAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "semSetBlurInfoAction"
.end annotation


# instance fields
.field blurInfo:Landroid/view/SemBlurInfo;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/view/SemBlurInfo;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "blurInfo"    # Landroid/view/SemBlurInfo;

    .line 8657
    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8658
    iput p2, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    .line 8659
    iput-object p3, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    .line 8660
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 8662
    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    .line 8664
    sget-object p1, Landroid/view/SemBlurInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SemBlurInfo;

    iput-object p1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    .line 8665
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8674
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    iget v1, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    const/16 v2, 0x1e

    iget-object v3, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    const-string/jumbo v4, "semSetBlurInfo"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    .line 8677
    .local v0, "ra":Landroid/widget/RemoteViews$ReflectionAction;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$ReflectionAction;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8678
    return-void
.end method

.method public getActionTag()I
    .registers 2

    .line 8682
    const/16 v0, 0x69

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8668
    iget v0, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8669
    iget-object v0, p0, Landroid/widget/RemoteViews$semSetBlurInfoAction;->blurInfo:Landroid/view/SemBlurInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/SemBlurInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8670
    return-void
.end method
