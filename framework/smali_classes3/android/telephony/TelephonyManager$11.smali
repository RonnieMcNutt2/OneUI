.class Landroid/telephony/TelephonyManager$11;
.super Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->setPreferredOpportunisticDataSubscription(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 16242
    iput-object p1, p0, Landroid/telephony/TelephonyManager$11;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$11;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$11;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onComplete$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 16251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 16252
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 7
    .param p1, "result"    # I

    .line 16245
    iget-object v0, p0, Landroid/telephony/TelephonyManager$11;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/telephony/TelephonyManager$11;->val$callback:Ljava/util/function/Consumer;

    if-nez v0, :cond_9

    goto :goto_23

    .line 16248
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 16250
    .local v0, "identity":J
    :try_start_d
    iget-object v2, p0, Landroid/telephony/TelephonyManager$11;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$11;->val$callback:Ljava/util/function/Consumer;

    new-instance v4, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1e

    .line 16254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16255
    nop

    .line 16256
    return-void

    .line 16254
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16255
    throw v2

    .line 16246
    .end local v0    # "identity":J
    :cond_23
    :goto_23
    return-void
.end method
