.class public final Landroid/view/textclassifier/TextClassifier$Utils;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utils"
.end annotation


# static fields
.field private static final WORD_ITERATOR:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 673
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassifier$Utils;->WORD_ITERATOR:Ljava/text/BreakIterator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "links"    # Landroid/view/textclassifier/TextLinks$Builder;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "entityType"    # Ljava/lang/String;

    .line 758
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 759
    .local v0, "spannable":Landroid/text/Spannable;
    invoke-static {p2}, Landroid/view/textclassifier/TextClassifier$Utils;->linkMask(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 760
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 761
    .local v1, "spans":[Landroid/text/style/URLSpan;
    array-length v2, v1

    :goto_1d
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 762
    .local v4, "urlSpan":Landroid/text/style/URLSpan;
    nop

    .line 763
    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 764
    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 765
    invoke-static {p2}, Landroid/view/textclassifier/TextClassifier$Utils;->entityScores(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 762
    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    .line 761
    .end local v4    # "urlSpan":Landroid/text/style/URLSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 769
    .end local v1    # "spans":[Landroid/text/style/URLSpan;
    :cond_34
    return-void
.end method

.method static checkArgument(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 681
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 682
    if-ltz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 683
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_1a

    move v2, v0

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 684
    if-le p2, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 685
    return-void
.end method

.method static checkMainThread()V
    .registers 2

    .line 793
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 794
    const-string v0, "androidtc"

    const-string v1, "TextClassifier called on main thread"

    invoke-static {v0, v1}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_11
    return-void
.end method

.method static checkTextLength(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "maxLength"    # I

    .line 689
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 690
    .local v0, "textLength":I
    if-ltz v0, :cond_a

    if-gt v0, p1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private static entityScores(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p0, "entityType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 787
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 788
    .local v0, "scores":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    return-object v0
.end method

.method public static generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .registers 6
    .param p0, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 738
    invoke-virtual {p0}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "string":Ljava/lang/String;
    new-instance v1, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-direct {v1, v0}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    .line 741
    .local v1, "links":Landroid/view/textclassifier/TextLinks$Builder;
    invoke-virtual {p0}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    .line 742
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 743
    .local v2, "entities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 744
    invoke-static {v1, v0, v3}, Landroid/view/textclassifier/TextClassifier$Utils;->addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_25
    const-string/jumbo v3, "phone"

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 747
    invoke-static {v1, v0, v3}, Landroid/view/textclassifier/TextClassifier$Utils;->addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_31
    const-string v3, "email"

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 750
    invoke-static {v1, v0, v3}, Landroid/view/textclassifier/TextClassifier$Utils;->addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_3c
    invoke-virtual {v1}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v3

    return-object v3
.end method

.method public static getSubString(Ljava/lang/String;III)Ljava/lang/String;
    .registers 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "minimumLength"    # I

    .line 706
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 707
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_12

    move v2, v0

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_13
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 708
    if-gt p1, p2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 710
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p3, :cond_24

    .line 711
    return-object p0

    .line 714
    :cond_24
    sub-int v0, p2, p1

    .line 715
    .local v0, "length":I
    if-lt v0, p3, :cond_2d

    .line 716
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 719
    :cond_2d
    sub-int v2, p3, v0

    div-int/lit8 v2, v2, 0x2

    .line 720
    .local v2, "offset":I
    sub-int v3, p1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 721
    .local v3, "iterStart":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v3, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 723
    .local v4, "iterEnd":I
    sget-object v5, Landroid/view/textclassifier/TextClassifier$Utils;->WORD_ITERATOR:Ljava/text/BreakIterator;

    monitor-enter v5

    .line 724
    :try_start_4d
    invoke-virtual {v5, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v5, v3}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 726
    move v1, v3

    goto :goto_60

    :cond_58
    invoke-virtual {v5, v3}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_60
    move v3, v1

    .line 727
    invoke-virtual {v5, v4}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 728
    move v1, v4

    goto :goto_71

    :cond_69
    invoke-virtual {v5, v4}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_71
    move v4, v1

    .line 729
    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    monitor-exit v5

    return-object v1

    .line 731
    :catchall_7d
    move-exception v1

    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_4d .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method private static linkMask(Ljava/lang/String;)I
    .registers 5
    .param p0, "entityType"    # Ljava/lang/String;

    .line 773
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_34

    :cond_a
    goto :goto_2b

    :sswitch_b
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_2c

    :sswitch_16
    const-string v0, "email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_2c

    :sswitch_20
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_2c

    :goto_2b
    const/4 v0, -0x1

    :goto_2c
    packed-switch v0, :pswitch_data_42

    .line 782
    return v1

    .line 779
    :pswitch_30
    return v2

    .line 777
    :pswitch_31
    const/4 v0, 0x4

    return v0

    .line 775
    :pswitch_33
    return v3

    :sswitch_data_34
    .sparse-switch
        0x1c56f -> :sswitch_20
        0x5c24b9c -> :sswitch_16
        0x65b3d6e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_33
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method
