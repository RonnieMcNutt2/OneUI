.class public final Lcom/android/server/os/TombstoneProtos$Signal;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Signal"
.end annotation


# static fields
.field public static final CODE:J = 0x10500000003L

.field public static final CODE_NAME:J = 0x10900000004L

.field public static final FAULT_ADDRESS:J = 0x10400000009L

.field public static final FAULT_ADJACENT_METADATA:J = 0x10b0000000aL

.field public static final HAS_FAULT_ADDRESS:J = 0x10800000008L

.field public static final HAS_SENDER:J = 0x10800000005L

.field public static final NAME:J = 0x10900000002L

.field public static final NUMBER:J = 0x10500000001L

.field public static final SENDER_PID:J = 0x10500000007L

.field public static final SENDER_UID:J = 0x10500000006L


# instance fields
.field final synthetic this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 84
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$Signal;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
