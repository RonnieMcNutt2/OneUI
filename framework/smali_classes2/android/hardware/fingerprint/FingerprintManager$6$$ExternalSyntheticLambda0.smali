.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$6$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    iput p2, p0, Landroid/hardware/fingerprint/FingerprintManager$6$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$6$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintManager$6$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$6;->lambda$onResult$0(Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)V

    return-void
.end method
