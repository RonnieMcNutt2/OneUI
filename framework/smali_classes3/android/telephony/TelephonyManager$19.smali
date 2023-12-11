.class Landroid/telephony/TelephonyManager$19;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;

.field final synthetic val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$7_dJAwFLkQEZOCxQ5sSq8vYP4pA(Landroid/telephony/TelephonyManager$19;Landroid/os/OutcomeReceiver;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager$19;->lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vg22zOav7BP7h796EscRgEwaLr0(Landroid/telephony/TelephonyManager$19;Landroid/os/OutcomeReceiver;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager$19;->lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 18953
    iput-object p1, p0, Landroid/telephony/TelephonyManager$19;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$19;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$19;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;I)V
    .registers 5
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "resultCode"    # I

    .line 18957
    new-instance v0, Landroid/telephony/TelephonyManager$TimeoutException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$19;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$TimeoutException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;I)V
    .registers 5
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "resultCode"    # I

    .line 18961
    new-instance v0, Landroid/telephony/TelephonyManager$ModemErrorException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$19;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$ModemErrorException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V
    .registers 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "slicingConfig"    # Landroid/telephony/data/NetworkSlicingConfig;

    .line 18968
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "result"    # Landroid/os/Bundle;

    .line 18956
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 18957
    iget-object v0, p0, Landroid/telephony/TelephonyManager$19;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$19;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$19;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18959
    return-void

    .line 18960
    :cond_10
    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    .line 18961
    iget-object v0, p0, Landroid/telephony/TelephonyManager$19;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$19;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$19;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18963
    return-void

    .line 18966
    :cond_20
    const-class v0, Landroid/telephony/data/NetworkSlicingConfig;

    .line 18967
    const-string/jumbo v1, "slicing_config_handle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/NetworkSlicingConfig;

    .line 18968
    .local v0, "slicingConfig":Landroid/telephony/data/NetworkSlicingConfig;
    iget-object v1, p0, Landroid/telephony/TelephonyManager$19;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$19;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Landroid/telephony/TelephonyManager$19$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18969
    return-void
.end method
