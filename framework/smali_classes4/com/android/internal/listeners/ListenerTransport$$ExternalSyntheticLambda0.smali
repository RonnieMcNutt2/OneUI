.class public final synthetic Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/listeners/ListenerTransport;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/listeners/ListenerTransport;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/listeners/ListenerTransport;

    iput-object p2, p0, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/listeners/ListenerTransport;

    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransport$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/android/internal/listeners/ListenerTransport;->$r8$lambda$34DUU___L7AejgJbhHbijg4Kxvk(Lcom/android/internal/listeners/ListenerTransport;Ljava/util/function/Consumer;)V

    return-void
.end method
