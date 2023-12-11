.class public Lcom/samsung/vekit/Layer/LayerGroup;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "LayerGroup.java"

# interfaces
.implements Lcom/samsung/vekit/Interface/HierarchyInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Common/Object/Element;",
        "Lcom/samsung/vekit/Interface/HierarchyInterface<",
        "Lcom/samsung/vekit/Layer/Layer;",
        ">;"
    }
.end annotation


# instance fields
.field protected animationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected isVisible:Z

.field layerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field panel:Lcom/samsung/vekit/Panel/Panel;

.field totalDuration:J


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .registers 5
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 33
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYERGROUP:Lcom/samsung/vekit/Common/Type/ElementType;

    const/4 v1, 0x0

    const-string v2, "LayerGroup"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/samsung/vekit/Panel/Panel;

    invoke-direct {v0}, Lcom/samsung/vekit/Panel/Panel;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method private calculateAutoDurationItems()V
    .registers 8

    .line 67
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Layer/Layer;

    .line 68
    .local v1, "layer":Lcom/samsung/vekit/Layer/Layer;
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getLayerType()Lcom/samsung/vekit/Common/Type/LayerType;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/LayerType;->AUDIO:Lcom/samsung/vekit/Common/Type/LayerType;

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/Common/Type/LayerType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 69
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/vekit/Item/Item;

    .line 70
    .local v3, "item":Lcom/samsung/vekit/Item/Item;
    invoke-virtual {v3}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v4

    sget-object v5, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {v4, v5}, Lcom/samsung/vekit/Common/Type/ItemType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    move-object v4, v3

    check-cast v4, Lcom/samsung/vekit/Item/FragmentAudioItem;

    invoke-virtual {v4}, Lcom/samsung/vekit/Item/FragmentAudioItem;->isEnableAutoDuration()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 71
    move-object v4, v3

    check-cast v4, Lcom/samsung/vekit/Item/FragmentAudioItem;

    iget-wide v5, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/vekit/Item/FragmentAudioItem;->setDuration(J)Lcom/samsung/vekit/Item/FragmentAudioItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/vekit/Item/FragmentAudioItem;->update()V

    .line 73
    .end local v3    # "item":Lcom/samsung/vekit/Item/Item;
    :cond_55
    goto :goto_26

    .line 75
    .end local v1    # "layer":Lcom/samsung/vekit/Layer/Layer;
    :cond_56
    goto :goto_6

    .line 76
    :cond_57
    return-void
.end method


# virtual methods
.method public attach(Lcom/samsung/vekit/Layer/Layer;)V
    .registers 4
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 90
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 92
    return-void
.end method

.method public attach(Lcom/samsung/vekit/Layer/Layer;I)V
    .registers 5
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;
    .param p2, "index"    # I

    .line 96
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-virtual {v0, p0, p2, v1}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 98
    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->attach(Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;I)V
    .registers 3

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/LayerGroup;->attach(Lcom/samsung/vekit/Layer/Layer;I)V

    return-void
.end method

