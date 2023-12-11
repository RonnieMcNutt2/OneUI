.class public Landroid/security/identity/ICredential$Default;
.super Ljava/lang/Object;
.source "ICredential.java"

# interfaces
.implements Landroid/security/identity/ICredential;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ICredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public createEphemeralKeyPair()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteCredential()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteWithChallenge([B)[B
    .registers 3
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthKeysNeedingCertification()[Landroid/security/identity/AuthKeyParcel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationDataExpirations()[J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationDataUsageCount()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCredentialKeyCertificateChain()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntries([B[Landroid/security/identity/RequestNamespaceParcel;[B[BZZZ)Landroid/security/identity/GetEntriesResultParcel;
    .registers 9
    .param p1, "requestMessage"    # [B
    .param p2, "requestNamespaces"    # [Landroid/security/identity/RequestNamespaceParcel;
    .param p3, "sessionTranscript"    # [B
    .param p4, "readerSignature"    # [B
    .param p5, "allowUsingExhaustedKeys"    # Z
    .param p6, "allowUsingExpiredKeys"    # Z
    .param p7, "incrementUsageCount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public proveOwnership([B)[B
    .registers 3
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectAuthKey(ZZZ)J
    .registers 6
    .param p1, "allowUsingExhaustedKeys"    # Z
    .param p2, "allowUsingExpiredKeys"    # Z
    .param p3, "incrementUsageCount"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setAvailableAuthenticationKeys(IIJ)V
    .registers 5
    .param p1, "keyCount"    # I
    .param p2, "maxUsesPerKey"    # I
    .param p3, "minValidTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public setReaderEphemeralPublicKey([B)V
    .registers 2
    .param p1, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public storeStaticAuthenticationData(Landroid/security/identity/AuthKeyParcel;[B)V
    .registers 3
    .param p1, "authenticationKey"    # Landroid/security/identity/AuthKeyParcel;
    .param p2, "staticAuthData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public storeStaticAuthenticationDataWithExpiration(Landroid/security/identity/AuthKeyParcel;J[B)V
    .registers 5
    .param p1, "authenticationKey"    # Landroid/security/identity/AuthKeyParcel;
    .param p2, "expirationDateMillisSinceEpoch"    # J
    .param p4, "staticAuthData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public update()Landroid/security/identity/IWritableCredential;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
