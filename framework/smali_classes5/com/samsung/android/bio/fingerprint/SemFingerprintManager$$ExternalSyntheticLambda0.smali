.class public final synthetic Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

.field public final synthetic f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->$r8$lambda$TmQ9oAt9d61Yz3_99rBfC4ehebk(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void
.end method
