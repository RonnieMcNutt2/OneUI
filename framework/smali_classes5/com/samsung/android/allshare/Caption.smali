.class public Lcom/samsung/android/allshare/Caption;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/Caption$CaptionType;,
        Lcom/samsung/android/allshare/Caption$CaptionOperation;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Caption"


# instance fields
.field private mCaptionType:Ljava/lang/String;

.field private mCaptionUri:Ljava/lang/String;

.field private mEncoding:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mResourceUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 556
    new-instance v0, Lcom/samsung/android/allshare/Caption$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/Caption$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/Caption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Caption;->readFromParcel(Landroid/os/Parcel;)V

    .line 571
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/Caption-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Caption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static HTMLStringToTEXTString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "htmlString"    # Ljava/lang/String;

    .line 504
    if-nez p0, :cond_c

    .line 505
    const-string v0, "HTMLStringToTEXTString"

    const-string/jumbo v1, "string is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 509
    :cond_c
    move-object v0, p0

    .line 510
    .local v0, "textString":Ljava/lang/String;
    const-string v1, "<br>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    const-string v1, "&gt;"

    const-string v3, ">"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    const-string v1, "&lt;"

    const-string v3, "<"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    const-string v1, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    const-string v1, "&nbsp;"

    const-string v3, " "

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    const-string v1, "&amp;"

    const-string v3, "&"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    const-string v1, "&#10;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    return-object v0
.end method

.method public static parseCaption(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p0, "captions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    .line 430
    const-string/jumbo v0, "parseCaption"

    const-string v1, "Caption"

    const/4 v2, 0x0

    if-nez p0, :cond_f

    .line 431
    const-string/jumbo v0, "parseCaption caption is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-object v2

    .line 434
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v3, "captionList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    :try_start_14
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 437
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 438
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {p0}, Lcom/samsung/android/allshare/Caption;->HTMLStringToTEXTString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object p0, v6

    .line 439
    if-nez p0, :cond_29

    .line 440
    const-string v1, "captions is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-object v2

    .line 443
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object p0, v6

    .line 444
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 445
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_134

    .line 446
    .local v6, "eventType":I
    const-string v7, ""

    move-object v8, v7

    .line 447
    .local v8, "resourceURI":Ljava/lang/String;
    :goto_3d
    const/4 v9, 0x1

    if-eq v6, v9, :cond_133

    .line 448
    const-string/jumbo v9, "sec:ResCaptionInfo"

    packed-switch v6, :pswitch_data_150

    goto/16 :goto_12c

    .line 486
    :pswitch_48
    :try_start_48
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 487
    move-object v8, v7

    goto/16 :goto_12c

    .line 450
    :pswitch_55
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5d} :catch_134

    const-string/jumbo v10, "resUri"

    const/4 v11, 0x0

    if-eqz v9, :cond_74

    .line 451
    :try_start_63
    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 452
    .local v9, "attributeName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 453
    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 455
    .end local v9    # "attributeName":Ljava/lang/String;
    :cond_72
    goto/16 :goto_12c

    :cond_74
    const-string v9, "Captions"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 456
    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 457
    .restart local v9    # "attributeName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 458
    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 460
    .end local v9    # "attributeName":Ljava/lang/String;
    :cond_8f
    goto/16 :goto_12c

    :cond_91
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "captionFileInfo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 461
    new-instance v9, Lcom/samsung/android/allshare/Caption;

    invoke-direct {v9}, Lcom/samsung/android/allshare/Caption;-><init>()V

    .line 462
    .local v9, "caption":Lcom/samsung/android/allshare/Caption;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-ge v10, v11, :cond_10b

    .line 463
    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    .line 464
    .local v11, "attributeName":Ljava/lang/String;
    if-eqz v11, :cond_108

    .line 465
    const-string/jumbo v12, "uri"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c0

    .line 466
    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    goto :goto_108

    .line 467
    :cond_c0
    const-string/jumbo v12, "name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d1

    .line 468
    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/allshare/Caption;->setName(Ljava/lang/String;)V

    goto :goto_108

    .line 469
    :cond_d1
    const-string v12, "captionType"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e6

    .line 470
    nop

    .line 471
    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 470
    invoke-static {v12}, Lcom/samsung/android/allshare/Caption$CaptionType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Caption$CaptionType;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/allshare/Caption;->setCaptionType(Lcom/samsung/android/allshare/Caption$CaptionType;)V

    goto :goto_108

    .line 472
    :cond_e6
    const-string/jumbo v12, "language"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 473
    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 474
    .local v12, "language":Ljava/lang/String;
    invoke-virtual {v9, v12}, Lcom/samsung/android/allshare/Caption;->setLanguage(Ljava/lang/String;)V

    .end local v12    # "language":Ljava/lang/String;
    goto :goto_107

    .line 475
    :cond_f7
    const-string v12, "encoding"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_107

    .line 476
    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/allshare/Caption;->setEncoding(Ljava/lang/String;)V

    goto :goto_108

    .line 475
    :cond_107
    :goto_107
    nop

    .line 462
    .end local v11    # "attributeName":Ljava/lang/String;
    :cond_108
    :goto_108
    add-int/lit8 v10, v10, 0x1

    goto :goto_a3

    .line 480
    .end local v10    # "i":I
    :cond_10b
    invoke-virtual {v9, v8}, Lcom/samsung/android/allshare/Caption;->setResourceUri(Ljava/lang/String;)V

    .line 481
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[parseCaption] - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    nop

    .line 491
    .end local v9    # "caption":Lcom/samsung/android/allshare/Caption;
    :cond_12c
    :goto_12c
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_130} :catch_134

    move v6, v9

    goto/16 :goto_3d

    .line 493
    :cond_133
    return-object v3

    .line 494
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "eventType":I
    .end local v8    # "resourceURI":Ljava/lang/String;
    :catch_134
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/allshare/DLog;->e_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v2

    nop

    :pswitch_data_150
    .packed-switch 0x2
        :pswitch_55
        :pswitch_48
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Caption;->mName:Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Caption;->mResourceUri:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionType:Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Caption;->mEncoding:Ljava/lang/String;

    .line 553
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public getCaptionType()Lcom/samsung/android/allshare/Caption$CaptionType;
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionType:Ljava/lang/String;

    const-string v1, "Caption"

    if-nez v0, :cond_e

    .line 356
    const-string v0, "[getCaptionType] CaptionType is null - return UNKNOWN"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/samsung/android/allshare/Caption$CaptionType;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionType;

    return-object v0

    .line 359
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCaptionType] is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionType:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/allshare/Caption$CaptionType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Caption$CaptionType;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionUri()Ljava/lang/String;
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    const-string v1, "Caption"

    if-nez v0, :cond_e

    .line 338
    const-string v0, "[getCaptionUri] CaptionUri is null - return empty string"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, ""

    return-object v0

    .line 341
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCaptionUri] CaptionUri is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mEncoding:Ljava/lang/String;

    const-string v1, "Caption"

    if-nez v0, :cond_e

    .line 420
    const-string v0, "[getEncoding] mEncoding is null - return empty string"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, ""

    return-object v0

    .line 423
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getEncoding] is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    const-string v1, "Caption"

    if-nez v0, :cond_12

    .line 374
    const-string/jumbo v0, "getLanguageList language is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 378
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v0, "languageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v4, "getLanguageList [add language]"

    if-eqz v2, :cond_53

    .line 380
    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "languageArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v3, :cond_52

    aget-object v6, v2, v5

    .line 382
    .local v6, "language":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v6    # "language":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 385
    .end local v2    # "languageArray":[Ljava/lang/String;
    :cond_52
    goto :goto_76

    .line 386
    :cond_53
    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_76
    return-object v0
