.class public final synthetic Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntConsumer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iput p2, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iget v1, p0, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/inputmethodservice/IRemoteInputConnectionInvoker$IntResultReceiver;->lambda$dispatch$0(Ljava/util/function/IntConsumer;I)V

    return-void
.end method
