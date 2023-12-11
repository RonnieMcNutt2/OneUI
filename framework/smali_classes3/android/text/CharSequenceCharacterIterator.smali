.class public Landroid/text/CharSequenceCharacterIterator;
.super Ljava/lang/Object;
.source "CharSequenceCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private final mBeginIndex:I

.field private final mCharSeq:Ljava/lang/CharSequence;

.field private final mEndIndex:I

.field private mIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    .line 38
    iput p2, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iput p2, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    .line 39
    iput p3, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    .line 40
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 103
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 104
    :catch_5
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public current()C
    .registers 3

    .line 58
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-ne v0, v1, :cond_a

    const v0, 0xffff

    goto :goto_10

    :cond_a
    iget-object v1, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_10
    return v0
.end method

.method public first()C
    .registers 2

    .line 43
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 44
    invoke-virtual {p0}, Landroid/text/CharSequenceCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    return v0
.end method

.method public last()C
    .registers 3

    .line 48
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-ne v0, v1, :cond_c

    .line 49
    iput v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 50
    const v0, 0xffff

    return v0

    .line 52
    :cond_c
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 53
    iget-object v0, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public next()C
    .registers 3

    .line 62
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 63
    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-lt v0, v1, :cond_10

    .line 64
    iput v1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 65
    const v0, 0xffff

    return v0

    .line 67
    :cond_10
    iget-object v1, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public previous()C
    .registers 3

    .line 72
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    iget v1, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    if-gt v0, v1, :cond_a

    .line 73
    const v0, 0xffff

    return v0

    .line 75
    :cond_a
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 76
    iget-object v1, p0, Landroid/text/CharSequenceCharacterIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public setIndex(I)C
    .registers 4
    .param p1, "position"    # I

    .line 81
    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mBeginIndex:I

    if-gt v0, p1, :cond_f

    iget v0, p0, Landroid/text/CharSequenceCharacterIterator;->mEndIndex:I

    if-gt p1, v0, :cond_f

    .line 82
    iput p1, p0, Landroid/text/CharSequenceCharacterIterator;->mIndex:I

    .line 83
    invoke-virtual {p0}, Landroid/text/CharSequenceCharacterIterator;->current()C

    move-result v0

    return v0

    .line 85
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
