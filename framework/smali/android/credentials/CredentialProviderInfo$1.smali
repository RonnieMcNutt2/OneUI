.class Landroid/credentials/CredentialProviderInfo$1;
.super Ljava/lang/Object;
.source "CredentialProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/credentials/CredentialProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/credentials/CredentialProviderInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 200
    new-instance v0, Landroid/credentials/CredentialProviderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/credentials/CredentialProviderInfo;-><init>(Landroid/os/Parcel;Landroid/credentials/CredentialProviderInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 192
    invoke-virtual {p0, p1}, Landroid/credentials/CredentialProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/credentials/CredentialProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/credentials/CredentialProviderInfo;
    .registers 3
    .param p1, "size"    # I

    .line 195
    new-array v0, p1, [Landroid/credentials/CredentialProviderInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 192
    invoke-virtual {p0, p1}, Landroid/credentials/CredentialProviderInfo$1;->newArray(I)[Landroid/credentials/CredentialProviderInfo;

    move-result-object p1

    return-object p1
.end method
