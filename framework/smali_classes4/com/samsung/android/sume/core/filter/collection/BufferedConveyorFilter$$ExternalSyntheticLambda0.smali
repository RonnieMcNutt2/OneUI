.class public final synthetic Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;

    check-cast p1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->lambda$addFilter$1$com-samsung-android-sume-core-filter-collection-BufferedConveyorFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method
