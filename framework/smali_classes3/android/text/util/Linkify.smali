.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$LinkifyMask;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMAIL_ADDRESSES:I = 0x2

.field private static final KOR_CURRENCY_SYMBOL:C = '\u20a9'

.field private static final KOR_CURRENCY_WON:C = '\uc6d0'

.field private static final LOG_TAG:Ljava/lang/String; = "Linkify"

.field public static final MAP_ADDRESSES:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final SEM_ALL_MIXED_CJK:I = 0x500a

.field public static final SEM_ALL_MIXED_KOR:I = 0x600a

.field public static final SEM_PHONE_NUMBERS_CJK:I = 0x8000

.field public static final SEM_PHONE_NUMBERS_KOR:I = 0x4000

.field public static final SEM_WEB_URLS_CJK:I = 0x1000

.field public static final SEM_WEB_URLS_KOR:I = 0x2000

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 150
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 168
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 191
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 926
    new-instance v0, Landroid/text/util/Linkify$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/text/util/Linkify$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 3
    .param p0, "t"    # Landroid/widget/TextView;

    .line 529
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 531
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_17

    .line 532
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 533
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 536
    :cond_17
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 9
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 551
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 552
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 571
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 572
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 13
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 594
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 596
    .local v0, "spannable":Landroid/text/SpannableString;
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    .line 598
    .local v1, "linksAdded":Z
    if-eqz v1, :cond_1a

    .line 599
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 602
    :cond_1a
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .registers 3
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .line 261
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method private static addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z
    .registers 25
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)Z"
        }
    .end annotation

    .line 295
    .local p3, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    move-object/from16 v6, p0

    move/from16 v7, p1

    const/4 v8, 0x0

    if-eqz v6, :cond_25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 296
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "116321860"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 297
    return v8

    .line 300
    :cond_25
    if-nez v7, :cond_28

    .line 301
    return v8

    .line 304
    :cond_28
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {v6, v8, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 306
    .local v9, "old":[Landroid/text/style/URLSpan;
    array-length v0, v9

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    .local v0, "i":I
    :goto_38
    if-ltz v0, :cond_42

    .line 307
    aget-object v1, v9, v0

    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 306
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 310
    .end local v0    # "i":I
    :cond_42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 312
    .local v11, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v0, v7, 0x1

    const-string v12, "ftp://"

    const-string/jumbo v13, "rtsp://"

    const-string/jumbo v14, "https://"

    const-string/jumbo v15, "http://"

    if-eqz v0, :cond_7e

    .line 313
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    filled-new-array {v15, v14, v13, v12}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 318
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 319
    .local v1, "link":Landroid/text/util/LinkSpec;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/util/Linkify;->checkBracketsPairs(Ljava/lang/String;Landroid/text/util/LinkSpec;)V

    .line 320
    .end local v1    # "link":Landroid/text/util/LinkSpec;
    goto :goto_6a

    .line 326
    :cond_7e
    and-int/lit16 v0, v7, 0x1000

    const/16 v5, 0x80

    const-string v4, "."

    const-string v3, "://"

    const-string/jumbo v2, "www."

    if-eqz v0, :cond_1f0

    .line 327
    sget-object v16, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    filled-new-array {v15, v14, v13, v12}, [Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/16 v19, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v10, v2

    move-object/from16 v2, v16

    move-object v8, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v9

    move-object v9, v4

    .end local v9    # "old":[Landroid/text/style/URLSpan;
    .local v17, "old":[Landroid/text/style/URLSpan;
    move-object/from16 v4, v18

    move v6, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 332
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 333
    .restart local v1    # "link":Landroid/text/util/LinkSpec;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "linkedText":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 336
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_125

    .line 337
    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_125

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_125

    .line 338
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_125

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_125

    .line 339
    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/text/util/LinkSpec;->start:I

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v5, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->start:I

    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto :goto_183

    .line 343
    :cond_125
    const-string/jumbo v3, "wap."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_183

    .line 345
    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_183

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_183

    .line 346
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_183

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_183

    .line 347
    iget v4, v1, Landroid/text/util/LinkSpec;->start:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v1, Landroid/text/util/LinkSpec;->start:I

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v5, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->start:I

    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 352
    :cond_183
    :goto_183
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 353
    .local v3, "position":I
    if-ltz v3, :cond_1df

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1df

    .line 354
    const-string/jumbo v4, "http://api.map.baidu.com/marker?location="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1da

    .line 355
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 357
    .local v4, "chars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a5
    array-length v6, v4

    if-ge v5, v6, :cond_1b6

    .line 358
    aget-char v6, v4, v5

    move-object/from16 v19, v0

    const/16 v0, 0x80

    if-lt v6, v0, :cond_1b1

    .line 359
    goto :goto_1b8

    .line 357
    :cond_1b1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v19

    goto :goto_1a5

    :cond_1b6
    move-object/from16 v19, v0

    .line 363
    :goto_1b8
    array-length v0, v4

    if-ge v5, v0, :cond_1d7

    .line 364
    iget v0, v1, Landroid/text/util/LinkSpec;->end:I

    array-length v6, v4

    sub-int/2addr v6, v5

    sub-int/2addr v0, v6

    iput v0, v1, Landroid/text/util/LinkSpec;->end:I

    .line 365
    iget-object v0, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v6, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v20, v2

    .end local v2    # "linkedText":Ljava/lang/String;
    .local v20, "linkedText":Ljava/lang/String;
    array-length v2, v4

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto :goto_1e3

    .line 363
    .end local v20    # "linkedText":Ljava/lang/String;
    .restart local v2    # "linkedText":Ljava/lang/String;
    :cond_1d7
    move-object/from16 v20, v2

    .end local v2    # "linkedText":Ljava/lang/String;
    .restart local v20    # "linkedText":Ljava/lang/String;
    goto :goto_1e3

    .line 354
    .end local v4    # "chars":[C
    .end local v5    # "i":I
    .end local v20    # "linkedText":Ljava/lang/String;
    .restart local v2    # "linkedText":Ljava/lang/String;
    :cond_1da
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .end local v2    # "linkedText":Ljava/lang/String;
    .restart local v20    # "linkedText":Ljava/lang/String;
    goto :goto_1e3

    .line 353
    .end local v20    # "linkedText":Ljava/lang/String;
    .restart local v2    # "linkedText":Ljava/lang/String;
    :cond_1df
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .line 368
    .end local v2    # "linkedText":Ljava/lang/String;
    .restart local v20    # "linkedText":Ljava/lang/String;
    :goto_1e3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->checkBracketsPairs(Ljava/lang/String;Landroid/text/util/LinkSpec;)V

    .line 369
    .end local v1    # "link":Landroid/text/util/LinkSpec;
    .end local v3    # "position":I
    .end local v20    # "linkedText":Ljava/lang/String;
    move-object/from16 v0, v19

    const/16 v6, 0x80

    goto/16 :goto_ad

    .line 326
    .end local v17    # "old":[Landroid/text/style/URLSpan;
    .restart local v9    # "old":[Landroid/text/style/URLSpan;
    :cond_1f0
    move-object v10, v2

    move-object v8, v3

    move-object/from16 v17, v9

    move-object v9, v4

    .line 373
    .end local v9    # "old":[Landroid/text/style/URLSpan;
    .restart local v17    # "old":[Landroid/text/style/URLSpan;
    :cond_1f5
    and-int/lit16 v0, v7, 0x2000

    if-eqz v0, :cond_397

    .line 374
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_WEB_URL_KR:Ljava/util/regex/Pattern;

    filled-new-array {v15, v14, v13, v12}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 379
    const/4 v0, 0x0

    .line 382
    .local v0, "j":I
    :cond_209
    :goto_209
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_397

    .line 383
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 384
    .restart local v1    # "link":Landroid/text/util/LinkSpec;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 386
    .restart local v2    # "linkedText":Ljava/lang/String;
    const-string v3, ".ht"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d2

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v3

    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2d2

    .line 387
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d2

    .line 388
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_2c9

    .line 389
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    .line 390
    .local v3, "linkNext":Landroid/text/util/LinkSpec;
    iget v4, v3, Landroid/text/util/LinkSpec;->start:I

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x6

    if-ne v4, v5, :cond_287

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v4

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x5

    if-le v4, v5, :cond_287

    .line 391
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tp://"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b0

    :cond_287
    iget v4, v3, Landroid/text/util/LinkSpec;->start:I

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x7

    if-ne v4, v5, :cond_2c9

    .line 392
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v4

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v5, v5, 0x6

    if-le v4, v5, :cond_2c9

    .line 393
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->end:I

    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tps://"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c9

    .line 394
    :cond_2b0
    iget v4, v1, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/text/util/LinkSpec;->start:I

    .line 395
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Landroid/text/util/LinkSpec;->start:I

    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 396
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v11, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v3    # "linkNext":Landroid/text/util/LinkSpec;
    :cond_2c9
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 400
    if-lez v0, :cond_209

    .line 401
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_209

    .line 406
    :cond_2d2
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32d

    .line 407
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32d

    .line 408
    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32d

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32d

    .line 409
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32d

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32d

    .line 410
    iget v3, v1, Landroid/text/util/LinkSpec;->start:I

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/text/util/LinkSpec;->start:I

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v5, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/text/util/LinkSpec;->start:I

    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 415
    :cond_32d
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 416
    .local v3, "position":I
    if-ltz v3, :cond_387

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_387

    .line 417
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 419
    .restart local v4    # "chars":[C
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_346
    array-length v6, v4

    if-ge v5, v6, :cond_357

    .line 420
    aget-char v6, v4, v5

    move-object/from16 v19, v2

    const/16 v2, 0x80

    .end local v2    # "linkedText":Ljava/lang/String;
    .local v19, "linkedText":Ljava/lang/String;
    if-lt v6, v2, :cond_352

    .line 421
    goto :goto_35b

    .line 419
    :cond_352
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v19

    goto :goto_346

    .end local v19    # "linkedText":Ljava/lang/String;
    .restart local v2    # "linkedText":Ljava/lang/String;
    :cond_357
    move-object/from16 v19, v2

    const/16 v2, 0x80

    .line 425
    .end local v2    # "linkedText":Ljava/lang/String;
    .restart local v19    # "linkedText":Ljava/lang/String;
    :goto_35b
    array-length v6, v4

    if-ge v5, v6, :cond_384

    if-lez v5, :cond_384

    add-int/lit8 v6, v5, -0x1

    aget-char v6, v4, v6

    const/16 v2, 0x2f

    if-eq v6, v2, :cond_384

    .line 426
    iget v2, v1, Landroid/text/util/LinkSpec;->end:I

    array-length v6, v4

    sub-int/2addr v6, v5

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/text/util/LinkSpec;->end:I

    .line 427
    iget-object v2, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v6, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v20, v3

    .end local v3    # "position":I
    .local v20, "position":I
    array-length v3, v4

    sub-int/2addr v3, v5

    sub-int/2addr v6, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto :goto_38b

    .line 425
    .end local v20    # "position":I
    .restart local v3    # "position":I
    :cond_384
    move/from16 v20, v3

    .end local v3    # "position":I
    .restart local v20    # "position":I
    goto :goto_38b

    .line 416
    .end local v4    # "chars":[C
    .end local v5    # "i":I
    .end local v19    # "linkedText":Ljava/lang/String;
    .end local v20    # "position":I
    .restart local v2    # "linkedText":Ljava/lang/String;
    .restart local v3    # "position":I
    :cond_387
    move-object/from16 v19, v2

    move/from16 v20, v3

    .line 430
    .end local v2    # "linkedText":Ljava/lang/String;
    .end local v3    # "position":I
    .restart local v19    # "linkedText":Ljava/lang/String;
    .restart local v20    # "position":I
    :goto_38b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/util/Linkify;->checkBracketsPairs(Ljava/lang/String;Landroid/text/util/LinkSpec;)V

    .line 431
    nop

    .end local v19    # "linkedText":Ljava/lang/String;
    .end local v20    # "position":I
    add-int/lit8 v0, v0, 0x1

    .line 432
    goto/16 :goto_209

    .line 436
    .end local v0    # "j":I
    .end local v1    # "link":Landroid/text/util/LinkSpec;
    :cond_397
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_3ac

    .line 437
    sget-object v2, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "mailto:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 443
    :cond_3ac
    const v0, 0xc004

    and-int/2addr v0, v7

    if-eqz v0, :cond_3ba

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v11, v0, v1}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V

    goto :goto_3be

    .line 443
    :cond_3ba
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 447
    :goto_3be
    and-int/lit8 v2, v7, 0x8

    if-eqz v2, :cond_3c5

    .line 448
    invoke-static {v11, v0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 451
    :cond_3c5
    invoke-static {v11}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 453
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3d0

    .line 454
    const/4 v2, 0x0

    return v2

    .line 457
    :cond_3d0
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3ec

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    .line 458
    .local v3, "link":Landroid/text/util/LinkSpec;
    iget-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v5, v3, Landroid/text/util/LinkSpec;->start:I

    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    move-object/from16 v8, p3

    invoke-static {v4, v5, v6, v0, v8}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V

    .line 459
    .end local v3    # "link":Landroid/text/util/LinkSpec;
    goto :goto_3d4

    .line 461
    :cond_3ec
    move-object/from16 v8, p3

    const/4 v2, 0x1

    return v2
.end method

.method public static final addLinks(Landroid/text/Spannable;ILjava/util/function/Function;)Z
    .registers 4
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)Z"
        }
    .end annotation

    .line 278
    .local p2, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 9
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 616
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 11
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 638
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 13
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 663
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Ljava/util/function/Function;)Z
    .registers 15
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)Z"
        }
    .end annotation

    .line 689
    .local p6, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 690
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "116321860"

    filled-new-array {v3, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x534e4554

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 691
    return v1

    .line 695
    :cond_21
    if-nez p2, :cond_25

    const-string p2, ""

    .line 696
    :cond_25
    const/4 v2, 0x1

    if-eqz p3, :cond_2b

    array-length v3, p3

    if-ge v3, v2, :cond_2d

    .line 697
    :cond_2b
    sget-object p3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 700
    :cond_2d
    array-length v3, p3

    add-int/2addr v3, v2

    new-array v2, v3, [Ljava/lang/String;

    .line 701
    .local v2, "schemesCopy":[Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 702
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_3a
    array-length v4, p3

    if-ge v3, v4, :cond_50

    .line 703
    aget-object v4, p3, v3

    .line 704
    .local v4, "scheme":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    if-nez v4, :cond_45

    move-object v6, v0

    goto :goto_4b

    :cond_45
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    :goto_4b
    aput-object v6, v2, v5

    .line 702
    .end local v4    # "scheme":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 707
    .end local v3    # "index":I
    :cond_50
    const/4 v0, 0x0

    .line 708
    .local v0, "hasMatches":Z
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 710
    .local v3, "m":Ljava/util/regex/Matcher;
    :goto_55
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 711
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 712
    .local v4, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 713
    .local v5, "end":I
    const/4 v6, 0x1

    .line 715
    .local v6, "allowed":Z
    if-eqz p4, :cond_6a

    .line 716
    invoke-interface {p4, p0, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v6

    .line 719
    :cond_6a
    if-eqz v6, :cond_78

    .line 720
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2, v3, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v7

    .line 722
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7, v4, v5, p0, p6}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V

    .line 723
    const/4 v0, 0x1

    .line 725
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "allowed":Z
    .end local v7    # "url":Ljava/lang/String;
    :cond_78
    goto :goto_55

    .line 727
    :cond_79
    return v0
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .registers 8
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .line 501
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 502
    return v0

    .line 505
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 506
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 507
    .local v2, "t":Ljava/lang/CharSequence;
    instance-of v3, v2, Landroid/text/Spannable;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_20

    .line 508
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, p1, v1, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 509
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 510
    return v4

    .line 513
    :cond_1f
    return v0

    .line 515
    :cond_20
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 517
    .local v3, "s":Landroid/text/SpannableString;
    invoke-static {v3, p1, v1, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;Ljava/util/function/Function;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 518
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 519
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return v4

    .line 524
    :cond_31
    return v0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;Ljava/util/function/Function;)V
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/text/Spannable;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Landroid/text/style/URLSpan;",
            ">;)V"
        }
    .end annotation

    .line 732
    .local p4, "urlSpanFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Landroid/text/style/URLSpan;>;"
    if-nez p4, :cond_4

    .line 733
    sget-object p4, Landroid/text/util/Linkify;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    .line 735
    :cond_4
    invoke-interface {p4, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    .line 736
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 737
    return-void
.end method

.method private static checkBracketsPairs(Ljava/lang/String;Landroid/text/util/LinkSpec;)V
    .registers 9
    .param p0, "rawStr"    # Ljava/lang/String;
    .param p1, "link"    # Landroid/text/util/LinkSpec;

    .line 1035
    iget v0, p1, Landroid/text/util/LinkSpec;->end:I

    iget v1, p1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v0, v1

    .line 1037
    .local v0, "end":I
    iget v1, p1, Landroid/text/util/LinkSpec;->start:I

    iget v2, p1, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "matchStr":Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_18

    .line 1041
    return-void

    .line 1045
    :cond_18
    const/4 v2, 0x0

    .line 1047
    .local v2, "bracketsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v0, :cond_32

    .line 1048
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_25

    .line 1049
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1050
    :cond_25
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_2f

    .line 1051
    add-int/lit8 v2, v2, -0x1

    .line 1047
    :cond_2f
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1057
    .end local v4    # "i":I
    :cond_32
    if-lez v2, :cond_49

    .line 1058
    iget v3, p1, Landroid/text/util/LinkSpec;->end:I

    sub-int/2addr v3, v2

    iput v3, p1, Landroid/text/util/LinkSpec;->end:I

    .line 1059
    iget-object v3, p1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v4, p1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 1061
    :cond_49
    return-void
.end method

.method public static containsUnsupportedCharacters(Ljava/lang/String;)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .line 472
    const-string/jumbo v0, "\u202c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Linkify"

    if-eqz v0, :cond_12

    .line 473
    const-string v0, "Unsupported character for applying links: u202C"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v1

    .line 476
    :cond_12
    const-string/jumbo v0, "\u202d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 477
    const-string v0, "Unsupported character for applying links: u202D"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v1

    .line 480
    :cond_21
    const-string/jumbo v0, "\u202e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 481
    const-string v0, "Unsupported character for applying links: u202E"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v1

    .line 484
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 770
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 772
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 773
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 774
    .local v1, "start":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 776
    .local v2, "end":I
    if-eqz p4, :cond_1a

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 777
    :cond_1a
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    .line 778
    .local v3, "spec":Landroid/text/util/LinkSpec;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 781
    iput v1, v3, Landroid/text/util/LinkSpec;->start:I

    .line 782
    iput v2, v3, Landroid/text/util/LinkSpec;->end:I

    .line 784
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "spec":Landroid/text/util/LinkSpec;
    .end local v4    # "url":Ljava/lang/String;
    :cond_31
    goto :goto_4

    .line 787
    :cond_32
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 12
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .line 828
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 833
    .local v1, "base":I
    :goto_5
    :try_start_5
    invoke-static {v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "address":Ljava/lang/String;
    if-eqz v2, :cond_51

    .line 834
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 836
    .local v2, "start":I
    if-gez v2, :cond_13

    .line 837
    goto :goto_51

    .line 840
    :cond_13
    new-instance v4, Landroid/text/util/LinkSpec;

    invoke-direct {v4}, Landroid/text/util/LinkSpec;-><init>()V

    .line 841
    .local v4, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 842
    .local v5, "length":I
    add-int v6, v2, v5

    .line 844
    .local v6, "end":I
    add-int v7, v1, v2

    iput v7, v4, Landroid/text/util/LinkSpec;->start:I

    .line 845
    add-int v7, v1, v6

    iput v7, v4, Landroid/text/util/LinkSpec;->end:I

    .line 846
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_2a} :catch_53

    move-object v0, v7

    .line 847
    add-int/2addr v1, v6

    .line 849
    const/4 v7, 0x0

    .line 852
    .local v7, "encodedAddress":Ljava/lang/String;
    :try_start_2d
    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_33} :catch_4f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2d .. :try_end_33} :catch_53

    move-object v7, v8

    .line 855
    nop

    .line 857
    :try_start_35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "geo:0,0?q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 858
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_35 .. :try_end_4d} :catch_53

    .line 859
    nop

    .end local v2    # "start":I
    .end local v4    # "spec":Landroid/text/util/LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v7    # "encodedAddress":Ljava/lang/String;
    goto :goto_5

    .line 853
    .restart local v2    # "start":I
    .restart local v4    # "spec":Landroid/text/util/LinkSpec;
    .restart local v5    # "length":I
    .restart local v6    # "end":I
    .restart local v7    # "encodedAddress":Ljava/lang/String;
    :catch_4f
    move-exception v8

    .line 854
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_5

    .line 865
    .end local v2    # "start":I
    .end local v4    # "spec":Landroid/text/util/LinkSpec;
    .end local v5    # "length":I
    .end local v6    # "end":I
    .end local v7    # "encodedAddress":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_51
    :goto_51
    nop

    .line 866
    return-void

    .line 860
    .end local v3    # "address":Ljava/lang/String;
    :catch_53
    move-exception v2

    .line 864
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    return-void
.end method

