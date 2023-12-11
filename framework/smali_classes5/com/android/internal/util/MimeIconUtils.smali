.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "MimeIconUtils.java"


# static fields
.field private static final sCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver$MimeTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/MimeIconUtils;->sCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildGenericTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 227
    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 228
    const v0, 0x10407c2

    const v1, 0x10407c3

    const v2, 0x10803cb

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 230
    :cond_16
    const-string/jumbo v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 231
    const v0, 0x10407d1

    const v1, 0x10407d2

    const v2, 0x10803dc

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 233
    :cond_2d
    const-string/jumbo v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 234
    const v0, 0x10407cb

    const v1, 0x10407cc

    const v2, 0x10803d6

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 236
    :cond_44
    const-string/jumbo v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 237
    const v0, 0x10407c6

    const v1, 0x10407c7

    const v2, 0x10803db

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 244
    :cond_5b
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    .line 245
    .local v0, "mimeMap":Llibcore/content/type/MimeMap;
    nop

    .line 246
    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "bouncedMimeType":Ljava/lang/String;
    if-eqz v1, :cond_75

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 248
    invoke-static {v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    return-object v2

    .line 252
    :cond_75
    const v2, 0x10407c9

    const v3, 0x10407ca

    const v4, 0x10803d5

    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    return-object v2
.end method

.method private static buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 11
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_610

    :cond_8
    goto/16 :goto_54f

    :sswitch_a
    const-string/jumbo v0, "text/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x27

    goto/16 :goto_550

    :sswitch_17
    const-string/jumbo v0, "text/x-c++src"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x15

    goto/16 :goto_550

    :sswitch_24
    const-string/jumbo v0, "text/x-c++hdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x14

    goto/16 :goto_550

    :sswitch_31
    const-string v0, "application/x-x509-user-cert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_550

    :sswitch_3d
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6a

    goto/16 :goto_550

    :sswitch_49
    const-string v0, "application/rdf+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_550

    :sswitch_55
    const-string v0, "application/mac-binhex40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x29

    goto/16 :goto_550

    :sswitch_61
    const-string v0, "application/x-quicktimeplayer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x64

    goto/16 :goto_550

    :sswitch_6d
    const-string v0, "application/x-webarchive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x35

    goto/16 :goto_550

    :sswitch_79
    const-string v0, "application/x-font-woff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x41

    goto/16 :goto_550

    :sswitch_85
    const-string v0, "application/vnd.stardivision.writer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5c

    goto/16 :goto_550

    :sswitch_91
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x51

    goto/16 :goto_550

    :sswitch_9d
    const-string v0, "application/x-kspread"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x56

    goto/16 :goto_550

    :sswitch_a9
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6f

    goto/16 :goto_550

    :sswitch_b5
    const-string v0, "application/x-pkcs12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto/16 :goto_550

    :sswitch_c0
    const-string v0, "application/x-object"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_550

    :sswitch_cc
    const-string v0, "application/font-woff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x40

    goto/16 :goto_550

    :sswitch_d8
    const-string v0, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x59

    goto/16 :goto_550

    :sswitch_e4
    const-string v0, "application/x-7z-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x38

    goto/16 :goto_550

    :sswitch_f0
    const-string v0, "application/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x25

    goto/16 :goto_550

    :sswitch_fc
    const-string v0, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4f

    goto/16 :goto_550

    :sswitch_108
    const-string v0, "application/x-latex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    goto/16 :goto_550

    :sswitch_114
    const-string v0, "application/x-kword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x62

    goto/16 :goto_550

    :sswitch_120
    const-string v0, "application/vnd.sun.xml.impress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    goto/16 :goto_550

    :sswitch_12c
    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x44

    goto/16 :goto_550

    :sswitch_138
    const-string v0, "application/x-debian-package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2d

    goto/16 :goto_550

    :sswitch_144
    const-string v0, "application/x-apple-diskimage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2c

    goto/16 :goto_550

    :sswitch_150
    const-string/jumbo v0, "text/x-haskell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1a

    goto/16 :goto_550

    :sswitch_15d
    const-string v0, "application/x-pkcs7-crl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto/16 :goto_550

    :sswitch_168
    const-string v0, "application/x-gtar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2e

    goto/16 :goto_550

    :sswitch_174
    const-string v0, "application/x-font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3f

    goto/16 :goto_550

    :sswitch_180
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x68

    goto/16 :goto_550

    :sswitch_18c
    const-string v0, "application/x-pkcs7-certificates"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_550

    :sswitch_198
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x66

    goto/16 :goto_550

    :sswitch_1a4
    const-string v0, "application/x-abiword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x61

    goto/16 :goto_550

    :sswitch_1b0
    const-string/jumbo v0, "text/x-tex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1f

    goto/16 :goto_550

    :sswitch_1bd
    const-string/jumbo v0, "text/x-tcl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1e

    goto/16 :goto_550

    :sswitch_1ca
    const-string/jumbo v0, "text/x-csh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x19

    goto/16 :goto_550

    :sswitch_1d7
    const-string/jumbo v0, "text/vcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3c

    goto/16 :goto_550

    :sswitch_1e4
    const-string v0, "application/vnd.google-apps.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x63

    goto/16 :goto_550

    :sswitch_1f0
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6e

    goto/16 :goto_550

    :sswitch_1fc
    const-string v0, "application/vnd.stardivision.impress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4b

    goto/16 :goto_550

    :sswitch_208
    const-string v0, "application/x-texinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x21

    goto/16 :goto_550

    :sswitch_214
    const-string v0, "application/xhtml+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_550

    :sswitch_220
    const-string v0, "application/vnd.stardivision.writer-global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5d

    goto/16 :goto_550

    :sswitch_22c
    const-string/jumbo v0, "text/x-vcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3b

    goto/16 :goto_550

    :sswitch_239
    const-string v0, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x43

    goto/16 :goto_550

    :sswitch_245
    const-string v0, "application/pgp-keys"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto/16 :goto_550

    :sswitch_250
    const-string v0, "application/x-rar-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3a

    goto/16 :goto_550

    :sswitch_25c
    const-string v0, "application/ecmascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x23

    goto/16 :goto_550

    :sswitch_268
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_550

    :sswitch_274
    const-string/jumbo v0, "text/x-vcalendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3e

    goto/16 :goto_550

    :sswitch_281
    const-string v0, "application/vnd.google-apps.drawing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x49

    goto/16 :goto_550

    :sswitch_28d
    const-string v0, "application/x-stuffit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x33

    goto/16 :goto_550

    :sswitch_299
    const-string v0, "application/pgp-signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto/16 :goto_550

    :sswitch_2a4
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_550

    :sswitch_2af
    const-string v0, "application/x-iso9660-image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2f

    goto/16 :goto_550

    :sswitch_2bb
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x24

    goto/16 :goto_550

    :sswitch_2c7
    const-string v0, "application/gzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x37

    goto/16 :goto_550

    :sswitch_2d3
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x52

    goto/16 :goto_550

    :sswitch_2df
    const-string v0, "application/x-font-ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    goto/16 :goto_550

    :sswitch_2eb
    const-string v0, "application/x-pkcs7-mime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_550

    :sswitch_2f7
    const-string/jumbo v0, "text/x-java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1b

    goto/16 :goto_550

    :sswitch_304
    const-string/jumbo v0, "text/x-dsrc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x18

    goto/16 :goto_550

    :sswitch_311
    const-string/jumbo v0, "text/x-csrc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x17

    goto/16 :goto_550

    :sswitch_31e
    const-string/jumbo v0, "text/x-chdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x16

    goto/16 :goto_550

    :sswitch_32b
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x69

    goto/16 :goto_550

    :sswitch_337
    const-string v0, "application/vnd.sun.xml.impress.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4d

    goto/16 :goto_550

    :sswitch_343
    const-string v0, "application/x-webarchive-xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x36

    goto/16 :goto_550

    :sswitch_34f
    const-string v0, "application/vnd.sun.xml.writer.global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5f

    goto/16 :goto_550

    :sswitch_35b
    const-string v0, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5b

    goto/16 :goto_550

    :sswitch_367
    const-string v0, "application/x-javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x28

    goto/16 :goto_550

    :sswitch_373
    const-string v0, "application/vnd.sun.xml.draw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x47

    goto/16 :goto_550

    :sswitch_37f
    const-string v0, "application/vnd.sun.xml.calc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x54

    goto/16 :goto_550

    :sswitch_38b
    const-string v0, "application/vnd.google-apps.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x50

    goto/16 :goto_550

    :sswitch_397
    const-string/jumbo v0, "text/calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3d

    goto/16 :goto_550

    :sswitch_3a4
    const-string/jumbo v0, "text/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_550

    :sswitch_3b1
    const-string/jumbo v0, "text/css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_550

    :sswitch_3be
    const-string v0, "application/vnd.sun.xml.draw.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x48

    goto/16 :goto_550

    :sswitch_3ca
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x67

    goto/16 :goto_550

    :sswitch_3d6
    const-string v0, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6c

    goto/16 :goto_550

    :sswitch_3e2
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6d

    goto/16 :goto_550

    :sswitch_3ee
    const-string/jumbo v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_550

    :sswitch_3fb
    const-string v0, "application/x-pkcs7-certreqresp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto/16 :goto_550

    :sswitch_406
    const-string v0, "application/x-pkcs7-signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto/16 :goto_550

    :sswitch_412
    const-string v0, "application/zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2b

    goto/16 :goto_550

    :sswitch_41e
    const-string v0, "application/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x26

    goto/16 :goto_550

    :sswitch_42a
    const-string v0, "application/rar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2a

    goto/16 :goto_550

    :sswitch_436
    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4a

    goto/16 :goto_550

    :sswitch_442
    const-string/jumbo v0, "inode/directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_550

    :sswitch_44e
    const-string v0, "application/atom+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x22

    goto/16 :goto_550

    :sswitch_45a
    const-string v0, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5a

    goto/16 :goto_550

    :sswitch_466
    const-string v0, "application/x-shockwave-flash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x65

    goto/16 :goto_550

    :sswitch_472
    const-string v0, "application/x-tar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x34

    goto/16 :goto_550

    :sswitch_47e
    const-string v0, "application/x-lzx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x32

    goto/16 :goto_550

    :sswitch_48a
    const-string v0, "application/x-lzh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x31

    goto/16 :goto_550

    :sswitch_496
    const-string v0, "application/x-lha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x30

    goto/16 :goto_550

    :sswitch_4a2
    const-string v0, "application/x-deb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x39

    goto/16 :goto_550

    :sswitch_4ae
    const-string v0, "application/x-kpresenter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4e

    goto/16 :goto_550

    :sswitch_4ba
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6b

    goto/16 :goto_550

    :sswitch_4c6
    const-string v0, "application/vnd.sun.xml.calc.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x55

    goto/16 :goto_550

    :sswitch_4d2
    const-string v0, "application/vnd.sun.xml.writer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5e

    goto/16 :goto_550

    :sswitch_4de
    const-string v0, "application/vnd.oasis.opendocument.text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x58

    goto/16 :goto_550

    :sswitch_4ea
    const-string v0, "application/vnd.sun.xml.writer.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x60

    goto :goto_550

    :sswitch_4f5
    const-string v0, "application/vnd.oasis.opendocument.image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x45

    goto :goto_550

    :sswitch_500
    const-string/jumbo v0, "text/x-pascal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1d

    goto :goto_550

    :sswitch_50c
    const-string v0, "application/rss+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto :goto_550

    :sswitch_517
    const-string/jumbo v0, "text/x-literate-haskell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1c

    goto :goto_550

    :sswitch_523
    const-string v0, "application/x-x509-ca-cert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_550

    :sswitch_52e
    const-string v0, "application/vnd.google-apps.spreadsheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x57

    goto :goto_550

    :sswitch_539
    const-string v0, "application/vnd.stardivision.draw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x46

    goto :goto_550

    :sswitch_544
    const-string v0, "application/vnd.stardivision.calc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x53

    goto :goto_550

    :goto_54f
    move v0, v1

    :goto_550
    const v2, 0x10407d0

    const v3, 0x10407cf

    const v4, 0x10407ce

    const v5, 0x10407cd

    const v6, 0x10407c7

    const v7, 0x10407c6

    const v8, 0x10407ca

    const v9, 0x10407c9

    packed-switch v0, :pswitch_data_7d2

    .line 221
    invoke-static {p0}, Lcom/android/internal/util/MimeIconUtils;->buildGenericTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 217
    :pswitch_570
    const v0, 0x10803d8

    invoke-static {p0, v0, v5, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_578
    const v0, 0x10803d2

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_580
    const v0, 0x10803dd

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_588
    const v0, 0x10407d1

    const v1, 0x10407d2

    const v2, 0x10803dc

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_596
    const v0, 0x10803d0

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_59e
    const v0, 0x10803da

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 168
    :pswitch_5a6
    const v0, 0x10803d9

    invoke-static {p0, v0, v5, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_5ae
    const v0, 0x10803d7

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 155
    :pswitch_5b6
    const v0, 0x10407cb

    const v1, 0x10407cc

    const v2, 0x10803d6

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_5c4
    const v0, 0x10803d4

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_5cc
    const v0, 0x10803d1

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_5d4
    const v0, 0x10803cf

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_5dc
    const v0, 0x10407c4

    const v1, 0x10407c5

    const v2, 0x10803ce

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_5ea
    const v0, 0x10803cd

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_5f2
    const v0, 0x10803cc

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_5fa
    const v0, 0x10803ca

    const v2, 0x10407c1

    invoke-static {p0, v0, v2, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_605
    const v0, 0x10803d3

    const v2, 0x10407c8

    invoke-static {p0, v0, v2, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :sswitch_data_610
    .sparse-switch
        -0x7f44465d -> :sswitch_544
        -0x7f43936e -> :sswitch_539
        -0x7955041d -> :sswitch_52e
        -0x76852540 -> :sswitch_523
        -0x72487174 -> :sswitch_517
        -0x70497061 -> :sswitch_50c
        -0x6bce7a7d -> :sswitch_500
        -0x69ebbc0a -> :sswitch_4f5
        -0x68255665 -> :sswitch_4ea
        -0x667e94ce -> :sswitch_4de
        -0x610e9853 -> :sswitch_4d2
        -0x5ed1e487 -> :sswitch_4c6
        -0x59c3e1a9 -> :sswitch_4ba
        -0x529f368f -> :sswitch_4ae
        -0x505c7453 -> :sswitch_4a2
        -0x505c55ef -> :sswitch_496
        -0x505c53ba -> :sswitch_48a
        -0x505c53aa -> :sswitch_47e
        -0x505c38af -> :sswitch_472
        -0x4f184216 -> :sswitch_466
        -0x4e7ea34b -> :sswitch_45a
        -0x4d468544 -> :sswitch_44e
        -0x4d29f4b7 -> :sswitch_442
        -0x4a68144d -> :sswitch_436
        -0x4a680d1c -> :sswitch_42a
        -0x4a67f528 -> :sswitch_41e
        -0x4a67ee1e -> :sswitch_412
        -0x46f4a83d -> :sswitch_406
        -0x442bbceb -> :sswitch_3fb
        -0x4081b8b3 -> :sswitch_3ee
        -0x3ffe58cb -> :sswitch_3e2
        -0x3fe2a28f -> :sswitch_3d6
        -0x3ea35d2d -> :sswitch_3ca
        -0x3d99ba96 -> :sswitch_3be
        -0x3be339df -> :sswitch_3b1
        -0x3be2ebcb -> :sswitch_3a4
        -0x39206620 -> :sswitch_397
        -0x38b79e1d -> :sswitch_38b
        -0x2e7d3bf1 -> :sswitch_37f
        -0x2e7c8902 -> :sswitch_373
        -0x2b19e7bf -> :sswitch_367
        -0x28553dc7 -> :sswitch_35b
        -0x1c904afc -> :sswitch_34f
        -0x1978be74 -> :sswitch_343
        -0x17a6095d -> :sswitch_337
        -0x15d566cf -> :sswitch_32b
        -0xf95e0f6 -> :sswitch_31e
        -0xf95b608 -> :sswitch_311
        -0xf9541a9 -> :sswitch_304
        -0xf92ca87 -> :sswitch_2f7
        -0xd9915b7 -> :sswitch_2eb
        -0xd3a98c4 -> :sswitch_2df
        -0x6850aa0 -> :sswitch_2d3
        -0x29e3947 -> :sswitch_2c7
        -0x29cf5b9 -> :sswitch_2bb
        0x19ac196 -> :sswitch_2af
        0x4d6213b -> :sswitch_2a4
        0x9c18ec5 -> :sswitch_299
        0xabdbfcb -> :sswitch_28d
        0xea677b5 -> :sswitch_281
        0xfa318bd -> :sswitch_274
        0x12030ada -> :sswitch_268
        0x120a481c -> :sswitch_25c
        0x15b1ac3f -> :sswitch_250
        0x1785e3c7 -> :sswitch_245
        0x198f4610 -> :sswitch_239
        0x1de3300f -> :sswitch_22c
        0x22098aaf -> :sswitch_220
        0x23fe04b0 -> :sswitch_214
        0x26370b01 -> :sswitch_208
        0x27e80391 -> :sswitch_1fc
        0x2967ba15 -> :sswitch_1f0
        0x2ac50064 -> :sswitch_1e4
        0x31080524 -> :sswitch_1d7
        0x310bafc1 -> :sswitch_1ca
        0x310beda6 -> :sswitch_1bd
        0x310bedf0 -> :sswitch_1b0
        0x33351d1e -> :sswitch_1a4
        0x35ebd34f -> :sswitch_198
        0x3e33d2d1 -> :sswitch_18c
        0x3f3a9e32 -> :sswitch_180
        0x44cefa23 -> :sswitch_174
        0x44cf7fb2 -> :sswitch_168
        0x49e22528 -> :sswitch_15d
        0x4ad1033d -> :sswitch_150
        0x4c7ff8d7 -> :sswitch_144
        0x4dd74e02 -> :sswitch_138
        0x5218db97 -> :sswitch_12c
        0x527dd1a5 -> :sswitch_120
        0x555a66a1 -> :sswitch_114
        0x555e8f3e -> :sswitch_108
        0x55a6501f -> :sswitch_fc
        0x55db338c -> :sswitch_f0
        0x56aaa917 -> :sswitch_e4
        0x57208d5d -> :sswitch_d8
        0x598d9a57 -> :sswitch_cc
        0x5b9b6c13 -> :sswitch_c0
        0x5dcc17e0 -> :sswitch_b5
        0x5e059df3 -> :sswitch_a9
        0x6196074a -> :sswitch_9d
        0x61f85627 -> :sswitch_91
        0x63c34841 -> :sswitch_85
        0x65e8cb02 -> :sswitch_79
        0x6e61adc2 -> :sswitch_6d
        0x6f632747 -> :sswitch_61
        0x7422834d -> :sswitch_55
        0x7566acc1 -> :sswitch_49
        0x76d7a0a2 -> :sswitch_3d
        0x79ada833 -> :sswitch_31
        0x7ae8e8aa -> :sswitch_24
        0x7ae91398 -> :sswitch_17
        0x7f17578f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_7d2
    .packed-switch 0x0
        :pswitch_605
        :pswitch_605
        :pswitch_5fa
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5f2
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5ea
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5dc
        :pswitch_5d4
        :pswitch_5d4
        :pswitch_5cc
        :pswitch_5cc
        :pswitch_5c4
        :pswitch_5c4
        :pswitch_5c4
        :pswitch_5c4
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5b6
        :pswitch_5ae
        :pswitch_5a6
        :pswitch_5a6
        :pswitch_5a6
        :pswitch_5a6
        :pswitch_5a6
        :pswitch_5a6
        :pswitch_59e
        :pswitch_59e
        :pswitch_59e
        :pswitch_59e
        :pswitch_59e
        :pswitch_59e
        :pswitch_59e
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_596
        :pswitch_588
        :pswitch_588
        :pswitch_580
        :pswitch_580
        :pswitch_580
        :pswitch_578
        :pswitch_578
        :pswitch_578
        :pswitch_570
        :pswitch_570
        :pswitch_570
        :pswitch_570
    .end packed-switch
.end method

.method private static buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "iconId"    # I
    .param p2, "labelId"    # I
    .param p3, "extLabelId"    # I

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "ext":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, -0x1

    if-eq p3, v2, :cond_24

    .line 47
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "label":Ljava/lang/CharSequence;
    goto :goto_28

    .line 49
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_24
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .restart local v2    # "label":Ljava/lang/CharSequence;
    :goto_28
    new-instance v3, Landroid/content/ContentResolver$MimeTypeInfo;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-direct {v3, v4, v2, v2}, Landroid/content/ContentResolver$MimeTypeInfo;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method public static getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 258
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 260
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 261
    :try_start_9
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver$MimeTypeInfo;

    .line 262
    .local v1, "res":Landroid/content/ContentResolver$MimeTypeInfo;
    if-nez v1, :cond_19

    .line 263
    invoke-static {p0}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    move-object v1, v2

    .line 264
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_19
    monitor-exit v0

    return-object v1

    .line 267
    .end local v1    # "res":Landroid/content/ContentResolver$MimeTypeInfo;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v1
.end method
