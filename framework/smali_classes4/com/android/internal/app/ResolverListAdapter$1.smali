.class Lcom/android/internal/app/ResolverListAdapter$1;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverListAdapter;

.field final synthetic val$doPostProcessing:Z


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 455
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iput-boolean p2, p0, Lcom/android/internal/app/ResolverListAdapter$1;->val$doPostProcessing:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 455
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 460
    .local p1, "params":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const-string v0, "list up doInBackground!"

    const-string v1, "ResolverListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsDestroyed()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsFinishing()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3c

    .line 465
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ResolverListController;->sort(Ljava/util/List;)V

    .line 469
    :try_start_26
    aget-object v0, p1, v2

    new-instance v3, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v4, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;-><init>(Lcom/android/internal/app/ResolverListAdapter;Landroid/content/Context;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_35

    .line 473
    goto :goto_41

    .line 471
    :catch_35
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SemResolverListComparator failed!!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3c
    :goto_3c
    const-string v0, "activity is finished.. stop sorting!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_41
    aget-object v0, p1, v2

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 455
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 479
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const-string v0, "ResolverListAdapter"

    const-string v1, "list up process done!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$1;->val$doPostProcessing:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ResolverListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 482
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->val$doPostProcessing:Z

    if-eqz v0, :cond_1e

    .line 483
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->updateProfileViewButton()V

    .line 485
    :cond_1e
    return-void
.end method
