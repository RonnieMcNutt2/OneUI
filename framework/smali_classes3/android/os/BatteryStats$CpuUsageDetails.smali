.class public final Landroid/os/BatteryStats$CpuUsageDetails;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CpuUsageDetails"
.end annotation


# instance fields
.field public cpuBracketDescriptions:[Ljava/lang/String;

.field public cpuUsageMs:[J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1929
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/BatteryStats$CpuUsageDetails;->uid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1930
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    const/4 v1, 0x0

    .local v1, "bracket":I
    :goto_10
    iget-object v2, p0, Landroid/os/BatteryStats$CpuUsageDetails;->cpuUsageMs:[J

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 1932
    if-eqz v1, :cond_1c

    .line 1933
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    :cond_1c
    iget-object v2, p0, Landroid/os/BatteryStats$CpuUsageDetails;->cpuUsageMs:[J

    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1931
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1937
    .end local v1    # "bracket":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