.method private static gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V
    .registers 15
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 792
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 793
    .local v6, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p2, :cond_8

    move-object v0, p2

    goto :goto_c

    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    :goto_c
    move-object v7, v0

    .line 794
    .local v7, "ctx":Landroid/content/Context;
    if-eqz v7, :cond_22

    .line 795
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 794
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 795
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    move-object v8, v0

    .line 796
    .local v8, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v6

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    .line 798
    .local v0, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 799
    .local v2, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    .line 800
    .local v3, "spec":Landroid/text/util/LinkSpec;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 801
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->start:I

    .line 802
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->end:I

    .line 805
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, "rawString":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    const/4 v11, 0x1

    if-ne v9, v10, :cond_91

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 807
    :cond_91
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x28

    if-ne v9, v10, :cond_a7

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a7

    .line 808
    :cond_a1
    iget v5, v3, Landroid/text/util/LinkSpec;->start:I

    add-int/2addr v5, v11

    iput v5, v3, Landroid/text/util/LinkSpec;->start:I

    goto :goto_ba

    .line 809
    :cond_a7
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x2b

    if-ne v5, v9, :cond_ba

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_ba

    .line 810
    iget v5, v3, Landroid/text/util/LinkSpec;->start:I

    add-int/2addr v5, v11

    iput v5, v3, Landroid/text/util/LinkSpec;->start:I

    .line 816
    :cond_ba
    :goto_ba
    const-string v5, "KR"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v9

    iget v10, v3, Landroid/text/util/LinkSpec;->start:I

    iget v11, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v5, v9, v10, v11}, Landroid/text/util/Linkify;->needToAddLink(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_d6

    .line 819
    goto/16 :goto_40

    .line 823
    :cond_d6
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    .end local v2    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v3    # "spec":Landroid/text/util/LinkSpec;
    .end local v4    # "rawString":Ljava/lang/String;
    goto/16 :goto_40

    .line 825
    :cond_db
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)Landroid/text/style/URLSpan;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 927
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .line 741
    if-eqz p3, :cond_6

    .line 742
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 745
    :cond_6
    const/4 v6, 0x0

    .line 747
    .local v6, "hasPrefix":Z
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_9
    array-length v0, p1

    if-ge v7, v0, :cond_52

    .line 748
    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v3, p1, v7

    const/4 v4, 0x0

    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 749
    const/4 v6, 0x1

    .line 752
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v3, p1, v7

    const/4 v4, 0x0

    aget-object v0, p1, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_52

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_52

    .line 747
    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 760
    .end local v7    # "i":I
    :cond_52
    :goto_52
    if-nez v6, :cond_6b

    array-length v0, p1

    if-lez v0, :cond_6b

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 764
    :cond_6b
    return-object p0
