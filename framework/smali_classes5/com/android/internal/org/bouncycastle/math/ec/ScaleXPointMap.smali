.class public Lcom/android/internal/org/bouncycastle/math/ec/ScaleXPointMap;
.super Ljava/lang/Object;
.source "ScaleXPointMap.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 2
    .param p1, "scale"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 14
    return-void
.end method


# virtual methods
.method public map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 18
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
