.class Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetterHandler"
.end annotation


# static fields
.field private static final IMAGE_GETTER_CALLBACK:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1026
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1027
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1030
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1031
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .line 1035
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_d

    .line 1037
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1040
    :goto_d
    return-void

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 1047
    if-eqz p1, :cond_f

    .line 1050
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1051
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1052
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1053
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1054
    return-void

    .line 1048
    .end local v0    # "message":Landroid/os/Message;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public postGetterCallback(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1043
    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 1044
    return-void
.end method

.method public removeAllGetterCallbacks()V
    .registers 2

    .line 1057
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeMessages(I)V

    .line 1058
    return-void
.end method
