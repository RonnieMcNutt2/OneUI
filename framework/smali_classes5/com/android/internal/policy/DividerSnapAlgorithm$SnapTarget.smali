.class public Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DividerSnapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapTarget"
.end annotation


# static fields
.field public static final FLAG_DISMISS_END:I = 0x2

.field public static final FLAG_DISMISS_START:I = 0x1

.field public static final FLAG_NONE:I


# instance fields
.field private final distanceMultiplier:F

.field public final flag:I

.field public isMiddleTarget:Z

.field public final position:I

.field public final taskPosition:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdistanceMultiplier(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    return p0
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "flag"    # I

    .line 597
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    .line 598
    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "taskPosition"    # I
    .param p3, "flag"    # I
    .param p4, "distanceMultiplier"    # F

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 602
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    .line 603
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    .line 604
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    .line 605
    return-void
.end method
