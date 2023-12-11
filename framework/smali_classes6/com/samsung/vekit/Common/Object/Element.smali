.class public Lcom/samsung/vekit/Common/Object/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected context:Lcom/samsung/vekit/Common/VEContext;

.field protected elementType:Lcom/samsung/vekit/Common/Type/ElementType;

.field protected id:I

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V
    .registers 6
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "type"    # Lcom/samsung/vekit/Common/Type/ElementType;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Element;->context:Lcom/samsung/vekit/Common/VEContext;

    .line 17
    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/Element;->elementType:Lcom/samsung/vekit/Common/Type/ElementType;

    .line 18
    iput p3, p0, Lcom/samsung/vekit/Common/Object/Element;->id:I

    .line 19
    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/Element;->name:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getContext()Lcom/samsung/vekit/Common/VEContext;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->context:Lcom/samsung/vekit/Common/VEContext;

    return-object v0
.end method

.method public getElementType()Lcom/samsung/vekit/Common/Type/ElementType;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->elementType:Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Element;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPanel()Lcom/samsung/vekit/Panel/Panel;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public update()V
    .registers 2

    .line 28
    invoke-static {}, Lcom/samsung/vekit/External/NativeInterface;->getInstance()Lcom/samsung/vekit/External/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/External/NativeInterface;->update(Lcom/samsung/vekit/Common/Object/Element;)V

    .line 29
    return-void
.end method
