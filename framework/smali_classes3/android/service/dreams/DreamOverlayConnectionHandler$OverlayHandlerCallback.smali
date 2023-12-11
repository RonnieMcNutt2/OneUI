.class final Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;


# direct methods
.method private constructor <init>(Landroid/service/dreams/DreamOverlayConnectionHandler;)V
    .registers 2

    .line 141
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 146
    :pswitch_6
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/dreams/IDreamOverlayClient;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$monOverlayClientReady(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/IDreamOverlayClient;)V

    .line 147
    goto :goto_24

    .line 152
    :pswitch_10
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$monRemoveConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V

    goto :goto_24

    .line 149
    :pswitch_1a
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$monAddConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V

    .line 150
    nop

    .line 155
    :goto_24
    const/4 v0, 0x1

    return v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
