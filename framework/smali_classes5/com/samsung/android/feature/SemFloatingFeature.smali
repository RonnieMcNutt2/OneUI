.class public final Lcom/samsung/android/feature/SemFloatingFeature;
.super Ljava/lang/Object;
.source "SemFloatingFeature.java"

# interfaces
.implements Lcom/samsung/android/feature/IFloatingFeature;


# static fields
.field private static final DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final DEFAULT_INT_VALUE:I = -0x1

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/etc/floating_feature.xml"

.field private static final LOG_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "SemFloatingFeature"

.field private static final sInstance:Lcom/samsung/android/feature/SemFloatingFeature;


# instance fields
.field private final mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 99
    const/4 v0, 0x1

    .line 103
    .local v0, "productShip":Z
    :try_start_1
    const-string/jumbo v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 107
    goto :goto_f

    .line 105
    :catch_e
    move-exception v1

    .line 109
    :goto_f
    if-nez v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    sput-boolean v1, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    .line 113
    new-instance v1, Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-direct {v1}, Lcom/samsung/android/feature/SemFloatingFeature;-><init>()V

    sput-object v1, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 115
    .end local v0    # "productShip":Z
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 173
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/feature/SemFloatingFeature;->loadFeatureFile()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 179
    goto :goto_12

    .line 175
    :catch_e
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/feature/SemFloatingFeature;
    .registers 1

    .line 157
    sget-object v0, Lcom/samsung/android/feature/SemFloatingFeature;->sInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .registers 11

    .line 539
    const/4 v0, 0x0

    .line 541
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 543
    .local v1, "fi":Ljava/io/InputStream;
    const/4 v2, -0x1

    .line 545
    .local v2, "eventType":I
    const/4 v3, 0x0

    .line 547
    .local v3, "TagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 551
    .local v4, "TagValue":Ljava/lang/String;
    :try_start_5
    iget-object v5, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 555
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/floating_feature.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v5, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_aa

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_23

    goto/16 :goto_aa

    .line 567
    :cond_23
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 569
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 571
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    move-object v0, v8

    .line 573
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v8

    .line 575
    const/4 v8, 0x0

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 577
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    move v2, v8

    .line 581
    :goto_3f
    if-eq v2, v7, :cond_8f

    .line 583
    const/4 v8, 0x2

    if-ne v2, v8, :cond_4a

    .line 585
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_80

    .line 587
    :cond_4a
    const/4 v8, 0x4

    if-ne v2, v8, :cond_80

    .line 589
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 591
    if-eqz v3, :cond_80

    if-eqz v4, :cond_80

    .line 593
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5c} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5c} :catch_c3
    .catchall {:try_start_5 .. :try_end_5c} :catchall_c1

    if-eqz v8, :cond_6d

    .line 597
    :try_start_5e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_62} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_62} :catch_c3
    .catchall {:try_start_5e .. :try_end_62} :catchall_c1

    move v2, v8

    .line 603
    goto :goto_3f

    .line 599
    :catch_64
    move-exception v8

    .line 601
    .local v8, "e":Ljava/io/IOException;
    :try_start_65
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_6c} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6c} :catch_c3
    .catchall {:try_start_65 .. :try_end_6c} :catchall_c1

    .line 605
    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_3f

    .line 611
    :cond_6d
    :try_start_6d
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 613
    iget-object v8, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v8, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_77} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_77} :catch_c3
    .catchall {:try_start_6d .. :try_end_77} :catchall_c1

    .line 619
    goto :goto_80

    .line 615
    :catch_78
    move-exception v8

    .line 617
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_79
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_80} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_80} :catch_c3
    .catchall {:try_start_79 .. :try_end_80} :catchall_c1

    .line 629
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_80
    :goto_80
    :try_start_80
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_84} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_84} :catch_c3
    .catchall {:try_start_80 .. :try_end_84} :catchall_c1

    move v2, v8

    .line 635
    :goto_85
    goto :goto_3f

    .line 631
    :catch_86
    move-exception v8

    .line 633
    .local v8, "e":Ljava/io/IOException;
    :try_start_87
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_8e} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8e} :catch_c3
    .catchall {:try_start_87 .. :try_end_8e} :catchall_c1

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_85

    .line 641
    :cond_8f
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_92} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_92} :catch_c3
    .catchall {:try_start_8f .. :try_end_92} :catchall_c1

    .line 647
    goto :goto_9b

    .line 643
    :catch_93
    move-exception v7

    .line 645
    .local v7, "e":Ljava/io/IOException;
    :try_start_94
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_9b} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_9b} :catch_c3
    .catchall {:try_start_94 .. :try_end_9b} :catchall_c1

    .line 661
    .end local v5    # "featureXmlFile":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_9b
    nop

    .line 663
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a1

    .line 665
    const/4 v1, 0x0

    .line 673
    goto :goto_ea

    .line 669
    :catch_a1
    move-exception v5

    .line 671
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 675
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_ea

    .line 559
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v5, "featureXmlFile":Ljava/io/File;
    :cond_aa
    :goto_aa
    :try_start_aa
    const-string v6, "Cannot read floating_feature.xml file"

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_af} :catch_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_af} :catch_c3
    .catchall {:try_start_aa .. :try_end_af} :catchall_c1

    .line 661
    if-eqz v1, :cond_bf

    .line 663
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b6

    .line 665
    const/4 v1, 0x0

    goto :goto_bf

    .line 669
    :catch_b6
    move-exception v6

    .line 671
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_c0

    .line 673
    .end local v6    # "e":Ljava/io/IOException;
    :cond_bf
    :goto_bf
    nop

    .line 561
    :goto_c0
    return-void

    .line 659
    .end local v5    # "featureXmlFile":Ljava/io/File;
    :catchall_c1
    move-exception v5

    goto :goto_eb

    .line 653
    :catch_c3
    move-exception v5

    .line 655
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_c4
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_c1

    .line 661
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_e9

    .line 663
    :try_start_cd
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_e0

    goto :goto_de

    .line 649
    :catch_d1
    move-exception v5

    .line 651
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d2
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_c1

    .line 661
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_e9

    .line 663
    :try_start_db
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e0

    .line 665
    :goto_de
    const/4 v1, 0x0

    goto :goto_e9

    .line 669
    :catch_e0
    move-exception v5

    .line 671
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 675
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_ea

    .line 673
    :cond_e9
    :goto_e9
    nop

    .line 677
    :goto_ea
    return-void

    .line 661
    :goto_eb
    if-eqz v1, :cond_fb

    .line 663
    :try_start_ed
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f2

    .line 665
    const/4 v1, 0x0

    goto :goto_fb

    .line 669
    :catch_f2
    move-exception v6

    .line 671
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    goto :goto_fc

    .line 673
    .end local v6    # "e":Ljava/io/IOException;
    :cond_fb
    :goto_fb
    nop

    .line 675
    :goto_fc
    throw v5
