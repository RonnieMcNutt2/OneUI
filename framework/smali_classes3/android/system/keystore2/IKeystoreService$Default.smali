.class public Landroid/system/keystore2/IKeystoreService$Default;
.super Ljava/lang/Object;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .registers 2
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 59
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 3
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfEntries(IJ)I
    .registers 5
    .param p1, "domain"    # I
    .param p2, "nspace"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;
    .registers 3
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "granteeUid"    # I
    .param p3, "accessVector"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public listEntries(IJ)[Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "domain"    # I
    .param p2, "nspace"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public listEntriesBatched(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 6
    .param p1, "domain"    # I
    .param p2, "nspace"    # J
    .param p4, "startingPastAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public ungrant(Landroid/system/keystore2/KeyDescriptor;I)V
    .registers 3
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "granteeUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    .registers 4
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "publicCert"    # [B
    .param p3, "certificateChain"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method
