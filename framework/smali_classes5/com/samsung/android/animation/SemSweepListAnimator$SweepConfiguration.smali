.class public Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;
.super Ljava/lang/Object;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemSweepListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SweepConfiguration"
.end annotation


# instance fields
.field public allowLeftToRight:Z

.field public allowRightToLeft:Z

.field public backgroundColorLeftToRight:I

.field public backgroundColorRightToLeft:I

.field public childIdForLocationHint:I

.field public drawableLeftToRight:Landroid/graphics/drawable/Drawable;

.field public drawablePadding:I

.field public drawableRightToLeft:Landroid/graphics/drawable/Drawable;

.field public textLeftToRight:Ljava/lang/String;

.field public textRightToLeft:Ljava/lang/String;

.field public textSize:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 711
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;-><init>(ZZI)V

    .line 712
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4
    .param p1, "allowLeftToRight"    # Z
    .param p2, "allowRightToLeft"    # Z

    .line 703
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;-><init>(ZZI)V

    .line 704
    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 4
    .param p1, "allowLeftToRight"    # Z
    .param p2, "allowRightToLeft"    # Z
    .param p3, "childIdForLocationHint"    # I

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-boolean p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    .line 691
    iput-boolean p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    .line 692
    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    .line 693
    return-void
.end method
