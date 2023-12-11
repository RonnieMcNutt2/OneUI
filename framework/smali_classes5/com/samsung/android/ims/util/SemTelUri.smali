.class public Lcom/samsung/android/ims/util/SemTelUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "SemTelUri.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelUri"


# instance fields
.field private mIsInternational:Z

.field private mNumber:Ljava/lang/String;

.field private mPhoneContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/util/SemTelUri;->mIsInternational:Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/util/SemTelUri;->setPhoneNumber(Ljava/lang/String;)V

    .line 65
    iput-object p2, p0, Lcom/samsung/android/ims/util/SemTelUri;->mPhoneContext:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static parseUri(Ljava/lang/String;)Lcom/samsung/android/ims/util/SemTelUri;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    if-eqz p0, :cond_42

    const-string/jumbo v1, "tel:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_42

    .line 39
    :cond_d
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 41
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 42
    .local v1, "c":I
    const/4 v2, 0x4

    if-gez v1, :cond_28

    .line 43
    new-instance v3, Lcom/samsung/android/ims/util/SemTelUri;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/samsung/android/ims/util/SemTelUri;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 47
    :cond_28
    const/4 v0, 0x0

    .line 48
    .local v0, "phoneContext":Ljava/lang/String;
    const-string/jumbo v3, "phone-context"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 49
    .local v3, "p":I
    if-lez v3, :cond_38

    .line 50
    add-int/lit8 v4, v3, 0xe

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_38
    new-instance v4, Lcom/samsung/android/ims/util/SemTelUri;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Lcom/samsung/android/ims/util/SemTelUri;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 36
    .end local v0    # "phoneContext":Ljava/lang/String;
    .end local v1    # "c":I
    .end local v3    # "p":I
    :cond_42
    :goto_42
    return-object v0
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/ims/util/SemTelUri;->mIsInternational:Z

    if-eqz v1, :cond_c

    const-string v1, "+"

    goto :goto_e

    :cond_c
    const-string v1, ""

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/util/SemTelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 101
    const-string/jumbo v0, "tel"

    return-object v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_10

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/ims/util/SemTelUri;->mIsInternational:Z

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_10
    iput-object p1, p0, Lcom/samsung/android/ims/util/SemTelUri;->mNumber:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/ims/util/SemTelUri;->mIsInternational:Z

    const-string v2, ""

    if-eqz v1, :cond_15

    const-string v1, "+"

    goto :goto_16

    :cond_15
    move-object v1, v2

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/util/SemTelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/samsung/android/ims/util/SemTelUri;->mPhoneContext:Ljava/lang/String;

    if-nez v1, :cond_25

    goto :goto_3a

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";phone-context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ims/util/SemTelUri;->mPhoneContext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method
