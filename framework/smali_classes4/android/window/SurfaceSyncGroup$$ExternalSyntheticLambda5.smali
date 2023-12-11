.class public final synthetic Landroid/window/SurfaceSyncGroup$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Landroid/window/SurfaceSyncGroup;->lambda$invokeSyncCompleteCallbacks$2(Landroid/util/Pair;)V

    return-void
.end method
