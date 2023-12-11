.class Landroid/hardware/fingerprint/FingerprintManager$8;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->semRemove(IILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 2688
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$8;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$8;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 2691
    const-string v0, "FingerprintManager"

    const-string v1, "semRemove: removal error"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$8;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    if-eqz v0, :cond_f

    .line 2693
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;->onRequested(I)V

    .line 2695
    :cond_f
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 5
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 2699
    const-string v0, "FingerprintManager"

    const-string v1, "semRemove: removal succeeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$8;->val$requestCallback:Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;

    if-eqz v0, :cond_f

    .line 2701
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;->onRequested(I)V

    .line 2703
    :cond_f
    return-void
.end method
