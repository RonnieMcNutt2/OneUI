.class Landroid/widget/RemoteViews$AddStrokeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddStrokeAction"
.end annotation


# static fields
.field public static final TAG:I = 0x2c


# instance fields
.field blendingOpacity:F

.field color:I

.field final methodName:Ljava/lang/String;

.field size:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFIF)V
    .registers 6
    .param p2, "viewId"    # I
    .param p3, "size"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .line 7884
    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7921
    const-string p1, "addStrokeTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->methodName:Ljava/lang/String;

    .line 7885
    iput p2, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    .line 7886
    iput p3, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    .line 7887
    iput p4, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    .line 7888
    iput p5, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    .line 7889
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7891
    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7921
    const-string p1, "addStrokeTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->methodName:Ljava/lang/String;

    .line 7892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    .line 7893
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    .line 7894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    .line 7895
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    .line 7896
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 7907
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7908
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    return-void

    .line 7909
    :cond_b
    iget v1, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    iget v2, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    iget v3, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    .line 7910
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 7911
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .line 7914
    const-string v0, "AddStrokeAction"

    return-object v0
.end method

.method public getActionTag()I
    .registers 2

    .line 7925
    const/16 v0, 0x2c

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7899
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7900
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7901
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7902
    iget v0, p0, Landroid/widget/RemoteViews$AddStrokeAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7903
    return-void
.end method
