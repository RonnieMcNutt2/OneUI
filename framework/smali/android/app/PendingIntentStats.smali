.class public Landroid/app/PendingIntentStats;
.super Ljava/lang/Object;
.source "PendingIntentStats.java"


# instance fields
.field public final count:I

.field public final sizeKb:I

.field public final uid:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "count"    # I
    .param p3, "sizeKb"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/app/PendingIntentStats;->uid:I

    .line 30
    iput p2, p0, Landroid/app/PendingIntentStats;->count:I

    .line 31
    iput p3, p0, Landroid/app/PendingIntentStats;->sizeKb:I

    .line 32
    return-void
.end method
