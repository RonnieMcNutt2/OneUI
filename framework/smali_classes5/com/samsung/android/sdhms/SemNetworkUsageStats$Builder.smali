.class public final Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;
.super Ljava/lang/Object;
.source "SemNetworkUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemNetworkUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private endTime:J

.field private netUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetendTime(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->endTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnetUsageList(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->netUsageList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartTime(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->startTime:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdhms/SemNetworkUsageStats;
    .registers 2

    .line 98
    new-instance v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemNetworkUsageStats;-><init>(Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;)V

    return-object v0
.end method

.method public endTimestamp(J)Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 79
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->endTime:J

    .line 80
    return-object p0
.end method

.method public networkUsageHistoryList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;"
        }
    .end annotation

    .line 84
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;>;"
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->netUsageList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->netUsageList:Ljava/util/List;

    .line 87
    :cond_b
    if-nez p1, :cond_2d

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->netUsageList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;-><init>()V

    .line 89
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->packageName(Ljava/lang/String;)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->uid(I)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->usage(J)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->build()Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-object p0

    .line 93
    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->netUsageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-object p0
.end method

.method public startTimestamp(J)Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 74
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$Builder;->startTime:J

    .line 75
    return-object p0
.end method
