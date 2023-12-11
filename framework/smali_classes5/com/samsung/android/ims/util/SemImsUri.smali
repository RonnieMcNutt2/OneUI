.class public Lcom/samsung/android/ims/util/SemImsUri;
.super Ljava/lang/Object;
.source "SemImsUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/util/SemImsUri$UriType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/util/SemImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SemImsUri"

.field private static final PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;


# instance fields
.field private mMsisdn:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;

.field private mSipUri:Lgov/nist/javax/sip/address/SipUri;

.field private mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

.field private mUriToString:Ljava/lang/String;

.field private mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

.field private mUrn:Ljava/lang/String;

.field private mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/ims/util/SemImsUri;->DBG:Z

    .line 35
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    .line 182
    new-instance v0, Lcom/samsung/android/ims/util/SemImsUri$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/util/SemImsUri$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/util/SemImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 107
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/util/SemImsUri;->readFromParcel(Landroid/os/Parcel;)V

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/util/SemImsUri-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/util/SemImsUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/ims/util/SemTelUri;)V
    .registers 4
    .param p1, "uri"    # Lcom/samsung/android/ims/util/SemTelUri;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    .line 165
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    .line 167
    if-eqz p1, :cond_1d

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/ims/util/SemTelUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    invoke-virtual {v1}, Lcom/samsung/android/ims/util/SemTelUri;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    goto :goto_21

    .line 171
    :cond_1d
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 174
    :goto_21
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 175
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->TEL_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 176
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private constructor <init>(Lgov/nist/javax/sip/address/SipUri;)V
    .registers 6
    .param p1, "uri"    # Lgov/nist/javax/sip/address/SipUri;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    .line 134
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 136
    if-eqz p1, :cond_3c

    .line 137
    invoke-virtual {p1}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    if-nez v1, :cond_25

    .line 140
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    goto :goto_42

    .line 142
    :cond_25
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 143
    .local v1, "index":I
    if-lez v1, :cond_37

    .line 144
    iget-object v2, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    goto :goto_3b

    .line 146
    :cond_37
    iget-object v2, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 148
    .end local v1    # "index":I
    :goto_3b
    goto :goto_42

    .line 150
    :cond_3c
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 154
    :goto_42
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 155
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "urn"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    .line 118
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUrn:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 121
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->URN:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 123
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemImsUri;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 67
    return-object v0

    .line 71
    :cond_4
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 74
    .local v1, "i":I
    const-string/jumbo v2, "xxxxx"

    const-string v3, "SemImsUri"

    if-gez v1, :cond_3a

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse: illegal Uri - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/ims/util/SemImsUri;->DBG:Z

    if-eqz v5, :cond_2e

    move-object v2, p0

    :cond_2e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0

    .line 78
    :cond_3a
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "scheme":Ljava/lang/String;
    :try_start_3f
    const-string/jumbo v5, "sip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_75

    const-string/jumbo v5, "sips"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_75

    .line 84
    :cond_52
    const-string/jumbo v5, "tel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 85
    new-instance v5, Lcom/samsung/android/ims/util/SemImsUri;

    invoke-static {p0}, Lcom/samsung/android/ims/util/SemTelUri;->parseUri(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemTelUri;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/ims/util/SemImsUri;-><init>(Lcom/samsung/android/ims/util/SemTelUri;)V

    return-object v5

    .line 86
    :cond_65
    const-string/jumbo v5, "urn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 87
    new-instance v5, Lcom/samsung/android/ims/util/SemImsUri;

    invoke-direct {v5, p0}, Lcom/samsung/android/ims/util/SemImsUri;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 92
    :cond_74
    goto :goto_af

    .line 82
    :cond_75
    :goto_75
    new-instance v5, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v5, p0}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    .line 83
    .local v5, "parse":Lgov/nist/javax/sip/parser/URLParser;
    new-instance v6, Lcom/samsung/android/ims/util/SemImsUri;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/ims/util/SemImsUri;-><init>(Lgov/nist/javax/sip/address/SipUri;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_84} :catch_85

    return-object v6

    .line 89
    .end local v5    # "parse":Lgov/nist/javax/sip/parser/URLParser;
    :catch_85
    move-exception v5

    .line 90
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse: failured. uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/ims/util/SemImsUri;->DBG:Z

    if-eqz v7, :cond_97

    move-object v2, p0

    :cond_97
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " e="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_af
    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ims/util/SemImsUri$UriType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemImsUri$UriType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUriType()Lcom/samsung/android/ims/util/SemImsUri$UriType;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .registers 2
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setUriType(Ljava/lang/String;)V
    .registers 4
    .param p1, "uriType"    # Ljava/lang/String;

    .line 265
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/ims/util/SemImsUri$UriType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemImsUri$UriType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    .line 268
    goto :goto_c

    .line 266
    :catch_7
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/samsung/android/ims/util/SemImsUri$UriType;->SIP_URI:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    iput-object v1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    .line 269
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 312
    return-object v0

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 314
    return-object v0

    .line 315
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mTelUri:Lcom/samsung/android/ims/util/SemTelUri;

    if-eqz v0, :cond_13

    .line 316
    invoke-virtual {v0}, Lcom/samsung/android/ims/util/SemTelUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 356
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mMsisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriType:Lcom/samsung/android/ims/util/SemImsUri$UriType;

    invoke-virtual {v0}, Lcom/samsung/android/ims/util/SemImsUri$UriType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/ims/util/SemImsUri;->mUriToString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    return-void
.end method
