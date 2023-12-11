.class public final Lcom/android/server/os/TombstoneProtos$LogMessage;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogMessage"
.end annotation


# static fields
.field public static final MESSAGE:J = 0x10900000006L

.field public static final PID:J = 0x10d00000002L

.field public static final PRIORITY:J = 0x10d00000004L

.field public static final TAG:J = 0x10900000005L

.field public static final TID:J = 0x10d00000003L

.field public static final TIMESTAMP:J = 0x10900000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 339
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$LogMessage;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
