.class final Landroid/media/MediaRouter2Manager$CallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final mCallback:Landroid/media/MediaRouter2Manager$Callback;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/media/MediaRouter2Manager;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaRouter2Manager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/media/MediaRouter2Manager$Callback;

    .line 1034
    iput-object p1, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->this$0:Landroid/media/MediaRouter2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput-object p2, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1036
    iput-object p3, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    .line 1037
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1041
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1042
    return v0

    .line 1044
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1045
    return v2

    .line 1047
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1052
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
