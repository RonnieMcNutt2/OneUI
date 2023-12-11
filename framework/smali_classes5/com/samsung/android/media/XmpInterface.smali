.class public Lcom/samsung/android/media/XmpInterface;
.super Ljava/lang/Object;
.source "XmpInterface.java"


# static fields
.field private static final NAME_DESCRIPTION:Ljava/lang/String; = "Description"

.field private static final NAME_HAS_EXTENDED_XMP:Ljava/lang/String; = "HasExtendedXMP"

.field private static final NAME_MOTIONPHOTO:Ljava/lang/String; = "MotionPhoto"

.field private static final NAME_VERSION:Ljava/lang/String; = "Version"

.field private static final NS_EXTENTION:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/"

.field private static final NS_GCamera:Ljava/lang/String; = "http://ns.google.com/photos/1.0/camera/"

.field private static final NS_HDRGM:Ljava/lang/String; = "http://ns.adobe.com/hdr-gain-map/1.0/"

.field private static final NS_RDF:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final NS_XMP:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final NS_XMPNOTE:Ljava/lang/String; = "http://ns.adobe.com/xmp/note/"

.field private static final TAG:Ljava/lang/String; = "XmpInterface"


# instance fields
.field private mHasExtendedXMP:Ljava/lang/String;

.field private mHdrgmVersion:Ljava/lang/String;

.field private mMotionPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 10
    .param p1, "rawXmp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 59
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 62
    :goto_15
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_6e

    .line 63
    const/4 v2, 0x2

    if-eq v3, v2, :cond_21

    .line 64
    goto :goto_15

    .line 67
    :cond_21
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "ns":Ljava/lang/String;
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    const-string v5, "Description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 71
    iget-object v5, p0, Lcom/samsung/android/media/XmpInterface;->mHasExtendedXMP:Ljava/lang/String;

    const-string/jumbo v6, "http://ns.adobe.com/xmp/note/"

    const-string v7, "HasExtendedXMP"

    .line 72
    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {v5, v6}, Lcom/samsung/android/media/XmpInterface;->maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/media/XmpInterface;->mHasExtendedXMP:Ljava/lang/String;

    .line 73
    iget-object v5, p0, Lcom/samsung/android/media/XmpInterface;->mHdrgmVersion:Ljava/lang/String;

    const-string/jumbo v6, "http://ns.adobe.com/hdr-gain-map/1.0/"

    const-string v7, "Version"

    .line 74
    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-static {v5, v6}, Lcom/samsung/android/media/XmpInterface;->maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/media/XmpInterface;->mHdrgmVersion:Ljava/lang/String;

    .line 75
    iget-object v5, p0, Lcom/samsung/android/media/XmpInterface;->mMotionPhoto:Ljava/lang/String;

    const-string/jumbo v6, "http://ns.google.com/photos/1.0/camera/"

    const-string v7, "MotionPhoto"

    .line 76
    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v5, v6}, Lcom/samsung/android/media/XmpInterface;->maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/media/XmpInterface;->mMotionPhoto:Ljava/lang/String;
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_6d} :catch_7e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_6d} :catch_70

    .line 78
    .end local v2    # "ns":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6d
    goto :goto_15

    .line 84
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :cond_6e
    nop

    .line 85
    return-void

    .line 81
    :catch_70
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "XmpInterface"

    const-string v3, "Couldn\'t read large xmp"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 79
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_7e
    move-exception v1

    .line 80
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "existing"    # Ljava/lang/String;
    .param p1, "current"    # Ljava/lang/String;

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 90
    return-object p0

    .line 91
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 93
    return-object p1

    .line 96
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getHdrgmVersion()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/media/XmpInterface;->mHdrgmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionPhoto()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/media/XmpInterface;->mMotionPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getNameHasExtendedXmp()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/media/XmpInterface;->mHasExtendedXMP:Ljava/lang/String;

    return-object v0
.end method
