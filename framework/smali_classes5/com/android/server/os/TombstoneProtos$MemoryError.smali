.class public final Lcom/android/server/os/TombstoneProtos$MemoryError;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemoryError"
.end annotation


# static fields
.field public static final BUFFER_OVERFLOW:I = 0x4

.field public static final BUFFER_UNDERFLOW:I = 0x5

.field public static final DOUBLE_FREE:I = 0x2

.field public static final GWP_ASAN:I = 0x0

.field public static final HEAP:J = 0x10b00000003L

.field public static final INVALID_FREE:I = 0x3

.field public static final SCUDO:I = 0x1

.field public static final TOOL:J = 0x10e00000001L

.field public static final TYPE:J = 0x10e00000002L

.field public static final UNKNOWN:I = 0x0

.field public static final USE_AFTER_FREE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 142
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$MemoryError;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
