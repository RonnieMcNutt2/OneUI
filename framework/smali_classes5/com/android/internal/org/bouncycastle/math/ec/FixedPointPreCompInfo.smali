.class public Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;
.super Ljava/lang/Object;
.source "FixedPointPreCompInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected lookupTable:Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

.field protected offset:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 15
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->lookupTable:Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method public getLookupTable()Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->lookupTable:Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    return-object v0
.end method

.method public getOffset()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    return v0
.end method

.method public setLookupTable(Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;)V
    .registers 2
    .param p1, "lookupTable"    # Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    .line 31
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->lookupTable:Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    .line 32
    return-void
.end method

.method public setOffset(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "offset"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 41
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 42
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 51
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    .line 52
    return-void
.end method
