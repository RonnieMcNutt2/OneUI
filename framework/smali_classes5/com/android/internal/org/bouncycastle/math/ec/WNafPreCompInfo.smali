.class public Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected confWidth:I

.field protected preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field protected preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field volatile promotionCountdown:I

.field protected twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 25
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 31
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 33
    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method decrementPromotionCountdown()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 38
    .local v0, "t":I
    if-lez v0, :cond_8

    .line 40
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 42
    :cond_8
    return v0
.end method

.method public getConfWidth()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return v0
.end method

.method public getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method getPromotionCountdown()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return v0
.end method

.method public getTwice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return v0
.end method

.method public isPromoted()Z
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setConfWidth(I)V
    .registers 2
    .param p1, "confWidth"    # I

    .line 67
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    .line 68
    return-void
.end method

.method public setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "preComp"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 77
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 78
    return-void
.end method

.method public setPreCompNeg([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "preCompNeg"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 88
    return-void
.end method

.method setPromotionCountdown(I)V
    .registers 2
    .param p1, "promotionCountdown"    # I

    .line 52
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 53
    return-void
.end method

.method public setTwice(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 2
    .param p1, "twice"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 97
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 98
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 107
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    .line 108
    return-void
.end method