.end method

.method public getLanguageToString()Ljava/lang/String;
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    const-string v1, "Caption"

    if-nez v0, :cond_e

    .line 402
    const-string v0, "[getLanguageToString] mLanguage is null - return empty string"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, ""

    return-object v0

    .line 405
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getLanguageToString] is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mName:Ljava/lang/String;

    const-string v1, "Caption"

    if-nez v0, :cond_e

    .line 301
    const-string v0, "[getName] mName is null - return empty string"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, ""

    return-object v0

    .line 304
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getName] mName is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUri()Ljava/lang/String;
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mResourceUri:Ljava/lang/String;

    const-string v1, "Caption"

    if-nez v0, :cond_e

    .line 320
    const-string v0, "[getResourceUri] mResourceUri is null - return empty string"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, ""

    return-object v0

    .line 323
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getResourceUri] mResourceUri is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/Caption;->mResourceUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mResourceUri:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptionType(Lcom/samsung/android/allshare/Caption$CaptionType;)V
    .registers 5
    .param p1, "captionType"    # Lcom/samsung/android/allshare/Caption$CaptionType;

    .line 250
    const-string v0, "Caption"

    if-nez p1, :cond_b

    .line 251
    const-string v1, "[setCaptionType] captionType is null - set UNKNOWN"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object p1, Lcom/samsung/android/allshare/Caption$CaptionType;->UNKNOWN:Lcom/samsung/android/allshare/Caption$CaptionType;

    .line 254
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCaptionType] captionType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/allshare/Caption$CaptionType;->-$$Nest$fgetenumString(Lcom/samsung/android/allshare/Caption$CaptionType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {p1}, Lcom/samsung/android/allshare/Caption$CaptionType;->-$$Nest$fgetenumString(Lcom/samsung/android/allshare/Caption$CaptionType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionType:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setCaptionUri(Ljava/lang/String;)V
    .registers 5
    .param p1, "captionUri"    # Ljava/lang/String;

    .line 234
    const-string v0, "Caption"

    if-nez p1, :cond_b

    .line 235
    const-string v1, "[setCaptionUri] captionUri is null - set empty string"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string p1, ""

    .line 238
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCaptionUri] captionUri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 5
    .param p1, "encoding"    # Ljava/lang/String;

    .line 282
    const-string v0, "Caption"

    if-nez p1, :cond_b

    .line 283
    const-string v1, "[setEncoding] encoding is null - set empty string"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string p1, ""

    .line 286
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEncoding] encoding is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lcom/samsung/android/allshare/Caption;->mEncoding:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 5
    .param p1, "language"    # Ljava/lang/String;

    .line 266
    const-string v0, "Caption"

    if-nez p1, :cond_b

    .line 267
    const-string v1, "[setLanguage] language is null - set empty string"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string p1, ""

    .line 270
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setLanguage] language is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 202
    const-string v0, "Caption"

    if-nez p1, :cond_b

    .line 203
    const-string v1, "[setName] name is null - set empty string"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string p1, ""

    .line 206
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setName] name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/samsung/android/allshare/Caption;->mName:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setResourceUri(Ljava/lang/String;)V
    .registers 5
    .param p1, "resourceUri"    # Ljava/lang/String;

    .line 218
    const-string v0, "Caption"

    if-nez p1, :cond_b

    .line 219
    const-string v1, "[setResourceUri] resourceUri is null - set empty string"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string p1, ""

    .line 222
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setResourceUri] resourceUri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/samsung/android/allshare/Caption;->mResourceUri:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caption ResourceURI["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/Caption;->mResourceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/Caption;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] CaptionURI["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] CaptionType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/Caption;->mCaptionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Language["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] encoding["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/Caption;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 537
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mResourceUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mCaptionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/samsung/android/allshare/Caption;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    return-void
.end method
