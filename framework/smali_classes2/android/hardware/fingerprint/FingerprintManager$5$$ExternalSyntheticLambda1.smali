.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$5$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$5$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/fingerprint/SemFingerprintViewListener;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager$5;->lambda$hideAodScreen$4(Landroid/hardware/fingerprint/SemFingerprintViewListener;)V

    return-void
.end method
