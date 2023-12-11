.class Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BinderCallsStats;->printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleCallStat"
.end annotation


# instance fields
.field public callCount:I

.field public cpuTimeMicros:J

.field public packageName:Ljava/lang/String;

.field public recordedCallCount:I

.field final synthetic this$0:Lcom/android/internal/os/BinderCallsStats;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/os/BinderCallsStats;

    .line 962
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->this$0:Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
