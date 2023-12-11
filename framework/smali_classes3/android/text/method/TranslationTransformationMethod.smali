.class public Landroid/text/method/TranslationTransformationMethod;
.super Ljava/lang/Object;
.source "TranslationTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TranslationTransformationMethod"


# instance fields
.field private SEP_VERSION:Ljava/lang/Float;

.field private mAllowLengthChanges:Z

.field private mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

.field private final mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V
    .registers 4
    .param p1, "response"    # Landroid/view/translation/ViewTranslationResponse;
    .param p2, "method"    # Landroid/text/method/TransformationMethod;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "15.0"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    .line 65
    iput-object p1, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    .line 66
    iput-object p2, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    .line 67
    return-void
.end method

.method private isWhitespace(Ljava/lang/String;)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .line 138
    sget-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 86
    iget-boolean v0, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    const-string v1, "TranslationTransformationMethod"

    if-nez v0, :cond_c

    .line 87
    const-string v0, "Caller did not enable length changes; not transforming to translated text"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object p1

    .line 90
    :cond_c
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    const-string v2, "android:text"

    invoke-virtual {v0, v2}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v0

    .line 93
    .local v0, "value":Landroid/view/translation/TranslationResponseValue;
    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v2

    if-nez v2, :cond_9c

    .line 94
    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 96
    .local v2, "translatedText":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "show_origin_message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 97
    .local v3, "showOriginalText":Z
    iget-object v4, p0, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x402e333333333333L    # 15.1

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_9b

    instance-of v4, p2, Landroid/widget/TextView;

    if-eqz v4, :cond_9b

    if-eqz v3, :cond_9b

    .line 99
    :try_start_3f
    move-object v4, p2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 100
    .local v4, "textColor":Landroid/content/res/ColorStateList;
    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 101
    .local v5, "dimTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v6

    .line 102
    .local v6, "color":[I
    new-instance v7, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v7, "string":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const/4 v9, 0x0

    aget v9, v6, v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 104
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 105
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v10

    .line 103
    const/16 v11, 0x21

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_81} :catch_83

    .line 107
    move-object v2, v7

    .line 110
    .end local v4    # "textColor":Landroid/content/res/ColorStateList;
    .end local v5    # "dimTextColor":Landroid/content/res/ColorStateList;
    .end local v6    # "color":[I
    .end local v7    # "string":Landroid/text/SpannableString;
    goto :goto_9b

    .line 108
    :catch_83
    move-exception v4

    .line 109
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trans color change exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v3    # "showOriginalText":Z
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9b
    :goto_9b
    goto :goto_9e

    .line 114
    .end local v2    # "translatedText":Ljava/lang/CharSequence;
    :cond_9c
    const-string v2, ""

    .line 117
    .restart local v2    # "translatedText":Ljava/lang/CharSequence;
    :goto_9e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/text/method/TranslationTransformationMethod;->isWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    goto :goto_b0

    .line 121
    :cond_af
    return-object v2

    .line 118
    :cond_b0
    :goto_b0
    return-object p1
.end method

.method public getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    return-object v0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 130
    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .registers 2
    .param p1, "allowLengthChanges"    # Z

    .line 134
    iput-boolean p1, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    .line 135
    return-void
.end method
