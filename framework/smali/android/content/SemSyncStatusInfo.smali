.class public Landroid/content/SemSyncStatusInfo;
.super Ljava/lang/Object;
.source "SemSyncStatusInfo.java"


# instance fields
.field public initialize:Z

.field public lastFailureTime:J

.field public lastSuccessTime:J

.field public pending:Z


# direct methods
.method public constructor <init>(Landroid/content/SyncStatusInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/content/SyncStatusInfo;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iput-wide v0, p0, Landroid/content/SemSyncStatusInfo;->lastSuccessTime:J

    .line 48
    iget-wide v0, p1, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iput-wide v0, p0, Landroid/content/SemSyncStatusInfo;->lastFailureTime:J

    .line 49
    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->pending:Z

    iput-boolean v0, p0, Landroid/content/SemSyncStatusInfo;->pending:Z

    .line 50
    iget-boolean v0, p1, Landroid/content/SyncStatusInfo;->initialize:Z

    iput-boolean v0, p0, Landroid/content/SemSyncStatusInfo;->initialize:Z

    .line 51
    return-void
.end method
