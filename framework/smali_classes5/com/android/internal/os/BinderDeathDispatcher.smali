.class public Lcom/android/internal/os/BinderDeathDispatcher;
.super Ljava/lang/Object;
.source "BinderDeathDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderDeathDispatcher"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mTargets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "TT;>.RecipientsInfo;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/internal/os/BinderDeathDispatcher;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargets(Lcom/android/internal/os/BinderDeathDispatcher;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 132
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    const-string v1, "# of watched binders: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 136
    const-string v1, "# of death recipients: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "n":I
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 139
    .local v3, "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    iget-object v4, v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 140
    .end local v3    # "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    goto :goto_21

    .line 141
    :cond_35
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 142
    .end local v1    # "n":I
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getTargetsForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "TT;>.RecipientsInfo;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)I
    .registers 8
    .param p2, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            ")I"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    .local p1, "target":Landroid/os/IInterface;, "TT;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 97
    .local v0, "ib":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 99
    .local v2, "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    if-nez v2, :cond_27

    .line 100
    new-instance v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;-><init>(Lcom/android/internal/os/BinderDeathDispatcher;Landroid/os/IBinder;Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo-IA;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_34

    move-object v2, v3

    .line 104
    const/4 v3, 0x0

    :try_start_19
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_23
    .catchall {:try_start_19 .. :try_end_1c} :catchall_34

    .line 107
    nop

    .line 108
    :try_start_1d
    iget-object v3, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 105
    :catch_23
    move-exception v3

    .line 106
    .local v3, "e":Landroid/os/RemoteException;
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 110
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    monitor-exit v1

    return v3

    .line 112
    .end local v2    # "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_34

    throw v2
.end method

.method public unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .registers 8
    .param p2, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            ")V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>;"
    .local p1, "target":Landroid/os/IInterface;, "TT;"
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 118
    .local v0, "ib":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 120
    .local v2, "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    if-nez v2, :cond_13

    .line 121
    monitor-exit v1

    return-void

    .line 123
    :cond_13
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_30

    .line 124
    iget-object v3, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 125
    iget-object v3, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v2    # "info":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    :cond_30
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v2
.end method
