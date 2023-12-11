.class public final Lcom/android/internal/os/BinderLatencyProto$ApiStats;
.super Ljava/lang/Object;
.source "BinderLatencyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ApiStats"
.end annotation


# static fields
.field public static final BUCKETS:J = 0x20500000003L

.field public static final BUCKET_COUNT:J = 0x10500000004L

.field public static final DIMS:J = 0x10b00000001L

.field public static final FIRST_BUCKET_INDEX:J = 0x10500000002L

.field public static final FIRST_BUCKET_SIZE:J = 0x10500000005L

.field public static final SCALE_FACTOR:J = 0x10200000006L


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BinderLatencyProto;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderLatencyProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/os/BinderLatencyProto;

    .line 51
    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyProto$ApiStats;->this$0:Lcom/android/internal/os/BinderLatencyProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
