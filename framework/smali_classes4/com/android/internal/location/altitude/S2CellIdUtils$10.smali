.class Lcom/android/internal/location/altitude/S2CellIdUtils$10;
.super Ljava/lang/Object;
.source "S2CellIdUtils.java"

# interfaces
.implements Lcom/android/internal/location/altitude/S2CellIdUtils$XyzTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/location/altitude/S2CellIdUtils;->createXyzTransforms()[Lcom/android/internal/location/altitude/S2CellIdUtils$XyzTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uvToX(DD)D
    .registers 7
    .param p1, "u"    # D
    .param p3, "v"    # D

    .line 565
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public uvToY(DD)D
    .registers 7
    .param p1, "u"    # D
    .param p3, "v"    # D

    .line 570
    neg-double v0, p3

    return-wide v0
.end method

.method public uvToZ(DD)D
    .registers 7
    .param p1, "u"    # D
    .param p3, "v"    # D

    .line 575
    neg-double v0, p1

    return-wide v0
.end method
