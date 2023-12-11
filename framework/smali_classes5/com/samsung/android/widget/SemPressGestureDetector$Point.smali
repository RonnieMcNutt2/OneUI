.class Lcom/samsung/android/widget/SemPressGestureDetector$Point;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemPressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    .line 105
    iput p2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    .line 106
    return-void
.end method
