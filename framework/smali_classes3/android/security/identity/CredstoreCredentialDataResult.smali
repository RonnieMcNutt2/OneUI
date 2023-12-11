.class Landroid/security/identity/CredstoreCredentialDataResult;
.super Landroid/security/identity/CredentialDataResult;
.source "CredstoreCredentialDataResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;
    }
.end annotation


# instance fields
.field mDeviceSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

.field mDeviceSignedResult:Landroid/security/identity/ResultData;

.field mIssuerSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

.field mIssuerSignedResult:Landroid/security/identity/ResultData;


# direct methods
.method constructor <init>(Landroid/security/identity/ResultData;Landroid/security/identity/ResultData;)V
    .registers 4
    .param p1, "deviceSignedResult"    # Landroid/security/identity/ResultData;
    .param p2, "issuerSignedResult"    # Landroid/security/identity/ResultData;

    .line 32
    invoke-direct {p0}, Landroid/security/identity/CredentialDataResult;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    .line 34
    iput-object p2, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mIssuerSignedResult:Landroid/security/identity/ResultData;

    .line 35
    new-instance v0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    invoke-direct {v0, p1}, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;-><init>(Landroid/security/identity/ResultData;)V

    iput-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    .line 36
    new-instance v0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    invoke-direct {v0, p2}, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;-><init>(Landroid/security/identity/ResultData;)V

    iput-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mIssuerSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    .line 37
    return-void
.end method


# virtual methods
.method public getDeviceMac()[B
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getMessageAuthenticationCode()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceNameSpaces()[B
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getAuthenticatedData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSignature()[B
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    return-object v0
.end method

.method public getIssuerSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mIssuerSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    return-object v0
.end method

.method public getStaticAuthenticationData()[B
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getStaticAuthenticationData()[B

    move-result-object v0

    return-object v0
.end method
