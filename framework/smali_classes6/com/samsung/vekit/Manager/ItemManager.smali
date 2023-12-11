.class public Lcom/samsung/vekit/Manager/ItemManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "ItemManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Item/Item;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .registers 3
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 20
    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->ITEM:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/ItemManager;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public create(Lcom/samsung/vekit/Common/Type/ItemType;Ljava/lang/String;)Lcom/samsung/vekit/Item/Item;
    .registers 7
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ItemType;
    .param p2, "name"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/ItemManager;->generateUniqueId()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_56

    .line 31
    .local v1, "uniqueId":I
    nop

    .line 33
    sget-object v2, Lcom/samsung/vekit/Manager/ItemManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$ItemType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_60

    .line 59
    return-object v0

    .line 56
    :pswitch_12
    new-instance v0, Lcom/samsung/vekit/Item/EmptyItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/EmptyItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 57
    .local v0, "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_52

    .line 53
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    :pswitch_1a
    new-instance v0, Lcom/samsung/vekit/Item/ColorItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/ColorItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 54
    .restart local v0    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_52

    .line 50
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    :pswitch_22
    new-instance v0, Lcom/samsung/vekit/Item/FragmentAudioItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/FragmentAudioItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 51
    .restart local v0    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_52

    .line 47
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    :pswitch_2a
    new-instance v0, Lcom/samsung/vekit/Item/AudioItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/AudioItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 48
    .restart local v0    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_52

    .line 44
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    :pswitch_32
    new-instance v0, Lcom/samsung/vekit/Item/CaptionItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/CaptionItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 45
    .restart local v0    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_52

    .line 41
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    :pswitch_3a
    new-instance v0, Lcom/samsung/vekit/Item/DoodleItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/DoodleItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 42
    .restart local v0    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_52

    .line 38
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    :pswitch_42
    new-instance v0, Lcom/samsung/vekit/Item/ImageItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/ImageItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 39
    .restart local v0    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_52

    .line 35
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    :pswitch_4a
    new-instance v0, Lcom/samsung/vekit/Item/VideoItem;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Item/VideoItem;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 36
    .restart local v0    # "item":Lcom/samsung/vekit/Item/Item;
    nop

    .line 64
    :goto_52
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/ItemManager;->add(Ljava/lang/Object;)V

    .line 66
    return-object v0

    .line 28
    .end local v0    # "item":Lcom/samsung/vekit/Item/Item;
    .end local v1    # "uniqueId":I
    :catch_56
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/vekit/Manager/ItemManager;->TAG:Ljava/lang/String;

    const-string v3, "create: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_12
    .end packed-switch
.end method
