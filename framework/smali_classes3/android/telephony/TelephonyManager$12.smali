.class Landroid/telephony/TelephonyManager$12;
.super Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->updateAvailableNetworks(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;

.field final synthetic val$callback:Ljava/util/function/Consumer;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 16346
    iput-object p1, p0, Landroid/telephony/TelephonyManager$12;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$12;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onComplete$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 16353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onComplete$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16353
    new-instance v0, Landroid/telephony/TelephonyManager$12$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$12$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16354
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5
    .param p1, "result"    # I

    .line 16349
    iget-object v0, p0, Landroid/telephony/TelephonyManager$12;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/telephony/TelephonyManager$12;->val$callback:Ljava/util/function/Consumer;

    if-nez v1, :cond_9

    goto :goto_12

    .line 16352
    :cond_9
    new-instance v2, Landroid/telephony/TelephonyManager$12$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p1}, Landroid/telephony/TelephonyManager$12$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 16355
    return-void

    .line 16350
    :cond_12
    :goto_12
    return-void
.end method
