.class public final synthetic Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;->lambda$updateQualifiedNetworkTypes$0(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
