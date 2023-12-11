.class public final Landroid/credentials/PrepareGetCredentialResponse;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;,
        Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

.field private final mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;


# direct methods
.method protected constructor <init>(Landroid/credentials/PrepareGetCredentialResponseInternal;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;)V
    .registers 5
    .param p1, "responseInternal"    # Landroid/credentials/PrepareGetCredentialResponseInternal;
    .param p2, "getCredentialTransport"    # Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    .line 169
    new-instance v0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 170
    invoke-virtual {p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;-><init>(Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 171
    return-void
.end method


# virtual methods
.method public getPendingGetCredentialHandle()Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    return-object v0
.end method

.method public hasAuthenticationResults()Z
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasAuthenticationResults()Z

    move-result v0

    return v0
.end method

.method public hasCredentialResults(Ljava/lang/String;)Z
    .registers 3
    .param p1, "credentialType"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0, p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasCredentialResults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRemoteResults()Z
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasRemoteResults()Z

    move-result v0

    return v0
.end method
