.class public final synthetic Lcom/android/internal/protolog/BaseProtoLogImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Lcom/android/internal/protolog/BaseProtoLogImpl;->lambda$logToProto$2(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method
