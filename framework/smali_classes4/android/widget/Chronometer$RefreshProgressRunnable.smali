.class Landroid/widget/Chronometer$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "Chronometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Chronometer;


# direct methods
.method private constructor <init>(Landroid/widget/Chronometer;)V
    .registers 2

    .line 863
    iput-object p1, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Chronometer;Landroid/widget/Chronometer$RefreshProgressRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Chronometer$RefreshProgressRunnable;-><init>(Landroid/widget/Chronometer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 865
    iget-object v0, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    monitor-enter v0

    .line 866
    :try_start_3
    iget-object v1, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v1}, Landroid/widget/Chronometer;->-$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 867
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_2e

    .line 868
    iget-object v3, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v3}, Landroid/widget/Chronometer;->-$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer$RefreshData;

    .line 869
    .local v3, "rd":Landroid/widget/Chronometer$RefreshData;
    iget-object v4, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    iget v5, v3, Landroid/widget/Chronometer$RefreshData;->id:I

    iget v6, v3, Landroid/widget/Chronometer$RefreshData;->progress:I

    iget-boolean v7, v3, Landroid/widget/Chronometer$RefreshData;->animate:Z

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v8, v7}, Landroid/widget/Chronometer;->-$$Nest$mdoRefreshProgress(Landroid/widget/Chronometer;IIZZ)V

    .line 870
    invoke-virtual {v3}, Landroid/widget/Chronometer$RefreshData;->recycle()V

    .line 867
    .end local v3    # "rd":Landroid/widget/Chronometer$RefreshData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 872
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v2}, Landroid/widget/Chronometer;->-$$Nest$fgetmRefreshData(Landroid/widget/Chronometer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 873
    iget-object v2, p0, Landroid/widget/Chronometer$RefreshProgressRunnable;->this$0:Landroid/widget/Chronometer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/Chronometer;->-$$Nest$fputmRefreshIsPosted(Landroid/widget/Chronometer;Z)V

    .line 874
    .end local v1    # "count":I
    monitor-exit v0

    .line 875
    return-void

    .line 874
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method
