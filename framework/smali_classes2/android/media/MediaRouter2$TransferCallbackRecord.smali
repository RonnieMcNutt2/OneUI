.class final Landroid/media/MediaRouter2$TransferCallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferCallbackRecord"
.end annotation


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "transferCallback"    # Landroid/media/MediaRouter2$TransferCallback;

    .line 1994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1995
    iput-object p2, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    .line 1996
    iput-object p1, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1997
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2001
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2002
    return v0

    .line 2004
    :cond_4
    instance-of v1, p1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2005
    return v2

    .line 2007
    :cond_a
    iget-object v1, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    move-object v3, p1

    check-cast v3, Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v3, v3, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 2012
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
