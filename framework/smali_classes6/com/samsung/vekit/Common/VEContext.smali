.class public Lcom/samsung/vekit/Common/VEContext;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEContext.java"


# instance fields
.field private final animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

.field private final contentManager:Lcom/samsung/vekit/Manager/ContentManager;

.field private final filterManager:Lcom/samsung/vekit/Manager/FilterManager;

.field private frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

.field private final itemManager:Lcom/samsung/vekit/Manager/ItemManager;

.field private final layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

.field private final layerManager:Lcom/samsung/vekit/Manager/LayerManager;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 32
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTEXT:Lcom/samsung/vekit/Common/Type/ElementType;

    const/4 v1, 0x0

    const-string v2, "Context"

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 33
    new-instance v0, Lcom/samsung/vekit/Manager/ItemManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/ItemManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->itemManager:Lcom/samsung/vekit/Manager/ItemManager;

    .line 34
    new-instance v0, Lcom/samsung/vekit/Manager/LayerManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/LayerManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerManager:Lcom/samsung/vekit/Manager/LayerManager;

    .line 35
    new-instance v0, Lcom/samsung/vekit/Manager/AnimationManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/AnimationManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

    .line 36
    new-instance v0, Lcom/samsung/vekit/Manager/ContentManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/ContentManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->contentManager:Lcom/samsung/vekit/Manager/ContentManager;

    .line 37
    new-instance v0, Lcom/samsung/vekit/Manager/FilterManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/FilterManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->filterManager:Lcom/samsung/vekit/Manager/FilterManager;

    .line 38
    new-instance v0, Lcom/samsung/vekit/Layer/LayerGroup;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Layer/LayerGroup;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    .line 39
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ViewMode;->values()[Lcom/samsung/vekit/Common/Type/ViewMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public checkFrcAvailable(Lcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z
    .registers 6
    .param p1, "viewMode"    # Lcom/samsung/vekit/Common/Type/ViewMode;
    .param p2, "fpsType"    # Lcom/samsung/vekit/Common/Type/FpsType;
    .param p3, "speedType"    # Lcom/samsung/vekit/Common/Type/SpeedType;

    .line 83
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->checkFrcAvailable(Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z

    move-result v0

    return v0
.end method

.method public getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

    return-object v0
.end method

.method public getContentManager()Lcom/samsung/vekit/Manager/ContentManager;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->contentManager:Lcom/samsung/vekit/Manager/ContentManager;

    return-object v0
.end method

.method public getFilterManager()Lcom/samsung/vekit/Manager/FilterManager;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->filterManager:Lcom/samsung/vekit/Manager/FilterManager;

    return-object v0
.end method

.method public getFrcSupportInfo(Lcom/samsung/vekit/Common/Type/ViewMode;)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
    .registers 4
    .param p1, "viewMode"    # Lcom/samsung/vekit/Common/Type/ViewMode;

    .line 78
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getItemManager()Lcom/samsung/vekit/Manager/ItemManager;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->itemManager:Lcom/samsung/vekit/Manager/ItemManager;

    return-object v0
.end method

.method public getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    return-object v0
.end method

.method public getLayerManager()Lcom/samsung/vekit/Manager/LayerManager;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerManager:Lcom/samsung/vekit/Manager/LayerManager;

    return-object v0
.end method

.method public initialize()V
    .registers 5

    .line 43
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/External/NativeInterface;->create(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/External/NativeInterface;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->EXPORT:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v2

    sget-object v3, Lcom/samsung/vekit/Common/Type/ViewMode;->EXPORT:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/External/NativeInterface;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    return-void
.end method

.method public release()V
    .registers 2

    .line 49
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeInterface;->releaseFramework()V

    .line 50
    return-void
.end method
