.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2224
    return-void
.end method


# virtual methods
.method public collect()Z
    .registers 2

    .line 2241
    const/4 v0, 0x0

    return v0
.end method

.method public globalMethodInvocations()I
    .registers 2

    .line 2257
    const/4 v0, 0x0

    return v0
.end method

.method public globalTotal()I
    .registers 2

    .line 2249
    const/4 v0, 0x0

    return v0
.end method

.method public resetAndStart()Z
    .registers 2

    .line 2233
    const/4 v0, 0x0

    return v0
.end method
