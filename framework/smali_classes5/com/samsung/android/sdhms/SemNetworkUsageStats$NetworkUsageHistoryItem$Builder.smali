.class public final Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
.super Ljava/lang/Object;
.source "SemNetworkUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private uid:I

.field private usage:J


# direct methods
.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusage(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->usage:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;
    .registers 2

    .line 224
    new-instance v0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem;-><init>(Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;)V

    return-object v0
.end method

.method public packageName(Ljava/lang/String;)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->packageName:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public uid(I)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 214
    iput p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->uid:I

    .line 215
    return-object p0
.end method

.method public usage(J)Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 219
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemNetworkUsageStats$NetworkUsageHistoryItem$Builder;->usage:J

    .line 220
    return-object p0
.end method
