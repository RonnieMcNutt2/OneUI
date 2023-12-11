.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# static fields
.field public static final LOGTAG:I = 0x80004

.field public static final VIEW_UNKNOWN:I

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 188
    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 194
    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 212
    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 200
    return-void
.end method

.method public static action(Landroid/metrics/LogMaker;)V
    .registers 2
    .param p0, "content"    # Landroid/metrics/LogMaker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 206
    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 49
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 51
    :cond_b
    sget-object v0, Lcom/android/internal/logging/MetricsLogger;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static hidden(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 168
    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 230
    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 182
    return-void
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 175
    return-void
.end method

.method public static visible(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-static {}, Lcom/android/internal/logging/MetricsLogger;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 162
    return-void
.end method


# virtual methods
.method public action(I)V
    .registers 4
    .param p1, "category"    # I

    .line 131
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 132
    return-void
.end method

.method public action(II)V
    .registers 5
    .param p1, "category"    # I
    .param p2, "value"    # I

    .line 138
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 139
    return-void
.end method

.method public action(ILjava/lang/String;)V
    .registers 5
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 152
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 153
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_f
    :goto_f
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 156
    return-void
.end method

.method public action(IZ)V
    .registers 5
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .line 145
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 146
    return-void
.end method

.method public count(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 72
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x323

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 73
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 75
    return-void
.end method

.method public hidden(I)V
    .registers 4
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 101
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 102
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_f
    :goto_f
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 105
    return-void
.end method

.method public histogram(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .line 80
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x324

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setCounterBucket(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 84
    return-void
.end method

.method protected saveLog(Landroid/metrics/LogMaker;)V
    .registers 3
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 55
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->serialize()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiMultiAction([Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public visibility(II)V
    .registers 4
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 125
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 126
    return-void
.end method

.method public visibility(IZ)V
    .registers 3
    .param p1, "category"    # I
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 112
    if-eqz p2, :cond_6

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    goto :goto_9

    .line 115
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 117
    :goto_9
    return-void
.end method

.method public visible(I)V
    .registers 4
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 92
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    .line 93
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_f
    :goto_f
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 96
    return-void
.end method

.method public write(Landroid/metrics/LogMaker;)V
    .registers 3
    .param p1, "content"    # Landroid/metrics/LogMaker;

    .line 64
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_a

    .line 65
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 67
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->saveLog(Landroid/metrics/LogMaker;)V

    .line 68
    return-void
.end method
