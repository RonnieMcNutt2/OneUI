.class public final Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SparseRectFArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SparseRectFArrayBuilder"
.end annotation


# static fields
.field private static INITIAL_SIZE:I


# instance fields
.field private mCoordinates:[F

.field private mCount:I

.field private mFlagsArray:[I

.field private mKeys:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCoordinates(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCount(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlagsArray(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeys(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 223
    const/16 v0, 0x10

    sput v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 221
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 222
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    return-void
.end method

.method private checkIndex(I)V
    .registers 4
    .param p1, "key"    # I

    .line 150
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    if-nez v0, :cond_5

    .line 151
    return-void

    .line 153
    :cond_5
    iget-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-ge v0, p1, :cond_e

    .line 156
    return-void

    .line 154
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be greater than all existing keys."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureBufferSize()V
    .registers 8

    .line 162
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    if-nez v0, :cond_a

    .line 163
    sget v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 165
    :cond_a
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    if-nez v0, :cond_16

    .line 166
    sget v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 168
    :cond_16
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    if-nez v0, :cond_20

    .line 169
    sget v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 171
    :cond_20
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    add-int/lit8 v1, v0, 0x1

    .line 172
    .local v1, "requiredIndexArraySize":I
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    array-length v3, v2

    const/4 v4, 0x0

    if-gt v3, v1, :cond_33

    .line 173
    mul-int/lit8 v3, v1, 0x2

    new-array v3, v3, [I

    .line 174
    .local v3, "newArray":[I
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iput-object v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 177
    .end local v3    # "newArray":[I
    :cond_33
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x4

    .line 178
    .local v2, "requiredCoordinatesArraySize":I
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    array-length v5, v3

    if-gt v5, v2, :cond_49

    .line 179
    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [F

    .line 180
    .local v5, "newArray":[F
    mul-int/lit8 v0, v0, 0x4

    invoke-static {v3, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 183
    .end local v5    # "newArray":[F
    :cond_49
    move v0, v1

    .line 184
    .local v0, "requiredFlagsArraySize":I
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    array-length v5, v3

    if-gt v5, v0, :cond_5a

    .line 185
    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [I

    .line 186
    .local v5, "newArray":[I
    iget v6, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    invoke-static {v3, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 189
    .end local v5    # "newArray":[I
    :cond_5a
    return-void
.end method


# virtual methods
.method public append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .registers 11
    .param p1, "key"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "flags"    # I

    .line 206
    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->checkIndex(I)V

    .line 207
    invoke-direct {p0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->ensureBufferSize()V

    .line 208
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    mul-int/lit8 v1, v0, 0x4

    .line 209
    .local v1, "baseCoordinatesIndex":I
    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    add-int/lit8 v3, v1, 0x0

    aput p2, v2, v3

    .line 210
    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 211
    add-int/lit8 v3, v1, 0x2

    aput p4, v2, v3

    .line 212
    add-int/lit8 v3, v1, 0x3

    aput p5, v2, v3

    .line 213
    iget v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 214
    .local v2, "flagsIndex":I
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    aput p6, v3, v2

    .line 215
    iget-object v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    aput p1, v3, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 217
    return-object p0
.end method

.method public build()Landroid/view/inputmethod/SparseRectFArray;
    .registers 3

    .line 233
    new-instance v0, Landroid/view/inputmethod/SparseRectFArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray-IA;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 226
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public reset()V
    .registers 2

    .line 237
    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    if-nez v0, :cond_b

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    .line 239
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    .line 240
    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    .line 242
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    .line 243
    return-void
.end method
