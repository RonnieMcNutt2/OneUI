.class public Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Default;
.super Ljava/lang/Object;
.source "IEnhancedAttestationPolicyCallback.java"

# interfaces
.implements Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;
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

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .registers 2
    .param p1, "result"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
