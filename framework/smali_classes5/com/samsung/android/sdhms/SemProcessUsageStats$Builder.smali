.class public final Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;
.super Ljava/lang/Object;
.source "SemProcessUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemProcessUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cpuTime:J

.field private endTime:J

.field private procUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field private uptime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcpuTime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->cpuTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetendTime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->endTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetprocUsageList(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->procUsageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartTime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->startTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetuptime(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->uptime:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdhms/SemProcessUsageStats;
    .registers 2

    .line 138
    new-instance v0, Lcom/samsung/android/sdhms/SemProcessUsageStats;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemProcessUsageStats;-><init>(Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;)V

    return-object v0
.end method

.method public cpuTime(J)Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 118
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->cpuTime:J

    .line 119
    return-object p0
.end method

.method public endTimestamp(J)Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 108
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->endTime:J

    .line 109
    return-object p0
.end method

.method public processUsageHistoryList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;"
        }
    .end annotation

    .line 123
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;>;"
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->procUsageList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->procUsageList:Ljava/util/List;

    .line 126
    :cond_b
    if-nez p1, :cond_31

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->procUsageList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;-><init>()V

    .line 128
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->processName(Ljava/lang/String;)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->uid(I)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->pid(I)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->usage(J)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->build()Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;

    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0

    .line 133
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->procUsageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    return-object p0
.end method

.method public startTimestamp(J)Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 103
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->startTime:J

    .line 104
    return-object p0
.end method

.method public uptime(J)Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 113
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$Builder;->uptime:J

    .line 114
    return-object p0
.end method
