.class public Landroid/net/LowLatencyModeManager$LatencyResult;
.super Ljava/lang/Object;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LowLatencyModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatencyResult"
.end annotation


# instance fields
.field private mDlLevel:I

.field private mExtension:Z

.field private mPrioDefault:Z

.field private mUlLevel:I


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 5
    .param p1, "ulevel"    # I
    .param p2, "dlevel"    # I
    .param p3, "prio"    # Z
    .param p4, "ext"    # Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mUlLevel:I

    .line 140
    iput p2, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mDlLevel:I

    .line 141
    iput-boolean p3, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mPrioDefault:Z

    .line 142
    iput-boolean p4, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mExtension:Z

    .line 143
    return-void
.end method


# virtual methods
.method public getDlLevel()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mDlLevel:I

    return v0
.end method

.method public getExtension()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mExtension:Z

    return v0
.end method

.method public getPrioDefault()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mPrioDefault:Z

    return v0
.end method

.method public getUlLevel()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/net/LowLatencyModeManager$LatencyResult;->mUlLevel:I

    return v0
.end method
