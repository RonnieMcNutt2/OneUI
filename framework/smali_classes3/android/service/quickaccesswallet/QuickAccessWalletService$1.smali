.class Landroid/service/quickaccesswallet/QuickAccessWalletService$1;
.super Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;
.source "QuickAccessWalletService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;


# direct methods
.method public static synthetic $r8$lambda$-paHuv2Q_PKEIrsER_vNDUZp6wc(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onTargetActivityIntentRequested$2(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gAah7Ul5ajUpuhOTJ5fWaJVUTZM(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onWalletCardSelected$1(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iho0RqxNfG8evVPsYvpKKIn-CUY(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$onWalletCardsRequested$0(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k3gQzTzSEug6P-JWO-7k42uTvzY(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$unregisterWalletServiceEventListener$4(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$leNnmHi8Ssj32XAsBKs1TrTvgFQ(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->lambda$registerWalletServiceEventListener$3(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/quickaccesswallet/QuickAccessWalletService;

    .line 224
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-direct {p0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTargetActivityIntentRequested$2(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 3
    .param p1, "callbacks"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 246
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$monTargetActivityIntentRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private synthetic lambda$onWalletCardSelected$1(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    .line 234
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-virtual {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    return-void
.end method

.method private synthetic lambda$onWalletCardsRequested$0(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 229
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$monWalletCardsRequestedInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private synthetic lambda$registerWalletServiceEventListener$3(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 253
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$mregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    return-void
.end method

.method private synthetic lambda$unregisterWalletServiceEventListener$4(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    .line 258
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$munregisterDismissWalletListenerInternal(Landroid/service/quickaccesswallet/QuickAccessWalletService;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    return-void
.end method


# virtual methods
.method public onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 4
    .param p1, "callbacks"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 245
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda5;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method

.method public onWalletCardSelected(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    .line 234
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method public onWalletCardsRequested(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5
    .param p1, "request"    # Landroid/service/quickaccesswallet/GetWalletCardsRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 229
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda3;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public onWalletDismissed()V
    .registers 4

    .line 239
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    new-instance v2, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda4;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public registerWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V
    .registers 5
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;
    .param p2, "callback"    # Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;

    .line 253
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda2;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public unregisterWalletServiceEventListener(Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V
    .registers 4
    .param p1, "request"    # Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;

    .line 258
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletService$1;->this$0:Landroid/service/quickaccesswallet/QuickAccessWalletService;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletService;->-$$Nest$fgetmHandler(Landroid/service/quickaccesswallet/QuickAccessWalletService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletService$1$$ExternalSyntheticLambda1;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletService$1;Landroid/service/quickaccesswallet/WalletServiceEventListenerRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method
