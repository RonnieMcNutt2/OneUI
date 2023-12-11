.class Landroid/hardware/fingerprint/FingerprintManager$7;
.super Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$callback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 2663
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;
    .param p1, "code"    # I

    .line 2666
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;->onRequested(I)V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .registers 5
    .param p1, "code"    # I

    .line 2666
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$7;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$7$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2667
    return-void
.end method
