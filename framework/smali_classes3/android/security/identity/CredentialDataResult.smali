.class public abstract Landroid/security/identity/CredentialDataResult;
.super Ljava/lang/Object;
.source "CredentialDataResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredentialDataResult$Entries;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceMac()[B
.end method

.method public abstract getDeviceNameSpaces()[B
.end method

.method public getDeviceSignature()[B
    .registers 2

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getDeviceSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
.end method

.method public abstract getIssuerSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
.end method

.method public abstract getStaticAuthenticationData()[B
.end method
