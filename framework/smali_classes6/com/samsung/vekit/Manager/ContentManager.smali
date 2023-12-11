.class public Lcom/samsung/vekit/Manager/ContentManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Content/Content;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .registers 3
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 19
    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->CONTENT:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public create(Lcom/samsung/vekit/Common/Type/ContentType;Ljava/lang/String;)Lcom/samsung/vekit/Content/Content;
    .registers 7
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ContentType;
    .param p2, "name"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/ContentManager;->generateUniqueId()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_4e

    .line 30
    .local v1, "uniqueId":I
    nop

    .line 32
    sget-object v2, Lcom/samsung/vekit/Manager/ContentManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$ContentType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_58

    .line 55
    return-object v0

    .line 52
    :pswitch_12
    new-instance v0, Lcom/samsung/vekit/Content/FragmentAudio;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/FragmentAudio;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 53
    .local v0, "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_4a

    .line 49
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_1a
    new-instance v0, Lcom/samsung/vekit/Content/Caption;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Caption;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 50
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_4a

    .line 46
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_22
    new-instance v0, Lcom/samsung/vekit/Content/Video;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Video;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 47
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_4a

    .line 43
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_2a
    new-instance v0, Lcom/samsung/vekit/Content/AnimatedImage;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/AnimatedImage;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 44
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_4a

    .line 40
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_32
    new-instance v0, Lcom/samsung/vekit/Content/Image;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Image;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 41
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_4a

    .line 37
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_3a
    new-instance v0, Lcom/samsung/vekit/Content/Doodle;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Doodle;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 38
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    goto :goto_4a

    .line 34
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    :pswitch_42
    new-instance v0, Lcom/samsung/vekit/Content/Audio;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v0, v2, v1, p2}, Lcom/samsung/vekit/Content/Audio;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 35
    .restart local v0    # "content":Lcom/samsung/vekit/Content/Content;
    nop

    .line 60
    :goto_4a
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Manager/ContentManager;->add(Ljava/lang/Object;)V

    .line 62
    return-object v0

    .line 27
    .end local v0    # "content":Lcom/samsung/vekit/Content/Content;
    .end local v1    # "uniqueId":I
    :catch_4e
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/vekit/Manager/ContentManager;->TAG:Ljava/lang/String;

    const-string v3, "create: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_12
    .end packed-switch
.end method
