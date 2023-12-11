.class public final Landroid/graphics/fonts/FontVariationAxis;
.super Ljava/lang/Object;
.source "FontVariationAxis.java"


# static fields
.field private static final STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mStyleValue:F

.field private final mTag:I

.field private final mTagString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    const-string v0, "[ -~]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/FontVariationAxis;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    nop

    .line 105
    const-string v0, "-?(([0-9]+(\\.[0-9]+)?)|(\\.[0-9]+))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/FontVariationAxis;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 6
    .param p1, "tagString"    # Ljava/lang/String;
    .param p2, "styleValue"    # F

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->isValidTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 52
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->makeTag(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    .line 53
    iput-object p1, p0, Landroid/graphics/fonts/FontVariationAxis;->mTagString:Ljava/lang/String;

    .line 54
    iput p2, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    .line 55
    return-void

    .line 50
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal tag pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;
    .registers 11
    .param p0, "settings"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    if-eqz p0, :cond_a7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_a7

    .line 145
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "axisList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 147
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_96

    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 149
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 150
    goto :goto_5c

    .line 152
    :cond_22
    const/16 v5, 0x27

    if-eq v4, v5, :cond_2a

    const/16 v5, 0x22

    if-ne v4, v5, :cond_7d

    :cond_2a
    add-int/lit8 v5, v3, 0x6

    if-lt v2, v5, :cond_7d

    add-int/lit8 v5, v3, 0x5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_7d

    .line 156
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x5

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "tagString":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x6

    .line 159
    const/16 v6, 0x2c

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 160
    .local v6, "endOfValueString":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4a

    .line 161
    move v6, v2

    .line 166
    :cond_4a
    :try_start_4a
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_52} :catch_5f

    .line 170
    .local v7, "value":F
    nop

    .line 171
    new-instance v8, Landroid/graphics/fonts/FontVariationAxis;

    invoke-direct {v8, v5, v7}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    move v3, v6

    .line 147
    .end local v4    # "c":C
    .end local v5    # "tagString":Ljava/lang/String;
    .end local v6    # "endOfValueString":I
    .end local v7    # "value":F
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 167
    .restart local v4    # "c":C
    .restart local v5    # "tagString":Ljava/lang/String;
    .restart local v6    # "endOfValueString":I
    :catch_5f
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse float string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 169
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "tagString":Ljava/lang/String;
    .end local v6    # "endOfValueString":I
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag should be wrapped with double or single quote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_96
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 175
    return-object v0

    .line 177
    :cond_9d
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontVariationAxis;

    return-object v0

    .line 143
    .end local v1    # "axisList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    .end local v2    # "length":I
    :cond_a7
    :goto_a7
    return-object v0
.end method

.method private static isValidTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tagString"    # Ljava/lang/String;

    .line 97
    if-eqz p0, :cond_10

    sget-object v0, Landroid/graphics/fonts/FontVariationAxis;->TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isValidValueFormat(Ljava/lang/String;)Z
    .registers 2
    .param p0, "valueString"    # Ljava/lang/String;

    .line 108
    if-eqz p0, :cond_10

    sget-object v0, Landroid/graphics/fonts/FontVariationAxis;->STYLE_VALUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static makeTag(Ljava/lang/String;)I
    .registers 7
    .param p0, "tagString"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 114
    .local v0, "c1":C
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 115
    .local v1, "c2":C
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 116
    .local v2, "c3":C
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 117
    .local v3, "c4":C
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method public static toFontVariationSettings(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 198
    .local p0, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    if-nez p0, :cond_5

    .line 199
    const-string v0, ""

    return-object v0

    .line 201
    :cond_5
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;
    .registers 2
    .param p0, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 187
    if-nez p0, :cond_5

    .line 188
    const-string v0, ""

    return-object v0

    .line 190
    :cond_5
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 207
    return v0

    .line 209
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    instance-of v2, p1, Landroid/graphics/fonts/FontVariationAxis;

    if-nez v2, :cond_c

    goto :goto_20

    .line 212
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/graphics/fonts/FontVariationAxis;

    .line 213
    .local v2, "axis":Landroid/graphics/fonts/FontVariationAxis;
    iget v3, v2, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    iget v4, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    if-ne v3, v4, :cond_1e

    iget v3, v2, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    iget v4, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0

    .line 210
    .end local v2    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_20
    :goto_20
    return v1
.end method

.method public getOpenTypeTagValue()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    return v0
.end method

.method public getStyleValue()F
    .registers 2

    .line 76
    iget v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTagString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 218
    iget v0, p0, Landroid/graphics/fonts/FontVariationAxis;->mTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontVariationAxis;->mTagString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/fonts/FontVariationAxis;->mStyleValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
