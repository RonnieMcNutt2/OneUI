.class Landroid/widget/Editor$SuggestionHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
    }
.end annotation


# instance fields
.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSpansLengths(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-object p0
.end method

.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 3

    .line 4430
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4431
    new-instance p1, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator-IA;)V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 4433
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .registers 11

    .line 4471
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4472
    .local v0, "pos":I
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 4473
    .local v1, "spannable":Landroid/text/Spannable;
    const-class v2, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4475
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4476
    array-length v3, v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_3f

    aget-object v5, v2, v4

    .line 4477
    .local v5, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 4478
    .local v6, "start":I
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 4479
    .local v7, "end":I
    iget-object v8, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    sub-int v9, v7, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4476
    .end local v5    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v6    # "start":I
    .end local v7    # "end":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 4485
    :cond_3f
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4486
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4488
    return-object v2
.end method


# virtual methods
.method public getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I
    .registers 21
    .param p1, "suggestionInfos"    # [Landroid/widget/Editor$SuggestionInfo;
    .param p2, "misspelledSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .line 4501
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v3, v2, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 4502
    .local v3, "spannable":Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionHelper;->getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v4

    .line 4503
    .local v4, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v5, v4

    .line 4504
    .local v5, "nbSpans":I
    const/4 v6, 0x0

    if-nez v5, :cond_1b

    return v6

    .line 4506
    :cond_1b
    const/4 v7, 0x0

    .line 4507
    .local v7, "numberOfSuggestions":I
    array-length v8, v4

    move v9, v6

    :goto_1e
    if-ge v9, v8, :cond_b7

    aget-object v10, v4, v9

    .line 4508
    .local v10, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 4509
    .local v11, "spanStart":I
    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 4520
    .local v12, "spanEnd":I
    if-eqz v1, :cond_3e

    .line 4521
    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v13

    and-int/lit8 v13, v13, 0xa

    if-eqz v13, :cond_3b

    .line 4522
    iput-object v10, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 4523
    iput v11, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 4524
    iput v12, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    goto :goto_3e

    .line 4526
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    .line 4531
    :cond_3e
    :goto_3e
    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    .line 4532
    .local v13, "suggestions":[Ljava/lang/String;
    array-length v14, v13

    .line 4534
    .local v14, "nbSuggestions":I
    const/4 v15, 0x0

    .local v15, "suggestionIndex":I
    :goto_44
    if-ge v15, v14, :cond_aa

    .line 4535
    aget-object v6, v13, v15

    .line 4536
    .local v6, "suggestion":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_4c
    if-ge v1, v7, :cond_79

    .line 4537
    aget-object v2, v0, v1

    .line 4538
    .local v2, "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    move-object/from16 v16, v3

    .end local v3    # "spannable":Landroid/text/Spannable;
    .local v16, "spannable":Landroid/text/Spannable;
    iget-object v3, v2, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 4539
    iget-object v3, v2, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v3, v3, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 4541
    .local v3, "otherSpanStart":I
    move-object/from16 v17, v4

    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v17, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v4, v2, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v4, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 4543
    .local v4, "otherSpanEnd":I
    if-ne v11, v3, :cond_70

    if-ne v12, v4, :cond_70

    .line 4544
    const/4 v2, 0x0

    goto :goto_9e

    .line 4538
    .end local v3    # "otherSpanStart":I
    .end local v17    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v4, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_6e
    move-object/from16 v17, v4

    .line 4536
    .end local v2    # "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v17    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_70
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_4c

    .end local v16    # "spannable":Landroid/text/Spannable;
    .end local v17    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v3, "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_79
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 4549
    .end local v1    # "i":I
    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v16    # "spannable":Landroid/text/Spannable;
    .restart local v17    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    aget-object v1, v0, v7

    .line 4550
    .local v1, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    invoke-virtual {v1, v10, v11, v12}, Landroid/widget/Editor$SuggestionInfo;->setSpanInfo(Landroid/text/style/SuggestionSpan;II)V

    .line 4551
    iput v15, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 4552
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 4553
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 4554
    iget-object v3, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v4, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4555
    add-int/lit8 v7, v7, 0x1

    .line 4556
    array-length v3, v0

    if-lt v7, v3, :cond_9e

    .line 4557
    return v7

    .line 4534
    .end local v1    # "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    .end local v6    # "suggestion":Ljava/lang/String;
    :cond_9e
    :goto_9e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move v6, v2

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v2, p0

    goto :goto_44

    .end local v16    # "spannable":Landroid/text/Spannable;
    .end local v17    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_aa
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move v2, v6

    .line 4507
    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v10    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    .end local v13    # "suggestions":[Ljava/lang/String;
    .end local v14    # "nbSuggestions":I
    .end local v15    # "suggestionIndex":I
    .restart local v16    # "spannable":Landroid/text/Spannable;
    .restart local v17    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto/16 :goto_1e

    .line 4561
    .end local v16    # "spannable":Landroid/text/Spannable;
    .end local v17    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_b7
    return v7
.end method
