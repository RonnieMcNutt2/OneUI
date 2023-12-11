.class Landroid/text/TextUtils$StringWithRemovedChars;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringWithRemovedChars"
.end annotation


# instance fields
.field private final mOriginal:Ljava/lang/String;

.field private mRemovedChars:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "original"    # Ljava/lang/String;

    .line 2515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2516
    iput-object p1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    .line 2517
    return-void
.end method


# virtual methods
.method codePointAt(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 2581
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method length()I
    .registers 2

    .line 2574
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method removeAllCharAfter(I)V
    .registers 4
    .param p1, "firstRemoved"    # I

    .line 2546
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_11

    .line 2547
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 2550
    :cond_11
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(II)V

    .line 2551
    return-void
.end method

.method removeAllCharBefore(I)V
    .registers 4
    .param p1, "firstNonRemoved"    # I

    .line 2535
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_11

    .line 2536
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 2539
    :cond_11
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(II)V

    .line 2540
    return-void
.end method

.method removeRange(II)V
    .registers 5
    .param p1, "firstRemoved"    # I
    .param p2, "firstNonRemoved"    # I

    .line 2524
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_11

    .line 2525
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 2528
    :cond_11
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(II)V

    .line 2529
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2556
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_7

    .line 2557
    iget-object v0, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    return-object v0

    .line 2560
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2561
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 2562
    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2563
    iget-object v2, p0, Landroid/text/TextUtils$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2561
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2567
    .end local v1    # "i":I
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
