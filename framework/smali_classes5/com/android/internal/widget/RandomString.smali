.class Lcom/android/internal/widget/RandomString;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rand(II)I
    .registers 6
    .param p0, "lo"    # I
    .param p1, "hi"    # I

    .line 3266
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 3267
    .local v0, "rn":Ljava/util/Random;
    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    .line 3268
    .local v1, "n":I
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 3269
    .local v2, "i":I
    if-gez v2, :cond_10

    .line 3270
    neg-int v2, v2

    .line 3271
    :cond_10
    add-int v3, p0, v2

    return v3
.end method

.method public static randomstring()Ljava/lang/String;
    .registers 2

    .line 3280
    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/widget/RandomString;->randomstring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomstring(II)Ljava/lang/String;
    .registers 7
    .param p0, "lo"    # I
    .param p1, "hi"    # I

    .line 3253
    invoke-static {p0, p1}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v0

    .line 3254
    .local v0, "n":I
    new-array v1, v0, [B

    .line 3255
    .local v1, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_2e

    .line 3256
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_20

    .line 3257
    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_2b

    .line 3259
    :cond_20
    const/16 v3, 0x61

    const/16 v4, 0x7a

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3255
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3262
    .end local v2    # "i":I
    :cond_2e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method
