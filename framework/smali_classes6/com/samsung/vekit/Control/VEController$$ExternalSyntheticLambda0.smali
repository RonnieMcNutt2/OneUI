.class public final synthetic Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/vekit/Listener/VEControllerStatusListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/vekit/Control/VEController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Control/VEController;

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/samsung/vekit/Common/Type/EventType;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/vekit/Control/VEController;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Control/VEController;->lambda$new$0$com-samsung-vekit-Control-VEController(Lcom/samsung/vekit/Common/Type/EventType;)V

    return-void
.end method
