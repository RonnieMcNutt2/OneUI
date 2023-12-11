.class public final Lcom/android/internal/os/SelectedProcessCpuThreadReader;
.super Ljava/lang/Object;
.source "SelectedProcessCpuThreadReader.java"


# instance fields
.field private final mCmdline:[Ljava/lang/String;

.field private mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field private mPid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "cmdline"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mCmdline:[Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mCmdline:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 45
    .local v0, "pids":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    goto :goto_28

    .line 48
    :cond_e
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 49
    .local v2, "pid":I
    iget v3, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    if-ne v3, v2, :cond_1c

    .line 50
    iget-object v1, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v1

    return-object v1

    .line 52
    :cond_1c
    iput v2, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    .line 53
    invoke-static {v2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 54
    invoke-virtual {v3}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingThreadCpuTimes()V

    .line 55
    return-object v1

    .line 46
    .end local v2    # "pid":I
    :cond_28
    :goto_28
    return-object v1
.end method
