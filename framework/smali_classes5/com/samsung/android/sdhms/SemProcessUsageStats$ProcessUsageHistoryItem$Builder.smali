.class public final Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
.super Ljava/lang/Object;
.source "SemProcessUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pid:I

.field private processName:Ljava/lang/String;

.field private uid:I

.field private usage:J


# direct methods
.method static bridge synthetic -$$Nest$fgetpid(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->pid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprocessName(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->processName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusage(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->usage:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;
    .registers 2

    .line 289
    new-instance v0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem;-><init>(Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;)V

    return-object v0
.end method

.method public pid(I)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 279
    iput p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->pid:I

    .line 280
    return-object p0
.end method

.method public processName(Ljava/lang/String;)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->processName:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public uid(I)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 274
    iput p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->uid:I

    .line 275
    return-object p0
.end method

.method public usage(J)Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 284
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemProcessUsageStats$ProcessUsageHistoryItem$Builder;->usage:J

    .line 285
    return-object p0
.end method
