.class public Lcom/android/internal/org/bouncycastle/util/Integers;
.super Ljava/lang/Object;
.source "Integers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static numberOfLeadingZeros(I)I
    .registers 2
    .param p0, "i"    # I

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    return v0
.end method

.method public static numberOfTrailingZeros(I)I
    .registers 2
    .param p0, "i"    # I

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    return v0
.end method

.method public static reverse(I)I
    .registers 2
    .param p0, "i"    # I

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    return v0
.end method

.method public static reverseBytes(I)I
    .registers 2
    .param p0, "i"    # I

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static rotateLeft(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    return v0
.end method

.method public static rotateRight(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    return v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .registers 2
    .param p0, "value"    # I

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
