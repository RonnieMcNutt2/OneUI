.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field mBinder:Landroid/app/job/IJobScheduler;

.field private final mContext:Landroid/content/Context;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V
    .registers 5
    .param p1, "jsi"    # Landroid/app/JobSchedulerImpl;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 62
    iget-object v0, p1, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-direct {p0, v0, v1, p2}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/job/IJobScheduler;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/job/IJobScheduler;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/job/IJobScheduler;
    .param p3, "namespace"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    .line 58
    iput-object p3, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public canRunUserInitiatedJobs()Z
    .registers 3

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->canRunUserInitiatedJobs(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 179
    :catch_d
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public cancel(I)V
    .registers 4
    .param p1, "jobId"    # I

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->cancel(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    .line 115
    :catch_8
    move-exception v0

    :goto_9
    nop

    .line 116
    return-void
.end method

.method public cancelAll()V
    .registers 3

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->cancelAllInNamespace(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    .line 122
    :catch_8
    move-exception v0

    :goto_9
    nop

    .line 123
    return-void
.end method

.method public cancelInAllNamespaces()V
    .registers 2

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    .line 129
    :catch_6
    move-exception v0

    :goto_7
    nop

    .line 130
    return-void
.end method

.method public enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 5
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;

    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/job/IJobScheduler;->enqueue(Ljava/lang/String;Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 97
    :catch_9
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/app/JobSchedulerImpl;->sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    if-eqz p1, :cond_1b

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 75
    new-instance v0, Landroid/app/JobSchedulerImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/app/JobSchedulerImpl;Ljava/lang/String;)V

    return-object v0

    .line 73
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "namespace cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "namespace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllJobSnapshots()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation

    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getAllJobSnapshots()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 206
    :catch_b
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/job/IJobScheduler;->getAllPendingJobsInNamespace(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 136
    :catch_d
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .registers 4
    .param p1, "jobId"    # I

    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJob(Ljava/lang/String;I)Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 161
    :catch_9
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPendingJobReason(I)I
    .registers 4
    .param p1, "jobId"    # I

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJobReason(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 170
    :catch_9
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getPendingJobsInAllNamespaces()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;>;"
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    .line 145
    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/Map;

    move-result-object v0

    .line 146
    .local v0, "parceledList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 147
    .local v1, "jobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/app/job/JobInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 148
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2f

    .line 150
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_13

    .line 151
    :cond_2e
    return-object v1

    .line 152
    .end local v0    # "parceledList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ParceledListSlice<Landroid/app/job/JobInfo;>;>;"
    .end local v1    # "jobMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/app/job/JobInfo;>;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_2f
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStartedJobs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->getStartedJobs()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 197
    :catch_7
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2}, Landroid/app/job/IJobScheduler;->hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 188
    :catch_7
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/job/IJobScheduler;->notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 242
    goto :goto_7

    .line 241
    :catch_6
    move-exception v0

    .line 243
    :goto_7
    return-void
.end method

.method public registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/job/IUserVisibleJobObserver;

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 219
    goto :goto_7

    .line 218
    :catch_6
    move-exception v0

    .line 220
    :goto_7
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .registers 4
    .param p1, "job"    # Landroid/app/job/JobInfo;

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/app/job/IJobScheduler;->schedule(Ljava/lang/String;Landroid/app/job/JobInfo;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 88
    :catch_9
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mNamespace:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/job/IJobScheduler;->scheduleAsPackage(Ljava/lang/String;Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 106
    :catch_d
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/job/IUserVisibleJobObserver;

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 230
    goto :goto_7

    .line 229
    :catch_6
    move-exception v0

    .line 231
    :goto_7
    return-void
.end method
