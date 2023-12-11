.class public Lcom/android/internal/protolog/common/ProtoLog;
.super Ljava/lang/Object;
.source "ProtoLog.java"


# static fields
.field public static REQUIRE_PROTOLOGTOOL:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 52
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_5

    .line 56
    return-void

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 112
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_5

    .line 116
    return-void

    .line 113
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 82
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_5

    .line 86
    return-void

    .line 83
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 67
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_5

    .line 71
    return-void

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 97
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_5

    .line 101
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p1, "messageString"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 127
    sget-boolean v0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez v0, :cond_5

    .line 131
    return-void

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
