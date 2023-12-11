.class public final Lcom/android/internal/org/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final MAX_ITERATIONS:I = 0x3e8

.field private static final MAX_SMALL:I

.field public static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final THREE:Ljava/math/BigInteger;

.field public static final TWO:Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    .line 18
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    .line 278
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    .line 284
    const-wide/16 v0, 0x2e7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sput v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;[BII)V
    .registers 10
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 93
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 94
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-ne v1, p3, :cond_c

    .line 96
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-void

    .line 100
    :cond_c
    aget-byte v1, v0, v2

    if-nez v1, :cond_15

    array-length v1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_15

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    move v1, v3

    .line 101
    .local v1, "start":I
    array-length v3, v0

    sub-int/2addr v3, v1

    .line 103
    .local v3, "count":I
    if-gt v3, p3, :cond_28

    .line 108
    sub-int v4, p3, v3

    .line 109
    .local v4, "padLen":I
    add-int v5, p2, v4

    invoke-static {p1, p2, v5, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 110
    add-int v2, p2, v4

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-void

    .line 105
    .end local v4    # "padLen":I
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "standard length exceeded for value"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .registers 7
    .param p0, "length"    # I
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 59
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 60
    .local v0, "bytes":[B
    array-length v1, v0

    if-ne v1, p0, :cond_8

    .line 62
    return-object v0

    .line 65
    :cond_8
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_12

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    move v1, v3

    .line 66
    .local v1, "start":I
    :cond_12
    array-length v2, v0

    sub-int/2addr v2, v1

    .line 68
    .local v2, "count":I
    if-gt v2, p0, :cond_1e

    .line 73
    new-array v3, p0, [B

    .line 74
    .local v3, "tmp":[B
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-object v3

    .line 70
    .end local v3    # "tmp":[B
    :cond_1e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "standard length exceeded for value"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 6
    .param p0, "value"    # Ljava/math/BigInteger;

    .line 33
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 35
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_16

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    .line 37
    array-length v2, v0

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 39
    .local v2, "tmp":[B
    array-length v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    return-object v2

    .line 44
    .end local v2    # "tmp":[B
    :cond_16
    return-object v0
.end method

.method private static createRandom(ILjava/security/SecureRandom;)[B
    .registers 8
    .param p0, "bitLength"    # I
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1b

    .line 340
    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 342
    .local v0, "nBytes":I
    new-array v1, v0, [B

    .line 344
    .local v1, "rv":[B
    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 347
    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v2, p0

    .line 348
    .local v2, "xBits":I
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    const/16 v5, 0xff

    ushr-int/2addr v5, v2

    int-to-byte v5, v5

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 350
    return-object v1

    .line 337
    .end local v0    # "nBytes":I
    .end local v1    # "rv":[B
    .end local v2    # "xBits":I
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5
    .param p0, "bitLength"    # I
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 274
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 7
    .param p0, "min"    # Ljava/math/BigInteger;
    .param p1, "max"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 126
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 127
    .local v0, "cmp":I
    if-ltz v0, :cond_11

    .line 129
    if-gtz v0, :cond_9

    .line 134
    return-object p0

    .line 131
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'min\' may not be greater than \'max\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_11
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2c

    .line 139
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 142
    :cond_2c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_49

    .line 144
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 145
    .local v2, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_46

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_46

    .line 147
    return-object v2

    .line 142
    .end local v2    # "x":Ljava/math/BigInteger;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 152
    .end local v1    # "i":I
    :cond_49
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public static createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "bitLength"    # I
    .param p1, "certainty"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 295
    const/4 v0, 0x2

    if-lt p0, v0, :cond_54

    .line 302
    if-ne p0, v0, :cond_11

    .line 304
    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    if-gez v0, :cond_e

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->THREE:Ljava/math/BigInteger;

    :goto_10
    return-object v0

    .line 309
    :cond_11
    invoke-static {p0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandom(ILjava/security/SecureRandom;)[B

    move-result-object v0

    .line 311
    .local v0, "base":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, p0

    .line 312
    .local v1, "xBits":I
    rsub-int/lit8 v2, v1, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-byte v2, v2

    .line 315
    .local v2, "lead":B
    const/4 v4, 0x0

    aget-byte v5, v0, v4

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 316
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v5, v0, v4

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 318
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v3, v4

    .line 319
    .local v3, "rv":Ljava/math/BigInteger;
    sget v4, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->MAX_SMALL:I

    if-le p0, v4, :cond_4d

    .line 321
    :goto_38
    sget-object v4, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 323
    sget-object v4, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_38

    .line 327
    .end local v0    # "base":[B
    .end local v1    # "xBits":I
    .end local v2    # "lead":B
    :cond_4d
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 329
    return-object v3

    .line 297
    .end local v3    # "rv":Ljava/math/BigInteger;
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength < 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromUnsignedByteArray([B)Ljava/math/BigInteger;
    .registers 3
    .param p0, "buf"    # [B

    .line 157
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .line 162
    move-object v0, p0

    .line 163
    .local v0, "mag":[B
    if-nez p1, :cond_6

    array-length v1, p0

    if-eq p2, v1, :cond_c

    .line 165
    :cond_6
    new-array v0, p2, [B

    .line 166
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static getUnsignedByteLength(Ljava/math/BigInteger;)I
    .registers 2
    .param p0, "n"    # Ljava/math/BigInteger;

    .line 257
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 259
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_a
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static intValueExact(Ljava/math/BigInteger;)I
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 174
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_d

    .line 179
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 176
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longValueExact(Ljava/math/BigInteger;)J
    .registers 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_d

    .line 190
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 187
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "M"    # Ljava/math/BigInteger;
    .param p1, "X"    # Ljava/math/BigInteger;

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 199
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 203
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 205
    :cond_1a
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 208
    :cond_1e
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 209
    .local v0, "bits":I
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    .line 210
    .local v1, "m":[I
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 211
    .local v2, "x":[I
    array-length v3, v1

    .line 212
    .local v3, "len":I
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 213
    .local v4, "z":[I
    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v5

    if-eqz v5, :cond_3a

    .line 217
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5

    .line 215
    :cond_3a
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "BigInteger not invertible."

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    .end local v0    # "bits":I
    .end local v1    # "m":[I
    .end local v2    # "x":[I
    .end local v3    # "len":I
    .end local v4    # "z":[I
    :cond_42
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'M\' must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "M"    # Ljava/math/BigInteger;
    .param p1, "X"    # Ljava/math/BigInteger;

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 226
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 230
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 232
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 234
    :cond_19
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_25

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_29

    .line 236
    :cond_25
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 238
    :cond_29
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 240
    return-object v0

    .line 243
    :cond_30
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 244
    .local v0, "bits":I
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    .line 245
    .local v1, "m":[I
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 246
    .local v2, "x":[I
    array-length v3, v1

    .line 247
    .local v3, "len":I
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 248
    .local v4, "z":[I
    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 252
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5

    .line 250
    :cond_4c
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "BigInteger not invertible."

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    .end local v0    # "bits":I
    .end local v1    # "m":[I
    .end local v2    # "x":[I
    .end local v3    # "len":I
    .end local v4    # "z":[I
    :cond_54
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'M\' must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
