.class public Landroid/app/ActivityThread$ReclaimerLog;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReclaimerLog"
.end annotation


# static fields
.field private static RECLAIMER_LOG_SUPPORT:Z

.field private static RECLAIMER_LOG_SUPPORT_CHECKED:Z

.field private static reclaimerLogPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7185
    const-string v0, "/proc/reclaimer_log"

    sput-object v0, Landroid/app/ActivityThread$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    .line 7186
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    .line 7187
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static reclaimer_log_supported()Z
    .registers 3

    .line 7190
    sget-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    if-nez v0, :cond_1e

    .line 7191
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->RECLAIMER_LOG_SUPPORT_CHECKED:Z

    .line 7192
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7193
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/app/ActivityThread$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7194
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 7195
    const/4 v2, 0x0

    sput-boolean v2, Landroid/app/ActivityThread$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    .line 7197
    :cond_1b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7199
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "f":Ljava/io/File;
    :cond_1e
    sget-boolean v0, Landroid/app/ActivityThread$ReclaimerLog;->RECLAIMER_LOG_SUPPORT:Z

    return v0
.end method

.method public static write(Ljava/lang/String;)Z
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 7224
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/app/ActivityThread$ReclaimerLog;->write(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "writeLogcat"    # Z

    .line 7203
    if-eqz p1, :cond_7

    .line 7204
    const-string v0, "UMR"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7206
    :cond_7
    invoke-static {}, Landroid/app/ActivityThread$ReclaimerLog;->reclaimer_log_supported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 7207
    return v1

    .line 7209
    :cond_f
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7211
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_13
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Landroid/app/ActivityThread$ReclaimerLog;->reclaimerLogPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 7212
    .local v2, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UMR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 7213
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 7214
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_3e
    .catchall {:try_start_13 .. :try_end_36} :catchall_3c

    .line 7219
    .end local v2    # "fw":Ljava/io/FileWriter;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7220
    nop

    .line 7221
    const/4 v1, 0x1

    return v1

    .line 7219
    :catchall_3c
    move-exception v1

    goto :goto_47

    .line 7215
    :catch_3e
    move-exception v2

    .line 7216
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3c

    .line 7217
    nop

    .line 7219
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7217
    return v1

    .line 7219
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7220
    throw v1
.end method
