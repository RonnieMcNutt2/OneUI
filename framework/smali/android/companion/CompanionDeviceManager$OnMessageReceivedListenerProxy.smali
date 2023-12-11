.class Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;
.super Landroid/companion/IOnMessageReceivedListener$Stub;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnMessageReceivedListenerProxy"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;


# direct methods
.method public static synthetic $r8$lambda$T-EdqAxKEgna1xkkOuL1dqoFNvY(Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->lambda$onMessageReceived$0(I[B)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;

    .line 1426
    invoke-direct {p0}, Landroid/companion/IOnMessageReceivedListener$Stub;-><init>()V

    .line 1427
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1428
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mListener:Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;

    .line 1429
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;)V

    return-void
.end method

.method private synthetic lambda$onMessageReceived$0(I[B)V
    .registers 4
    .param p1, "associationId"    # I
    .param p2, "data"    # [B

    .line 1433
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mListener:Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;

    invoke-interface {v0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListener;->onMessageReceived(I[B)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(I[B)V
    .registers 5
    .param p1, "associationId"    # I
    .param p2, "data"    # [B

    .line 1433
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1434
    return-void
.end method
