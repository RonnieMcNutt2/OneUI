.class public final Lcom/android/server/os/TombstoneProtos$FD;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FD"
.end annotation


# static fields
.field public static final FD:J = 0x10500000001L

.field public static final OWNER:J = 0x10900000003L

.field public static final PATH:J = 0x10900000002L

.field public static final TAG:J = 0x10400000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 311
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$FD;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
