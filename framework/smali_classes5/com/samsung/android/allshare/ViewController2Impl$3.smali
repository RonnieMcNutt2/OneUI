.class Lcom/samsung/android/allshare/ViewController2Impl$3;
.super Ljava/lang/Object;
.source "ViewController2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/ViewController2Impl;->connect(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/allshare/ViewController2Impl;

.field final synthetic val$port:I

.field final synthetic val$serverIp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ViewController2Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    iput-object p2, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$serverIp:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 329
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$serverIp:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$port:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fputmSocket(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/net/Socket;)V
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_f} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_23

    .line 333
    :catch_10
    move-exception v1

    .line 334
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fputmConnectResult(Lcom/samsung/android/allshare/ViewController2Impl;Z)V

    .line 335
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .line 330
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v1

    .line 331
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fputmConnectResult(Lcom/samsung/android/allshare/ViewController2Impl;Z)V

    .line 332
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 336
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_23
    nop

    .line 338
    :goto_24
    return-void
.end method
