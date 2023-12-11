.class public final Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# static fields
.field private static final sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field final column:I

.field final row:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 206
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$Cell;->createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1, p2}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 224
    iput p1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 225
    iput p2, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 226
    return-void
.end method

.method private static checkRange(II)V
    .registers 4
    .param p0, "row"    # I
    .param p1, "column"    # I

    .line 242
    if-ltz p0, :cond_12

    const/4 v0, 0x2

    if-gt p0, v0, :cond_12

    .line 245
    if-ltz p1, :cond_a

    if-gt p1, v0, :cond_a

    .line 248
    return-void

    .line 246
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 6

    .line 209
    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 210
    .local v1, "res":[[Lcom/android/internal/widget/LockPatternView$Cell;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_22

    .line 211
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_11
    if-ge v3, v0, :cond_1f

    .line 212
    aget-object v4, v1, v2

    new-instance v5, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(II)V

    aput-object v5, v4, v3

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 210
    .end local v3    # "j":I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 215
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method

.method public static of(II)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 3
    .param p0, "row"    # I
    .param p1, "column"    # I

    .line 237
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 238
    sget-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .line 233
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