.end method

.method private static needToAddLink(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 13
    .param p0, "rawStr"    # Ljava/lang/String;
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 980
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7d

    const-string/jumbo v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_7d

    .line 984
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 985
    .local v0, "length":I
    const/4 v2, 0x0

    .line 986
    .local v2, "charAfterMatch1":C
    const/4 v3, 0x0

    .line 987
    .local v3, "charAfterMatch2":C
    if-ge p3, v0, :cond_2a

    .line 988
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 989
    add-int/lit8 v4, p3, 0x1

    if-ge v4, v0, :cond_2a

    .line 990
    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 998
    :cond_2a
    const v4, 0xc6d0

    if-eq v2, v4, :cond_7c

    const/16 v5, 0x20a9

    if-eq v2, v5, :cond_7c

    const/16 v6, 0x20

    if-ne v2, v6, :cond_3c

    if-eq v3, v4, :cond_7c

    if-ne v3, v5, :cond_3c

    goto :goto_7c

    .line 1005
    :cond_3c
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_49

    .line 1006
    return v6

    .line 1009
    :cond_49
    const/4 v4, 0x0

    .line 1010
    .local v4, "charBeforeMatch":C
    if-lt p2, v6, :cond_52

    .line 1011
    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1018
    :cond_52
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_7b

    if-ne v2, v5, :cond_59

    goto :goto_7b

    .line 1024
    :cond_59
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x31

    if-ne v5, v7, :cond_7a

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_7a

    .line 1025
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x32

    if-eq v7, v8, :cond_79

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x39

    if-eq v5, v7, :cond_79

    goto :goto_7a

    .line 1031
    :cond_79
    return v6

    .line 1026
    :cond_7a
    :goto_7a
    return v1

    .line 1019
    :cond_7b
    :goto_7b
    return v1

    .line 1000
    .end local v4    # "charBeforeMatch":C
    :cond_7c
    :goto_7c
    return v1

    .line 981
    .end local v0    # "length":I
    .end local v2    # "charAfterMatch1":C
    .end local v3    # "charAfterMatch2":C
    :cond_7d
    :goto_7d
    return v1
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .line 869
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    .line 891
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 893
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 894
    .local v1, "len":I
    const/4 v2, 0x0

    .line 896
    .local v2, "i":I
    :goto_d
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_5e

    .line 897
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    .line 898
    .local v3, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    .line 899
    .local v4, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 901
    .local v5, "remove":I
    iget v6, v3, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_5a

    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_5a

    .line 902
    iget v6, v4, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_35

    .line 903
    add-int/lit8 v5, v2, 0x1

    goto :goto_51

    .line 904
    :cond_35
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_44

    .line 905
    add-int/lit8 v5, v2, 0x1

    goto :goto_51

    .line 906
    :cond_44
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_51

    .line 907
    move v5, v2

    .line 910
    :cond_51
    :goto_51
    const/4 v6, -0x1

    if-eq v5, v6, :cond_5a

    .line 911
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 912
    add-int/lit8 v1, v1, -0x1

    .line 913
    goto :goto_d

    .line 918
    :cond_5a
    nop

    .end local v3    # "a":Landroid/text/util/LinkSpec;
    .end local v4    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    add-int/lit8 v2, v2, 0x1

    .line 919
    goto :goto_d

    .line 920
    :cond_5e
    return-void
.end method
