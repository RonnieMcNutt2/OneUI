.class Landroid/credentials/ui/GetCredentialProviderData$1;
.super Ljava/lang/Object;
.source "GetCredentialProviderData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/ui/GetCredentialProviderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/credentials/ui/GetCredentialProviderData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/credentials/ui/GetCredentialProviderData;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    new-instance v0, Landroid/credentials/ui/GetCredentialProviderData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/credentials/ui/GetCredentialProviderData;-><init>(Landroid/os/Parcel;Landroid/credentials/ui/GetCredentialProviderData-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Landroid/credentials/ui/GetCredentialProviderData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/credentials/ui/GetCredentialProviderData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/credentials/ui/GetCredentialProviderData;
    .registers 3
    .param p1, "size"    # I

    .line 123
    new-array v0, p1, [Landroid/credentials/ui/GetCredentialProviderData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Landroid/credentials/ui/GetCredentialProviderData$1;->newArray(I)[Landroid/credentials/ui/GetCredentialProviderData;

    move-result-object p1

    return-object p1
.end method
