.class public Landroid/audio/policy/configuration/V7_0/SurroundSound;
.super Ljava/lang/Object;
.source "SurroundSound.java"


# instance fields
.field private formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundSound;
    .registers 8
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 22
    new-instance v0, Landroid/audio/policy/configuration/V7_0/SurroundSound;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/SurroundSound;-><init>()V

    .line 23
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/SurroundSound;
    const/4 v1, 0x0

    .line 24
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 26
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_35

    if-eq v4, v6, :cond_35

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 29
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "_tagName":Ljava/lang/String;
    const-string v5, "formats"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 31
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    move-result-object v5

    .line 32
    .local v5, "_value":Landroid/audio/policy/configuration/V7_0/SurroundFormats;
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/SurroundSound;->setFormats(Landroid/audio/policy/configuration/V7_0/SurroundFormats;)V

    .line 33
    .end local v5    # "_value":Landroid/audio/policy/configuration/V7_0/SurroundFormats;
    goto :goto_34

    .line 34
    :cond_31
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 36
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_34
    goto :goto_a

    .line 37
    :cond_35
    if-ne v4, v6, :cond_38

    .line 40
    return-object v0

    .line 38
    :cond_38
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "SurroundSound is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getFormats()Landroid/audio/policy/configuration/V7_0/SurroundFormats;
    .registers 2

    .line 7
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    return-object v0
.end method

.method hasFormats()Z
    .registers 2

    .line 11
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    if-nez v0, :cond_6

    .line 12
    const/4 v0, 0x0

    return v0

    .line 14
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setFormats(Landroid/audio/policy/configuration/V7_0/SurroundFormats;)V
    .registers 2
    .param p1, "formats"    # Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    .line 18
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    .line 19
    return-void
.end method
