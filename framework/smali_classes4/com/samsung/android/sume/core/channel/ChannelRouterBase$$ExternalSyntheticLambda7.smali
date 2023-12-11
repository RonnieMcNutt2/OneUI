.class public final synthetic Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;->lambda$new$3(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method
