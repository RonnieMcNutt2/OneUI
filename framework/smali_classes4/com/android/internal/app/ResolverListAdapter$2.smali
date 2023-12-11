.class Lcom/android/internal/app/ResolverListAdapter$2;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverListAdapter;

.field final synthetic val$doPostProcessing:Z

.field final synthetic val$rebuildCompleted:Z

.field final synthetic val$skipAutoLaunch:Z


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iput-boolean p2, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$doPostProcessing:Z

    iput-boolean p3, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$rebuildCompleted:Z

    iput-boolean p4, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$skipAutoLaunch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 598
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$doPostProcessing:Z

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$rebuildCompleted:Z

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$skipAutoLaunch:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fputmPostListReadyRunnable(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method
