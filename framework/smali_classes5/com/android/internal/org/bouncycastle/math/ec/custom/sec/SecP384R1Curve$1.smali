.class Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP384R1Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

.field final synthetic val$len:I

.field final synthetic val$table:[I


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;I[I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    .line 106
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->-$$Nest$sfgetSECP384R1_AFFINE_ZS()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "index"    # I

    .line 114
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .local v1, "x":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 115
    .local v2, "y":[I
    const/4 v3, 0x0

    .line 117
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    if-ge v4, v5, :cond_39

    .line 119
    xor-int v5, v4, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 121
    .local v5, "MASK":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_17
    if-ge v6, v0, :cond_33

    .line 123
    aget v7, v1, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int v9, v3, v6

    aget v9, v8, v9

    and-int/2addr v9, v5

    xor-int/2addr v7, v9

    aput v7, v1, v6

    .line 124
    aget v7, v2, v6

    add-int/lit8 v9, v3, 0xc

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v2, v6

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 127
    .end local v6    # "j":I
    :cond_33
    nop

    .end local v5    # "MASK":I
    add-int/lit8 v3, v3, 0x18

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 130
    .end local v4    # "i":I
    :cond_39
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "index"    # I

    .line 135
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .local v1, "x":[I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 136
    .local v2, "y":[I
    mul-int/lit8 v3, p1, 0xc

    mul-int/lit8 v3, v3, 0x2

    .line 138
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_f
    if-ge v4, v0, :cond_23

    .line 140
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int v6, v3, v4

    aget v6, v5, v6

    aput v6, v1, v4

    .line 141
    add-int/lit8 v6, v3, 0xc

    add-int/2addr v6, v4

    aget v5, v5, v6

    aput v5, v2, v4

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 144
    .end local v4    # "j":I
    :cond_23
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
