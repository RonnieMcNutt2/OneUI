.class Landroid/security/KeyChain$1;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$keyChainService:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1144
    iput-object p1, p0, Landroid/security/KeyChain$1;->val$keyChainService:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Landroid/security/KeyChain$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1155
    iget-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_c

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    .line 1157
    iget-object v0, p0, Landroid/security/KeyChain$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1159
    :cond_c
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1147
    iget-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_19

    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    .line 1149
    iget-object v0, p0, Landroid/security/KeyChain$1;->val$keyChainService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1150
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object v1

    .line 1149
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1151
    iget-object v0, p0, Landroid/security/KeyChain$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1153
    :cond_19
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1160
    return-void
.end method
