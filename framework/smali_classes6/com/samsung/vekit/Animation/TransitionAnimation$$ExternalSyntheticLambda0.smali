.class public final synthetic Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/vekit/Item/Item;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/vekit/Item/Item;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Item/Item;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/vekit/Animation/TransitionAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Item/Item;

    check-cast p1, Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-static {v0, p1}, Lcom/samsung/vekit/Animation/TransitionAnimation;->lambda$checkValidItem$0(Lcom/samsung/vekit/Item/Item;Lcom/samsung/vekit/Common/Type/ItemType;)Z

    move-result p1

    return p1
.end method