.end method

.method private static loge(Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/Object;

    .line 133
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_d

    .line 135
    const-string v0, "SemFloatingFeature"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_d
    return-void
.end method

.method private static logw(Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/Object;

    .line 121
    sget-boolean v0, Lcom/samsung/android/feature/SemFloatingFeature;->LOG_ENABLED:Z

    if-eqz v0, :cond_d

    .line 123
    const-string v0, "SemFloatingFeature"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_d
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 205
    const-string v1, "The first argument of getBoolean() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 207
    return v0

    .line 211
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_14

    goto :goto_18

    :cond_14
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_18
    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `boolean getBoolean(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `boolean getBoolean(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 247
    if-nez p1, :cond_25

    .line 249
    const-string v0, "The first argument of getBoolean() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 251
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_31

    move v1, p2

    goto :goto_35

    :cond_31
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_35
    return v1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 387
    const/4 v0, -0x1

    if-nez p1, :cond_9

    .line 389
    const-string v1, "The first argument of getInt() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 391
    return v0

    .line 397
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_14

    .line 403
    return v0

    .line 411
    :cond_14
    :try_start_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    return v0

    .line 413
    :catch_19
    move-exception v2

    .line 415
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "[%s] cannot be parsed to Integer value"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 417
    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `int getInt(String tag, int defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `int getInt(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 491
    if-nez p1, :cond_24

    .line 493
    const-string v0, "The first argument of getInt() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 495
    return p2

    .line 501
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 505
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_2f

    .line 507
    return p2

    .line 515
    :cond_2f
    :try_start_2f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_34

    return v1

    .line 517
    :catch_34
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "[%s] cannot be parsed to Integer value"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 521
    return p2
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 363
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 281
    const-string v0, ""

    if-nez p1, :cond_a

    .line 283
    const-string v1, "The first argument of getString() cannot be null."

    invoke-static {v1}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 285
    return-object v0

    .line 289
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, "original":Ljava/lang/String;
    if-nez v1, :cond_15

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You called API `String getString(String tag, String defaultValue)` with feature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].It has been deprecated after android Q. Instead, please Use `String getString(String tag)`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->logw(Ljava/lang/Object;)V

    .line 327
    if-nez p1, :cond_26

    .line 329
    const-string v0, "The first argument of getString() cannot be null."

    invoke-static {v0}, Lcom/samsung/android/feature/SemFloatingFeature;->loge(Ljava/lang/Object;)V

    .line 331
    const-string v0, ""

    return-object v0

    .line 335
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/feature/SemFloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    .local v0, "original":Ljava/lang/String;
    if-nez v0, :cond_32

    move-object v1, p2

    goto :goto_33

    :cond_32
    move-object v1, v0

    :goto_33
    return-object v1
.end method