.method public attach(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Layer/Layer;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Layer/Layer;

    .line 105
    .local v2, "layer":Lcom/samsung/vekit/Layer/Layer;
    invoke-virtual {v2}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v2    # "layer":Lcom/samsung/vekit/Layer/Layer;
    goto :goto_e

    .line 107
    :cond_26
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/vekit/External/NativeInterface;->attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V

    .line 108
    return-void
.end method

.method public attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    .line 169
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_18

    .line 173
    nop

    .line 174
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p1, p0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 177
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/External/NativeInterface;->attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 178
    return-void

    .line 170
    :catch_18
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v2, "attachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    return-void
.end method

.method public calculateTotalDuration()J
    .registers 11

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 45
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Layer/Layer;

    .line 46
    .local v1, "layer":Lcom/samsung/vekit/Layer/Layer;
    const-wide/16 v2, 0x0

    .line 47
    .local v2, "layerDuration":J
    invoke-virtual {v1}, Lcom/samsung/vekit/Layer/Layer;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/vekit/Item/Item;

    .line 48
    .local v5, "item":Lcom/samsung/vekit/Item/Item;
    invoke-virtual {v5}, Lcom/samsung/vekit/Item/Item;->getItemType()Lcom/samsung/vekit/Common/Type/ItemType;

    move-result-object v6

    sget-object v7, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-virtual {v6, v7}, Lcom/samsung/vekit/Common/Type/ItemType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    move-object v6, v5

    check-cast v6, Lcom/samsung/vekit/Item/FragmentAudioItem;

    invoke-virtual {v6}, Lcom/samsung/vekit/Item/FragmentAudioItem;->isEnableAutoDuration()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 49
    goto :goto_20

    .line 50
    :cond_42
    invoke-virtual {v5}, Lcom/samsung/vekit/Item/Item;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/samsung/vekit/Item/Item;->getPadding()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 51
    .end local v5    # "item":Lcom/samsung/vekit/Item/Item;
    goto :goto_20

    .line 52
    :cond_4d
    iget-object v4, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "total duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "layerDuration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-wide v4, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 54
    .end local v1    # "layer":Lcom/samsung/vekit/Layer/Layer;
    .end local v2    # "layerDuration":J
    goto :goto_a

    .line 56
    :cond_7a
    invoke-direct {p0}, Lcom/samsung/vekit/Layer/LayerGroup;->calculateAutoDurationItems()V

    .line 57
    iget-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    return-wide v0
.end method

.method public checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Lcom/samsung/vekit/Animation/Animation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getAnimationType()Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 235
    .local v0, "valid":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 238
    return-void

    .line 236
    :cond_16
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "isInvalidElement : please attach correct uiAnimation(not TransitionAnimation) to LayerGroup."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .registers 2

    .line 124
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/External/NativeInterface;->clear(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    return-void
.end method

.method public clearAnimations()V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Animation/Animation;

    .line 205
    .local v1, "animation":Lcom/samsung/vekit/Animation/Animation;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 206
    .end local v1    # "animation":Lcom/samsung/vekit/Animation/Animation;
    goto :goto_6

    .line 207
    :cond_17
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/External/NativeInterface;->clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 209
    return-void
.end method

.method public contains(Lcom/samsung/vekit/Layer/Layer;)Z
    .registers 3
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 145
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 2

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->contains(Lcom/samsung/vekit/Layer/Layer;)Z

    move-result p1

    return p1
.end method

.method public detach(I)V
    .registers 3
    .param p1, "index"    # I

    .line 118
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Layer/Layer;

    .line 119
    .local v0, "layer":Lcom/samsung/vekit/Layer/Layer;
    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Layer/LayerGroup;->detach(Lcom/samsung/vekit/Layer/Layer;)V

    .line 120
    return-void
.end method

.method public detach(Lcom/samsung/vekit/Layer/Layer;)V
    .registers 4
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 112
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Layer/Layer;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/External/NativeInterface;->detach(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 113
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public bridge synthetic detach(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->detach(Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method

.method public detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)V"
        }
    .end annotation

    .line 183
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->checkValidAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_19

    .line 187
    nop

    .line 188
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Animation/Animation;->getId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/vekit/External/NativeInterface;->detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V

    .line 189
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/vekit/Animation/Animation;->setTarget(Lcom/samsung/vekit/Common/Object/Element;)Lcom/samsung/vekit/Animation/Animation;

    .line 191
    return-void

    .line 184
    :catch_19
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v2, "detachAnimation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    return-void
.end method

.method public getAnimation(I)Lcom/samsung/vekit/Animation/Animation;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_14

    if-gez p1, :cond_b

    goto :goto_14

    .line 199
    :cond_b
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Animation/Animation;

    return-object v0

    .line 196
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v1, "failed to get animation (invalid index)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimationIndex(Lcom/samsung/vekit/Animation/Animation;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;)I"
        }
    .end annotation

    .line 213
    .local p1, "animation":Lcom/samsung/vekit/Animation/Animation;, "Lcom/samsung/vekit/Animation/Animation<*>;"
    if-nez p1, :cond_b

    .line 214
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->TAG:Ljava/lang/String;

    const-string v1, "failed to getAnimationIndex (animation is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, -0x1

    return v0

    .line 217
    :cond_b
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getAnimationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Animation/Animation<",
            "*>;>;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->animationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/samsung/vekit/Layer/Layer;
    .registers 3
    .param p1, "index"    # I

    .line 155
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Layer/Layer;

    return-object v0
.end method

.method public bridge synthetic getChild(I)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->getChild(I)Lcom/samsung/vekit/Layer/Layer;

    move-result-object p1

    return-object p1
.end method

.method public getChildSize()I
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Layer/Layer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Lcom/samsung/vekit/Layer/Layer;)I
    .registers 3
    .param p1, "element"    # Lcom/samsung/vekit/Layer/Layer;

    .line 150
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIndex(Ljava/lang/Object;)I
    .registers 2

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Layer/LayerGroup;->getIndex(Lcom/samsung/vekit/Layer/Layer;)I

    move-result p1

    return p1
.end method

.method public getPanel()Lcom/samsung/vekit/Panel/Panel;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    return-object v0
.end method

.method public getTotalDuration()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    return-wide v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    return v0
.end method

.method public setPanel(Lcom/samsung/vekit/Panel/Panel;)Lcom/samsung/vekit/Layer/LayerGroup;
    .registers 3
    .param p1, "panel"    # Lcom/samsung/vekit/Panel/Panel;

    .line 84
    invoke-virtual {p1}, Lcom/samsung/vekit/Panel/Panel;->clone()Lcom/samsung/vekit/Panel/Panel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->panel:Lcom/samsung/vekit/Panel/Panel;

    .line 85
    return-object p0
.end method

.method public setTotalDuration(J)Lcom/samsung/vekit/Layer/LayerGroup;
    .registers 3
    .param p1, "totalDuration"    # J

    .line 61
    iput-wide p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->totalDuration:J

    .line 62
    return-object p0
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 230
    iput-boolean p1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->isVisible:Z

    .line 231
    return-void
.end method

.method public swap(Lcom/samsung/vekit/Layer/Layer;Lcom/samsung/vekit/Layer/Layer;)V
    .registers 6
    .param p1, "from"    # Lcom/samsung/vekit/Layer/Layer;
    .param p2, "to"    # Lcom/samsung/vekit/Layer/Layer;

    .line 160
    iget-object v0, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 161
    .local v0, "fromIndex":I
    iget-object v1, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 162
    .local v1, "toIndex":I
    iget-object v2, p0, Lcom/samsung/vekit/Layer/LayerGroup;->layerList:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 163
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/samsung/vekit/External/NativeInterface;->swap(Lcom/samsung/vekit/Common/Object/Element;II)V

    .line 164
    return-void
.end method

.method public bridge synthetic swap(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 24
    check-cast p1, Lcom/samsung/vekit/Layer/Layer;

    check-cast p2, Lcom/samsung/vekit/Layer/Layer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Layer/LayerGroup;->swap(Lcom/samsung/vekit/Layer/Layer;Lcom/samsung/vekit/Layer/Layer;)V

    return-void
.end method
