.class Lcom/samsung/android/content/smartclip/SmartClipDataRootElement;
.super Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
.source "SemSmartClipDataRepository.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 902
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public collectPlainTextTag()Ljava/lang/String;
    .registers 12

    .line 908
    move-object v0, p0

    .line 909
    .local v0, "element":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    .local v1, "resultString":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 912
    .local v2, "prevTextTagRect":Landroid/graphics/Rect;
    :goto_b
    if-eqz v0, :cond_6e

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    .local v3, "plainText":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "plain_text"

    invoke-virtual {v0, v4}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v4

    .line 915
    .local v4, "textTags":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v5

    .line 916
    .local v5, "textTagCount":I
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 918
    .local v6, "curTextTagRect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_22
    const-string v8, " "

    if-ge v7, v5, :cond_42

    .line 919
    invoke-virtual {v4, v7}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 921
    .local v9, "curTagValue":Ljava/lang/String;
    if-eqz v9, :cond_3f

    .line 922
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3f

    .line 923
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .end local v9    # "curTagValue":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 928
    .end local v7    # "i":I
    :cond_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v7

    if-lez v7, :cond_69

    .line 929
    if-eqz v6, :cond_5f

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v9, :cond_5f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 930
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    :cond_5f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    if-eqz v6, :cond_69

    .line 936
    move-object v2, v6

    .line 940
    :cond_69
    invoke-virtual {v0, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 941
    .end local v3    # "plainText":Ljava/lang/StringBuilder;
    .end local v4    # "textTags":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .end local v5    # "textTagCount":I
    .end local v6    # "curTextTagRect":Landroid/graphics/Rect;
    goto :goto_b

    .line 943
    :cond_6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, "plainTextResult":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7f

    .line 945
    const/4 v4, 0x0

    return-object v4

    .line 947
    :cond_7f
    return-object v3
.end method
