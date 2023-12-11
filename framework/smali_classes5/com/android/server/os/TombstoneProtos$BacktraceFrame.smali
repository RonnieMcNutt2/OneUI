.class public final Lcom/android/server/os/TombstoneProtos$BacktraceFrame;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BacktraceFrame"
.end annotation


# static fields
.field public static final BUILD_ID:J = 0x10900000008L

.field public static final FILE_MAP_OFFSET:J = 0x10400000007L

.field public static final FILE_NAME:J = 0x10900000006L

.field public static final FUNCTION_NAME:J = 0x10900000004L

.field public static final FUNCTION_OFFSET:J = 0x10400000005L

.field public static final PC:J = 0x10400000002L

.field public static final REL_PC:J = 0x10400000001L

.field public static final SP:J = 0x10400000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 222
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$BacktraceFrame;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
