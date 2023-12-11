.class public final Landroid/content/pm/SigningInfo;
.super Ljava/lang/Object;
.source "SigningInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SigningInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/content/pm/SigningInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SigningInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SigningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/SigningDetails;)V
    .registers 3
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/content/pm/SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/SigningInfo;)V
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/SigningInfo;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/pm/SigningDetails;

    iget-object v1, p1, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Landroid/content/pm/SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SigningInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SigningInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getApkContentsSigners()[Landroid/content/pm/Signature;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public getSigningCertificateHistory()[Landroid/content/pm/Signature;
    .registers 2

    .line 93
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    move-result v0

    if-nez v0, :cond_15

    .line 98
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0

    .line 102
    :cond_15
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public hasMultipleSigners()Z
    .registers 3

    .line 55
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 56
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 55
    :goto_14
    return v1
.end method

.method public hasPastSigningCertificates()Z
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 69
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 68
    :goto_14
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 126
    iget-object v0, p0, Landroid/content/pm/SigningInfo;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/SigningDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    return-void
.end method
