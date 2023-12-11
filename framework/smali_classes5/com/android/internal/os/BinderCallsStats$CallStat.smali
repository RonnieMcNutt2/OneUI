.class public Lcom/android/internal/os/BinderCallsStats$CallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStat"
.end annotation


# instance fields
.field public final binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public callCount:J

.field public final callingUid:I

.field public cpuTimeMicros:J

.field public exceptionCount:J

.field public incrementalCallCount:J

.field public latencyMicros:J

.field public maxCpuTimeMicros:J

.field public maxLatencyMicros:J

.field public maxReplySizeBytes:J

.field public maxRequestSizeBytes:J

.field public packageName:Ljava/lang/String;

.field public recordedCallCount:J

.field public final screenInteractive:Z

.field public final transactionCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZLjava/lang/String;)V
    .registers 6
    .param p1, "callingUid"    # I
    .param p3, "transactionCode"    # I
    .param p4, "screenInteractive"    # Z
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1584
    .local p2, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1585
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    .line 1586
    iput-object p2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    .line 1587
    iput p3, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    .line 1588
    iput-boolean p4, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    .line 1589
    iput-object p5, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    .line 1590
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/os/BinderCallsStats$CallStat;
    .registers 8

    .line 1594
    new-instance v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iget-boolean v4, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iget-object v5, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BinderCallsStats$CallStat;-><init>(ILjava/lang/Class;IZLjava/lang/String;)V

    .line 1596
    .local v0, "clone":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 1597
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 1598
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 1599
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 1600
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 1601
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 1602
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 1603
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    .line 1604
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 1605
    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 1606
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    .line 1607
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats$CallStat;->clone()Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1613
    new-instance v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v0}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, "methodName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStat{packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    .line 1618
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incrementalCallCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recordedCallCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cpuTimeMicros="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latencyMicros="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1615
    return-object v1
.end method
