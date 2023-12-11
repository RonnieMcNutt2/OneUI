.class public Lcom/android/internal/os/BinderStats$BinderStatsUnit;
.super Ljava/lang/Object;
.source "BinderStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderStatsUnit"
.end annotation


# instance fields
.field public binderClass:Ljava/lang/String;

.field public callCount:J

.field public callingUid:I

.field public cpuTimeMicros:J

.field public methodName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public recordedCallCount:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
