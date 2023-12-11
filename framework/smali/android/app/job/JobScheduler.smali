.class public abstract Landroid/app/job/JobScheduler;
.super Ljava/lang/Object;
.source "JobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobScheduler$PendingJobReason;,
        Landroid/app/job/JobScheduler$Result;
    }
.end annotation


# static fields
.field public static final PENDING_JOB_REASON_APP:I = 0x1

.field public static final PENDING_JOB_REASON_APP_STANDBY:I = 0x2

.field public static final PENDING_JOB_REASON_BACKGROUND_RESTRICTION:I = 0x3

.field public static final PENDING_JOB_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x4

.field public static final PENDING_JOB_REASON_CONSTRAINT_CHARGING:I = 0x5

.field public static final PENDING_JOB_REASON_CONSTRAINT_CONNECTIVITY:I = 0x6

.field public static final PENDING_JOB_REASON_CONSTRAINT_CONTENT_TRIGGER:I = 0x7

.field public static final PENDING_JOB_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final PENDING_JOB_REASON_CONSTRAINT_MINIMUM_LATENCY:I = 0x9

.field public static final PENDING_JOB_REASON_CONSTRAINT_PREFETCH:I = 0xa

.field public static final PENDING_JOB_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0xb

.field public static final PENDING_JOB_REASON_DEVICE_STATE:I = 0xc

.field public static final PENDING_JOB_REASON_EXECUTING:I = -0x1

.field public static final PENDING_JOB_REASON_INVALID_JOB_ID:I = -0x2

.field public static final PENDING_JOB_REASON_JOB_SCHEDULER_OPTIMIZATION:I = 0xd

.field public static final PENDING_JOB_REASON_QUOTA:I = 0xe

.field public static final PENDING_JOB_REASON_UNDEFINED:I = 0x0

.field public static final PENDING_JOB_REASON_USER:I = 0xf

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final THROW_ON_INVALID_DATA_TRANSFER_IMPLEMENTATION:J = 0xf38aa29L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitizeNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "namespace"    # Ljava/lang/String;

    .line 296
    if-nez p0, :cond_4

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canRunUserInitiatedJobs()Z
    .registers 2

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public abstract cancel(I)V
.end method

.method public abstract cancelAll()V
.end method

.method public cancelInAllNamespaces()V
    .registers 3

    .line 425
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
.end method

.method public forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getAllJobSnapshots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobSnapshot;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPendingJob(I)Landroid/app/job/JobInfo;
.end method

.method public getPendingJobReason(I)I
    .registers 3
    .param p1, "jobId"    # I

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingJobsInAllNamespaces()Ljava/util/Map;
    .registers 3
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

    .line 447
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getStartedJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public hasRunUserInitiatedJobsPermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public abstract notePendingUserRequestedAppStop(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
.end method

.method public abstract schedule(Landroid/app/job/JobInfo;)I
.end method

.method public abstract scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract unregisterUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
.end method
