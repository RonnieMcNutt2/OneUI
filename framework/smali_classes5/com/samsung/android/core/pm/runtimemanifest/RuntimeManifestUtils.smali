.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;
.super Ljava/lang/Object;
.source "RuntimeManifestUtils.java"


# static fields
.field public static final ATTR_MAX_VALUE:Ljava/lang/String; = "maxValue"

.field public static final ATTR_MIN_VALUE:Ljava/lang/String; = "minValue"

.field public static final ATTR_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final ATTR_PROPERTY_VALUE:Ljava/lang/String; = "propertyValue"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final COUNTRYCODE:Ljava/lang/String;

.field public static final DEBUG:Z = true

.field public static final META_RUNTIME_MANIFEST:Ljava/lang/String; = "runtime.manifest.overlay"

.field public static final ONEUI_VERSION:Ljava/lang/String;

.field public static final SALESCODE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "RuntimeManifestUtils"

.field public static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field public static final TAG_POLICY:Ljava/lang/String; = "policy"

.field public static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field public static final TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final TAG_RUNTIME_MANIFEST:Ljava/lang/String; = "runtime-manifest"

.field public static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static sCountryCodeForTest:Ljava/lang/String;

.field private static sIsTest:Z

.field private static sOneuiVersionForTest:Ljava/lang/String;

.field private static sSalesCodeForTest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->COUNTRYCODE:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "ro.build.version.oneui"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->ONEUI_VERSION:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;

    .line 326
    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_3f

    .line 329
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "cls":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 331
    .local v1, "c":C
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_28

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 334
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3e

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 340
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_3e
    return-object v0

    .line 327
    .end local v0    # "cls":Ljava/lang/String;
    .end local v1    # "c":C
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .registers 1

    .line 61
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->COUNTRYCODE:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public static getMatchingPolicy(Ljava/util/List;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;"
        }
    .end annotation

    .line 256
    .local p0, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    .line 257
    .local v1, "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getType()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 259
    goto :goto_4

    .line 261
    :cond_1b
    const-string v3, "SALESCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "RuntimeManifestUtils"

    if-eqz v3, :cond_52

    .line 262
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 264
    goto :goto_4

    .line 266
    :cond_30
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matched policy(salescode): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object v1

    .line 272
    .end local v3    # "value":Ljava/lang/String;
    :cond_51
    goto :goto_b9

    :cond_52
    const-string v3, "COUNTRYCODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 273
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 274
    .restart local v3    # "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 275
    goto :goto_4

    .line 277
    :cond_65
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matched policy(countrycode): "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v1

    .line 277
    .end local v3    # "value":Ljava/lang/String;
    :cond_86
    goto :goto_b8

    .line 283
    :cond_87
    const-string v3, "ONEUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 284
    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getMinValue()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getMaxValue()J

    move-result-wide v7

    .line 285
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getOneUiVersion()J

    move-result-wide v9

    .line 284
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->matchOneUiPolicy(JJJ)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matched policy(oneui): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v1

    .line 283
    :cond_b8
    :goto_b8
    nop

    .line 292
    .end local v1    # "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .end local v2    # "type":Ljava/lang/String;
    :cond_b9
    :goto_b9
    goto/16 :goto_4

    .line 293
    :cond_bb
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOneUiVersion()J
    .registers 4

    .line 65
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->ONEUI_VERSION:Ljava/lang/String;

    .line 67
    .local v0, "versionStr":Ljava/lang/String;
    :goto_9
    :try_start_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_e

    return-wide v1

    .line 68
    :catch_e
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getSalesCode()Ljava/lang/String;
    .registers 1

    .line 57
    sget-boolean v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->SALESCODE:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method private static matchOneUiPolicy(JJJ)Z
    .registers 11
    .param p0, "minValue"    # J
    .param p2, "maxValue"    # J
    .param p4, "curVersion"    # J

    .line 297
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    const-string v4, "RuntimeManifestUtils"

    if-gez v2, :cond_20

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid current OneUi version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v3

    .line 301
    :cond_20
    cmp-long v2, p0, v0

    if-gez v2, :cond_49

    cmp-long v2, p2, v0

    if-gez v2, :cond_49

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value set, min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v3

    .line 305
    :cond_49
    cmp-long v2, p0, v0

    if-ltz v2, :cond_68

    cmp-long v2, p4, p0

    if-gez v2, :cond_68

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s lower than minValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return v3

    .line 311
    :cond_68
    cmp-long v0, p2, v0

    if-ltz v0, :cond_87

    cmp-long v0, p4, p2

    if-lez v0, :cond_87

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s higher than maxValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v3

    .line 317
    :cond_87
    const/4 v0, 0x1

    return v0
.end method

