.class public abstract Landroid/security/attestationverification/AttestationVerificationService;
.super Landroid/app/Service;
.source "AttestationVerificationService.java"


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.security.attestationverification.AttestationVerificationService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onVerifyPeerDeviceAttestation(Landroid/os/Bundle;[B)I
.end method
