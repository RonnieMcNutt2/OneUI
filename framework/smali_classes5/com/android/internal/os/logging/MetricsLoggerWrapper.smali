.class public Lcom/android/internal/os/logging/MetricsLoggerWrapper;
.super Ljava/lang/Object;
.source "MetricsLoggerWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logAppOverlayEnter(ILjava/lang/String;ZIZ)V
    .registers 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changed"    # Z
    .param p3, "type"    # I
    .param p4, "usingAlertWindow"    # Z

    .line 30
    if-eqz p2, :cond_13

    .line 31
    const/16 v0, 0x7f6

    const/16 v1, 0x3b

    const/4 v2, 0x1

    if-eq p3, v0, :cond_d

    .line 32
    invoke-static {v1, p0, p1, v2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    goto :goto_13

    .line 34
    :cond_d
    if-nez p4, :cond_13

    .line 35
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    .line 39
    :cond_13
    :goto_13
    return-void
.end method

.method public static logAppOverlayExit(ILjava/lang/String;ZIZ)V
    .registers 8
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changed"    # Z
    .param p3, "type"    # I
    .param p4, "usingAlertWindow"    # Z

    .line 42
    if-eqz p2, :cond_14

    .line 43
    const/16 v0, 0x7f6

    const/4 v1, 0x2

    const/16 v2, 0x3b

    if-eq p3, v0, :cond_e

    .line 44
    const/4 v0, 0x1

    invoke-static {v2, p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    goto :goto_14

    .line 46
    :cond_e
    if-nez p4, :cond_14

    .line 47
    const/4 v0, 0x0

    invoke-static {v2, p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ZI)V

    .line 51
    :cond_14
    :goto_14
    return-void
.end method
