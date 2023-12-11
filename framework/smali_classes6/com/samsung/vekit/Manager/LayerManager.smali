.class public Lcom/samsung/vekit/Manager/LayerManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Layer/Layer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .registers 3
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 17
    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->LAYER:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/LayerManager;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public create(Lcom/samsung/vekit/Common/Type/LayerType;Ljava/lang/String;)Lcom/samsung/vekit/Layer/Layer;
    .registers 7
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/LayerType;
    .param p2, "name"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/LayerManager;->generateUniqueId()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_3e

    .line 28
    .local v1, "uniqueId":I
    nop

    .line 30
    sget-object v2, Lcom/samsung/vekit/Manager/LayerManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$LayerType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/LayerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    .line 47
    return-object v0

    .line 44
    :pswitch_12
    new-instance v0, Lcom/samsung/vekit/Layer/CaptionLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/CaptionLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 45
    .local v0, "layer":Lcom/samsung/vekit/Layer/Layer;
    goto :goto_3a

    .line 41
    .end local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    :pswitch_1a
    new-instance v0, Lcom/samsung/vekit/Layer/DoodleLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/DoodleLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 42
    .restart local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    goto :goto_3a

    .line 38
    .end local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    :pswitch_22
    new-instance v0, Lcom/samsung/vekit/Layer/ImageLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/ImageLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 39
    .restart local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    goto :goto_3a

    .line 35
    .end local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    :pswitch_2a
    new-instance v0, Lcom/samsung/vekit/Layer/AudioLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/AudioLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 36
    .restart local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    goto :goto_3a

    .line 32
    .end local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    :pswitch_32
    new-instance v0, Lcom/samsung/vekit/Layer/MediaLayer;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Layer/MediaLayer;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 33
    .restart local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    nop

    .line 51
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/LayerManager;->add(Ljava/lang/Object;)V

    .line 53
    return-object v0

    .line 25
    .end local v0    # "layer":Lcom/samsung/vekit/Layer/Layer;
    .end local v1    # "uniqueId":I
    :catch_3e
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/vekit/Manager/LayerManager;->TAG:Ljava/lang/String;

    const-string v3, "create: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_12
    .end packed-switch
.end method
