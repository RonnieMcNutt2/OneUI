.class Landroid/view/HandlerActionQueue$HandlerAction;
.super Ljava/lang/Object;
.source "HandlerActionQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandlerActionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field final action:Ljava/lang/Runnable;

.field final delay:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 117
    iput-wide p2, p0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    .line 118
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "otherAction"    # Ljava/lang/Runnable;

    .line 121
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    :cond_6
    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 121
    :goto_13
    return v0
.end method