.method static parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 23
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 97
    .local v3, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    const/4 v0, -0x1

    .line 98
    .local v0, "parserType":I
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 99
    .local v4, "outerDepth":I
    :goto_f
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .end local v0    # "parserType":I
    .local v6, "parserType":I
    const/4 v0, 0x1

    if-eq v5, v0, :cond_15b

    const/4 v5, 0x3

    if-ne v6, v5, :cond_25

    .line 100
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_21

    goto :goto_25

    :cond_21
    move/from16 v18, v4

    goto/16 :goto_15d

    .line 101
    :cond_25
    :goto_25
    if-eq v6, v5, :cond_154

    const/4 v5, 0x4

    if-ne v6, v5, :cond_2e

    .line 102
    move/from16 v18, v4

    goto/16 :goto_156

    .line 104
    :cond_2e
    new-instance v5, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    invoke-direct {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;-><init>()V

    .line 105
    .local v5, "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    invoke-interface/range {p0 .. p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "elementName":Ljava/lang/String;
    const-string/jumbo v8, "policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "RuntimeManifestUtils"

    if-eqz v8, :cond_138

    .line 107
    const-string/jumbo v8, "type"

    const/4 v10, 0x0

    invoke-interface {v1, v10, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "type":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_53

    .line 109
    invoke-virtual {v5, v8}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setType(Ljava/lang/String;)V

    .line 111
    :cond_53
    const-string/jumbo v11, "value"

    invoke-interface {v1, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_63

    .line 113
    invoke-virtual {v5, v11}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setValue(Ljava/lang/String;)V

    .line 115
    :cond_63
    const-string/jumbo v12, "minValue"

    invoke-interface {v1, v10, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "minValue":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_73

    .line 117
    invoke-virtual {v5, v12}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setMinValue(Ljava/lang/String;)V

    .line 119
    :cond_73
    const-string/jumbo v13, "maxValue"

    invoke-interface {v1, v10, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 120
    .local v13, "maxValue":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_83

    .line 121
    invoke-virtual {v5, v13}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setMaxValue(Ljava/lang/String;)V

    .line 123
    :cond_83
    const-string/jumbo v14, "propertyName"

    invoke-interface {v1, v10, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "propertyName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_93

    .line 125
    invoke-virtual {v5, v14}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyName(Ljava/lang/String;)V

    .line 127
    :cond_93
    const-string/jumbo v15, "propertyValue"

    invoke-interface {v1, v10, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 128
    .local v15, "propertyValue":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a3

    .line 129
    invoke-virtual {v5, v15}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPropertyValue(Ljava/lang/String;)V

    .line 132
    :cond_a3
    sget-object v10, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 135
    .local v10, "ta":Landroid/content/res/TypedArray;
    :try_start_a9
    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_131

    move-object/from16 v18, v17

    .line 137
    .local v18, "v":Landroid/util/TypedValue;
    move-object/from16 v0, v18

    .end local v18    # "v":Landroid/util/TypedValue;
    .local v0, "v":Landroid/util/TypedValue;
    if-eqz v0, :cond_cf

    .line 138
    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .local v18, "outerDepth":I
    :try_start_b5
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v4, :cond_c5

    .line 139
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    .line 140
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    goto :goto_d1

    .line 142
    :cond_c5
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setLabelRes(I)V

    .line 143
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setCoercedLabel(Ljava/lang/CharSequence;)V

    goto :goto_d1

    .line 137
    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_cf
    move/from16 v18, v4

    .line 146
    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_d1
    const/4 v4, 0x2

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "v":Landroid/util/TypedValue;
    .local v16, "v":Landroid/util/TypedValue;
    invoke-virtual {v10, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    .line 148
    .local v0, "iconValue":I
    if-eqz v0, :cond_e0

    .line 149
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setIconRes(I)V

    .line 151
    :cond_e0
    const/4 v4, 0x5

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v20

    if-eqz v20, :cond_f2

    .line 153
    move/from16 v20, v0

    const/4 v0, 0x1

    .end local v0    # "iconValue":I
    .local v20, "iconValue":I
    invoke-virtual {v10, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 156
    .local v0, "enabled":Z
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setEnabled(Z)V
    :try_end_f1
    .catchall {:try_start_b5 .. :try_end_f1} :catchall_12f

    goto :goto_f4

    .line 151
    .end local v20    # "iconValue":I
    .local v0, "iconValue":I
    :cond_f2
    move/from16 v20, v0

    .line 159
    .end local v0    # "iconValue":I
    .end local v16    # "v":Landroid/util/TypedValue;
    :goto_f4
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    nop

    .line 162
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 165
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .local v4, "ta":Landroid/content/res/TypedArray;
    const/4 v0, 0x2

    const/4 v10, 0x0

    :try_start_100
    invoke-virtual {v4, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 168
    .local v0, "priority":I
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->setPriority(I)V

    .line 169
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_12a

    .line 171
    nop

    .end local v0    # "priority":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    nop

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parsed "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    .end local v8    # "type":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "minValue":Ljava/lang/String;
    .end local v13    # "maxValue":Ljava/lang/String;
    .end local v14    # "propertyName":Ljava/lang/String;
    .end local v15    # "propertyValue":Ljava/lang/String;
    goto :goto_153

    .line 171
    .restart local v4    # "ta":Landroid/content/res/TypedArray;
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    .restart local v12    # "minValue":Ljava/lang/String;
    .restart local v13    # "maxValue":Ljava/lang/String;
    .restart local v14    # "propertyName":Ljava/lang/String;
    .restart local v15    # "propertyValue":Ljava/lang/String;
    :catchall_12a
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    throw v0

    .line 159
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    .restart local v10    # "ta":Landroid/content/res/TypedArray;
    :catchall_12f
    move-exception v0

    goto :goto_134

    .end local v18    # "outerDepth":I
    .local v4, "outerDepth":I
    :catchall_131
    move-exception v0

    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_134
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    throw v0

    .line 177
    .end local v8    # "type":Ljava/lang/String;
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "minValue":Ljava/lang/String;
    .end local v13    # "maxValue":Ljava/lang/String;
    .end local v14    # "propertyName":Ljava/lang/String;
    .end local v15    # "propertyValue":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_138
    move/from16 v18, v4

    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <runtime-manifest>: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 180
    .end local v5    # "policy":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .end local v7    # "elementName":Ljava/lang/String;
    :goto_153
    goto :goto_156

    .line 101
    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_154
    move/from16 v18, v4

    .line 99
    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_156
    move v0, v6

    move/from16 v4, v18

    goto/16 :goto_f

    .end local v18    # "outerDepth":I
    .restart local v4    # "outerDepth":I
    :cond_15b
    move/from16 v18, v4

    .line 181
    .end local v4    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_15d
    return-object v3
.end method

.method public static parseRuntimeManifestPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    .registers 14
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;-><init>()V

    .line 189
    .local v0, "overlay":Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "application":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v2, "activities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v3, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v4, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v5, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    const-string/jumbo v6, "runtime-manifest"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 197
    :goto_24
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 198
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "elementName":Ljava/lang/String;
    if-nez v6, :cond_3e

    .line 201
    nop

    .line 247
    .end local v6    # "elementName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addApplicationPolicies(Ljava/util/List;)V

    .line 248
    invoke-virtual {v0, v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addActivityPolicies(Ljava/util/Map;)V

    .line 249
    invoke-virtual {v0, v3}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addReceiverPolicies(Ljava/util/Map;)V

    .line 250
    invoke-virtual {v0, v4}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addServicePolicies(Ljava/util/Map;)V

    .line 251
    invoke-virtual {v0, v5}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->addProviderPolicies(Ljava/util/Map;)V

    .line 252
    return-object v0

    .line 203
    .restart local v6    # "elementName":Ljava/lang/String;
    :cond_3e
    const-string v7, "application"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 204
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v7

    .line 205
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d5

    .line 207
    .end local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_4f
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {p1, p0, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 209
    .local v7, "ta":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 211
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x3

    :try_start_57
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_f0

    move-object v8, v9

    .line 214
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    nop

    .line 217
    if-nez v8, :cond_63

    .line 218
    goto :goto_24

    .line 220
    :cond_63
    const-string v9, "activity"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 221
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 222
    .local v9, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 223
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 225
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_7f
    const-string/jumbo v9, "receiver"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 226
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 227
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 228
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 230
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_9c
    const-string/jumbo v9, "service"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b9

    .line 231
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 232
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 233
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    .line 235
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_b9
    const-string/jumbo v9, "provider"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 236
    invoke-static {p0, p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->parseOverlayPolicies(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v9

    .line 237
    .restart local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d5

    .line 238
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v7    # "ta":Landroid/content/res/TypedArray;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    :cond_d5
    :goto_d5
    goto/16 :goto_24

    .line 241
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v7    # "ta":Landroid/content/res/TypedArray;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_d7
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <runtime-manifest>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 214
    :catchall_f0
    move-exception v9

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    throw v9
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .registers 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .line 80
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sCountryCodeForTest:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static setOneUiVersionForTest(Ljava/lang/String;)V
    .registers 1
    .param p0, "oneUiVersion"    # Ljava/lang/String;

    .line 85
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sOneuiVersionForTest:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static setSalesCodeForTest(Ljava/lang/String;)V
    .registers 1
    .param p0, "salesCode"    # Ljava/lang/String;

    .line 75
    sput-object p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sSalesCodeForTest:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static setTestMode(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 90
    sput-boolean p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->sIsTest:Z

    .line 91
    return-void
.end method

.method public static useLegacyRuntimeManifest(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "metaData"    # Landroid/os/Bundle;

    .line 321
    if-eqz p0, :cond_e

    const-string/jumbo v0, "runtime.manifest.overlay"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method
