.class public Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I


# direct methods
.method static bridge synthetic -$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return p0
.end method

.method protected constructor <init>(IIIILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p6, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    .line 1241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1243
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1244
    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1245
    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1246
    iput p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1247
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 1248
    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 1250
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 1251
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1252
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1253
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 1254
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;

    .line 1188
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1189
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    .line 1224
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1226
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1227
    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1228
    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1229
    iput p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1230
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 1231
    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 1233
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 1234
    invoke-virtual {p0, p5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1235
    invoke-virtual {p0, p6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1236
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->coord:I

    .line 1237
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 14
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;

    .line 1128
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1129
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;

    .line 1156
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1157
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .registers 11

    .line 1258
    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
    .registers 13
    .param p1, "points"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 1341
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    .line 1342
    .local v0, "FE_LONGS":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    filled-new-array {v1}, [I

    move-result-object v1

    goto :goto_1d

    :cond_13
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    :goto_1d
    move-object v6, v1

    .line 1344
    .local v6, "ks":[I
    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [J

    .line 1346
    .local v7, "table":[J
    const/4 v1, 0x0

    .line 1347
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, p3, :cond_47

    .line 1349
    add-int v3, p2, v2

    aget-object v3, p1, v3

    .line 1350
    .local v3, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v4, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v1, v0

    .line 1351
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v4, v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v1, v0

    .line 1347
    .end local v3    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1355
    .end local v1    # "pos":I
    .end local v2    # "i":I
    :cond_47
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V

    return-object v8
.end method

.method protected createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .line 1276
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1278
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object v0

    .line 1281
    :cond_c
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createDefaultMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1296
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1301
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 9
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 1291
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public getFieldSize()I
    .registers 2

    .line 1286
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 1306
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .registers 2

    .line 1326
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .registers 2

    .line 1331
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .registers 2

    .line 1336
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .registers 2

    .line 1311
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public isTrinomial()Z
    .registers 2

    .line 1321
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .registers 3
    .param p1, "coord"    # I

    .line 1263
    sparse-switch p1, :sswitch_data_8

    .line 1270
    const/4 v0, 0x0

    return v0

    .line 1268
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_5
        0x6 -> :sswitch_5
    .end sparse-switch
.end method
