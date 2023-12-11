.class public Landroid/text/SegmentFinder$PrescribedSegmentFinder;
.super Landroid/text/SegmentFinder;
.source "SegmentFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/SegmentFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrescribedSegmentFinder"
.end annotation


# instance fields
.field private final mSegments:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2
    .param p1, "segments"    # [I

    .line 90
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 91
    invoke-static {p1}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->checkSegmentsValid([I)V

    .line 92
    iput-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    .line 93
    return-void
.end method

.method private static checkSegmentsValid([I)V
    .registers 5
    .param p0, "segments"    # [I

    .line 197
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string/jumbo v1, "the length of segments must be even"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 200
    array-length v0, p0

    if-nez v0, :cond_15

    return-void

    .line 201
    :cond_15
    const/high16 v0, -0x80000000

    .line 202
    .local v0, "lastSegmentEnd":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_18
    array-length v2, p0

    if-ge v1, v2, :cond_40

    .line 203
    aget v2, p0, v1

    if-lt v2, v0, :cond_37

    .line 206
    aget v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    if-ge v2, v3, :cond_2e

    .line 209
    add-int/lit8 v2, v1, 0x1

    aget v0, p0, v2

    .line 202
    add-int/lit8 v1, v1, 0x2

    goto :goto_18

    .line 207
    :cond_2e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "the segment range can\'t be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "segments can\'t overlap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    .end local v1    # "index":I
    :cond_40
    return-void
.end method

.method private findNext(IZ)I
    .registers 10
    .param p1, "offset"    # I
    .param p2, "isStart"    # Z

    .line 120
    const/4 v0, -0x1

    if-gez p1, :cond_4

    return v0

    .line 121
    :cond_4
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_52

    array-length v2, v1

    sub-int/2addr v2, v3

    aget v2, v1, v2

    if-le p1, v2, :cond_11

    goto :goto_52

    .line 123
    :cond_11
    const/4 v2, 0x0

    aget v4, v1, v2

    if-ge p1, v4, :cond_1c

    .line 124
    if-eqz p2, :cond_19

    goto :goto_1b

    :cond_19
    aget v4, v1, v3

    :goto_1b
    return v4

    .line 127
    :cond_1c
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    .line 128
    .local v1, "index":I
    if-ltz v1, :cond_33

    .line 132
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v6, v5

    if-ge v4, v6, :cond_31

    add-int/lit8 v4, v1, 0x1

    aget v4, v5, v4

    if-ne v4, p1, :cond_31

    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 136
    :cond_31
    add-int/2addr v1, v3

    goto :goto_36

    .line 140
    :cond_33
    add-int/lit8 v4, v1, 0x1

    neg-int v1, v4

    .line 142
    :goto_36
    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v5, v4

    if-lt v1, v5, :cond_3c

    return v0

    .line 151
    :cond_3c
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_41

    goto :goto_42

    :cond_41
    move v3, v2

    :goto_42
    move v2, v3

    .line 152
    .local v2, "indexIsStart":Z
    if-eq p2, v2, :cond_4f

    .line 153
    add-int/lit8 v3, v1, 0x1

    array-length v5, v4

    if-ge v3, v5, :cond_4e

    add-int/lit8 v0, v1, 0x1

    aget v0, v4, v0

    :cond_4e
    return v0

    .line 155
    :cond_4f
    aget v0, v4, v1

    return v0

    .line 121
    .end local v1    # "index":I
    .end local v2    # "indexIsStart":Z
    :cond_52
    :goto_52
    return v0
.end method

.method private findPrevious(IZ)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "isStart"    # Z

    .line 159
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_52

    const/4 v1, 0x0

    aget v4, v0, v1

    if-ge p1, v4, :cond_d

    goto :goto_52

    .line 161
    :cond_d
    array-length v4, v0

    sub-int/2addr v4, v3

    aget v4, v0, v4

    if-le p1, v4, :cond_1f

    .line 162
    array-length v1, v0

    if-eqz p2, :cond_1b

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    goto :goto_1e

    :cond_1b
    sub-int/2addr v1, v3

    aget v0, v0, v1

    :goto_1e
    return v0

    .line 165
    :cond_1f
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 166
    .local v0, "index":I
    if-ltz v0, :cond_33

    .line 170
    if-lez v0, :cond_31

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_31

    .line 171
    add-int/lit8 v0, v0, -0x1

    .line 174
    :cond_31
    add-int/2addr v0, v2

    goto :goto_38

    .line 178
    :cond_33
    add-int/lit8 v4, v0, 0x1

    neg-int v4, v4

    add-int/lit8 v0, v4, -0x1

    .line 180
    :goto_38
    if-gez v0, :cond_3b

    return v2

    .line 189
    :cond_3b
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_40

    goto :goto_41

    :cond_40
    move v3, v1

    :goto_41
    move v1, v3

    .line 190
    .local v1, "indexIsStart":Z
    if-eq p2, v1, :cond_4d

    .line 191
    if-lez v0, :cond_4c

    iget-object v2, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    :cond_4c
    return v2

    .line 193
    :cond_4d
    iget-object v2, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget v2, v2, v0

    return v2

    .line 159
    .end local v0    # "index":I
    .end local v1    # "indexIsStart":Z
    :cond_52
    :goto_52
    return v2
.end method


# virtual methods
.method public nextEndBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result v0

    return v0
.end method

.method public nextStartBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result v0

    return v0
.end method

.method public previousEndBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result v0

    return v0
.end method

.method public previousStartBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result v0

    return v0
.end method
