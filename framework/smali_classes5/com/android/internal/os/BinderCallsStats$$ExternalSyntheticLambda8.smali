.class public final synthetic Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-static {p1}, Lcom/android/internal/os/BinderCallsStats;->lambda$getHeaviestApplicationUid$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)J

    move-result-wide v0

    return-wide v0
.end method
