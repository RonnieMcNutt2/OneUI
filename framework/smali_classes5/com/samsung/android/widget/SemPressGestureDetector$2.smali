.class Lcom/samsung/android/widget/SemPressGestureDetector$2;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemPressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemPressGestureDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemPressGestureDetector;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    .line 121
    return-void

    .line 123
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsRequestCode(J)V

    .line 124
    invoke-static {}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfgetsWidgetNameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-static {}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfgetsWidgetIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmHasDoneLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$mparseInfoFromView(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLongTouchRunnable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmCallerPackage(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v4}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmActivityName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmProcessName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SemPressGestureDetector"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsHasCallReflectCount(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmView(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 131
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getTouchedViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmTouchedViews(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/util/ArrayList;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$msendBixbyLongClickedEvent(Lcom/samsung/android/widget/SemPressGestureDetector;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 134
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmView(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmLongLongTouchRunnable(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfgetsLongLongPressTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    :cond_a5
    return-void
.end method
