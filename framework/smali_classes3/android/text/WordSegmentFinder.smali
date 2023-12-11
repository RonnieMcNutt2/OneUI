.class public Landroid/text/WordSegmentFinder;
.super Landroid/text/SegmentFinder;
.source "WordSegmentFinder.java"


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field private final mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 48
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    .line 50
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p2}, Landroid/text/method/WordIterator;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    .line 51
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/method/WordIterator;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "wordIterator"    # Landroid/text/method/WordIterator;

    .line 62
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    .line 64
    iput-object p2, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    .line 65
    return-void
.end method


# virtual methods
.method public nextEndBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 105
    move v0, p1

    .line 107
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 108
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 109
    return v1

    .line 111
    :cond_b
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    return v0
.end method

.method public nextStartBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 93
    move v0, p1

    .line 95
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 96
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    iget-object v2, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_13

    goto :goto_20

    .line 99
    :cond_13
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    return v0

    .line 97
    :cond_20
    :goto_20
    return v1
.end method

.method public previousEndBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 81
    move v0, p1

    .line 83
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 84
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    if-nez v0, :cond_d

    goto :goto_1c

    .line 87
    :cond_d
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    return v0

    .line 85
    :cond_1c
    :goto_1c
    return v1
.end method

.method public previousStartBoundary(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 69
    move v0, p1

    .line 71
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 72
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 73
    return v1

    .line 75
    :cond_b
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    return v0
.end method
