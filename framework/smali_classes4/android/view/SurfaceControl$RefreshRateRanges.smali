.class public final Landroid/view/SurfaceControl$RefreshRateRanges;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRanges"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RefreshRateRanges"


# instance fields
.field public final physical:Landroid/view/SurfaceControl$RefreshRateRange;

.field public final render:Landroid/view/SurfaceControl$RefreshRateRange;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2059
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2060
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2061
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V
    .registers 6
    .param p1, "physical"    # Landroid/view/SurfaceControl$RefreshRateRange;
    .param p2, "render"    # Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2064
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, p1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v2, p1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    iput-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2065
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, p2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v2, p2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    iput-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2066
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl$RefreshRateRanges;)V
    .registers 4
    .param p1, "other"    # Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2100
    iget-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v1, p1, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 2101
    iget-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v1, p1, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$RefreshRateRange;->copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 2102
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 2073
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2074
    return v0

    .line 2077
    :cond_4
    instance-of v1, p1, Landroid/view/SurfaceControl$RefreshRateRanges;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2078
    return v2

    .line 2081
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 2082
    .local v1, "rates":Landroid/view/SurfaceControl$RefreshRateRanges;
    iget-object v3, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v4, v1, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v4, v1, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 2088
    iget-object v0, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v1, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "physical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " render:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
