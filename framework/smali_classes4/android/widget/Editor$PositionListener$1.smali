.class Landroid/widget/Editor$PositionListener$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$PositionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$PositionListener;


# direct methods
.method constructor <init>(Landroid/widget/Editor$PositionListener;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Editor$PositionListener;

    .line 4250
    iput-object p1, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 4253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_34

    .line 4254
    iget-object v1, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v1}, Landroid/widget/Editor$PositionListener;->-$$Nest$fgetmPositionListeners(Landroid/widget/Editor$PositionListener;)[Landroid/widget/Editor$TextViewPositionListener;

    move-result-object v1

    aget-object v1, v1, v0

    .line 4255
    .local v1, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v1, :cond_31

    instance-of v2, v1, Landroid/widget/Editor$HandleView;

    if-eqz v2, :cond_31

    .line 4256
    instance-of v2, v1, Landroid/widget/Editor$SelectionHandleView;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    iget-object v2, v2, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_21

    .line 4258
    return-void

    .line 4260
    :cond_21
    iget-object v2, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v2}, Landroid/widget/Editor$PositionListener;->-$$Nest$fgetmPositionX(Landroid/widget/Editor$PositionListener;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$PositionListener$1;->this$1:Landroid/widget/Editor$PositionListener;

    invoke-static {v3}, Landroid/widget/Editor$PositionListener;->-$$Nest$fgetmPositionY(Landroid/widget/Editor$PositionListener;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, v4}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 4253
    .end local v1    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4263
    .end local v0    # "i":I
    :cond_34
    return-void
.end method
