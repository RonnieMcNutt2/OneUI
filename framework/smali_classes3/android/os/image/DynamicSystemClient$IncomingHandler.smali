.class Landroid/os/image/DynamicSystemClient$IncomingHandler;
.super Landroid/os/Handler;
.source "DynamicSystemClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/DynamicSystemClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mWeakClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/image/DynamicSystemClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/image/DynamicSystemClient;)V
    .registers 3
    .param p1, "service"    # Landroid/os/image/DynamicSystemClient;

    .line 254
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient$IncomingHandler;->mWeakClient:Ljava/lang/ref/WeakReference;

    .line 256
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 260
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient$IncomingHandler;->mWeakClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/image/DynamicSystemClient;

    .line 262
    .local v0, "service":Landroid/os/image/DynamicSystemClient;
    if-eqz v0, :cond_d

    .line 263
    invoke-static {v0, p1}, Landroid/os/image/DynamicSystemClient;->-$$Nest$mhandleMessage(Landroid/os/image/DynamicSystemClient;Landroid/os/Message;)V

    .line 265
    :cond_d
    return-void
.end method
