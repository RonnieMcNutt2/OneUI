.class public Lcom/samsung/android/wallpaperbackup/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentElement:Z

.field private mCurrentValue:Ljava/lang/String;

.field private mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

.field private mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "fileName"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 37
    const-string v0, "XmlParser"

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->TAG:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    .line 44
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 46
    .local v1, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v2, 0x0

    .line 48
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1d
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 49
    .local v3, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 50
    .local v4, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-interface {v4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 52
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 54
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 55
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v0, "objSource":Lorg/xml/sax/InputSource;
    invoke-interface {v4, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 57
    .end local v0    # "objSource":Lorg/xml/sax/InputSource;
    goto :goto_64

    .line 58
    :cond_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xml file is not exists. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d .. :try_end_64} :catch_86
    .catch Lorg/xml/sax/SAXException; {:try_start_1d .. :try_end_64} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_64} :catch_72
    .catchall {:try_start_1d .. :try_end_64} :catchall_70

    .line 68
    .end local v3    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xmlReader":Lorg/xml/sax/XMLReader;
    .end local v5    # "file":Ljava/io/File;
    :goto_64
    if-eqz v2, :cond_6f

    .line 69
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6f

    .line 71
    :catch_6a
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_90

    .line 73
    :cond_6f
    :goto_6f
    goto :goto_90

    .line 67
    :catchall_70
    move-exception v0

    goto :goto_91

    .line 64
    :catch_72
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_70

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6f

    .line 69
    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_6a

    goto :goto_6f

    .line 62
    :catch_7c
    move-exception v0

    .line 63
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_7d
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_70

    .line 68
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    if-eqz v2, :cond_6f

    .line 69
    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_6a

    goto :goto_6f

    .line 60
    :catch_86
    move-exception v0

    .line 61
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_87
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_70

    .line 68
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    if-eqz v2, :cond_6f

    .line 69
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_6a

    goto :goto_6f

    .line 75
    :goto_90
    return-void

    .line 68
    :goto_91
    if-eqz v2, :cond_9c

    .line 69
    :try_start_93
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9c

    .line 71
    :catch_97
    move-exception v3

    .line 72
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    .line 73
    .end local v3    # "e":Ljava/io/IOException;
    :cond_9c
    :goto_9c
    nop

    .line 74
    :goto_9d
    throw v0
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    if-eqz v0, :cond_1e

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 144
    :cond_1e
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 102
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 103
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWidth(I)V

    goto/16 :goto_159

    .line 104
    :cond_19
    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 105
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setHeight(I)V

    goto/16 :goto_159

    .line 106
    :cond_2f
    const-string/jumbo v0, "transparency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 107
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTransparency(I)V

    goto/16 :goto_159

    .line 108
    :cond_45
    const-string v0, "devicetype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 109
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setDeviceType(Ljava/lang/String;)V

    goto/16 :goto_159

    .line 110
    :cond_56
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 111
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setPath(Ljava/lang/String;)V

    goto/16 :goto_159

    .line 112
    :cond_68
    const-string v0, "component"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 113
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setComponent(Ljava/lang/String;)V

    goto/16 :goto_159

    .line 114
    :cond_79
    const-string/jumbo v0, "wpType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 115
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setWpType(I)V

    goto/16 :goto_159

    .line 116
    :cond_8f
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 117
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_159

    .line 118
    :cond_a5
    const-string v0, "externalParams"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 119
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setExternalParams(Ljava/lang/String;)V

    goto/16 :goto_159

    .line 120
    :cond_b6
    const-string/jumbo v0, "orientation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 121
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setOrientation(I)V

    goto/16 :goto_159

    .line 122
    :cond_cc
    const-string/jumbo v0, "tiltSetting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTiltSettingValue(I)V

    goto/16 :goto_159

    .line 124
    :cond_e2
    const-string/jumbo v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 125
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setLeftValue(I)V

    goto :goto_159

    .line 126
    :cond_f7
    const-string/jumbo v0, "top"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 127
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setTopValue(I)V

    goto :goto_159

    .line 128
    :cond_10c
    const-string/jumbo v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 129
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRightValue(I)V

    goto :goto_159

    .line 130
    :cond_121
    const-string v0, "bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 131
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setBottomValue(I)V

    goto :goto_159

    .line 132
    :cond_135
    const-string/jumbo v0, "rotation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 133
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setRotationValue(I)V

    goto :goto_159

    .line 134
    :cond_14a
    const-string v0, "covertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 135
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    iget-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->setCoverType(Ljava/lang/String;)V

    .line 137
    :cond_159
    :goto_159
    return-void
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wallpaperbackup/WallpaperUser;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getObject()Lcom/samsung/android/wallpaperbackup/WallpaperUser;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentElement:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mCurrentValue:Ljava/lang/String;

    .line 90
    const-string v0, "User"

    .line 92
    .local v0, "objListTag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 93
    new-instance v1, Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    invoke-direct {v1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItem:Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 94
    iget-object v2, p0, Lcom/samsung/android/wallpaperbackup/XmlParser;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1b
    return-void
.end method
