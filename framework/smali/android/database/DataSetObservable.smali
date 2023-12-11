.class public Landroid/database/DataSetObservable;
.super Landroid/database/Observable;
.source "DataSetObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Landroid/database/DataSetObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .registers 4

    .line 31
    iget-object v0, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 36
    :try_start_3
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1b

    .line 37
    iget-object v2, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/DataSetObserver;

    invoke-virtual {v2}, Landroid/database/DataSetObserver;->onChanged()V

    .line 36
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 39
    .end local v1    # "i":I
    :cond_1b
    monitor-exit v0

    .line 40
    return-void

    .line 39
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public notifyInvalidated()V
    .registers 4

    .line 48
    iget-object v0, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 49
    :try_start_3
    iget-object v1, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1b

    .line 50
    iget-object v2, p0, Landroid/database/DataSetObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/DataSetObserver;

    invoke-virtual {v2}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 49
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 52
    .end local v1    # "i":I
    :cond_1b
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
