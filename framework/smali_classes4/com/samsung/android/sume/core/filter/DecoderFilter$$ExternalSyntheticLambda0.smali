.class public final synthetic Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/filter/DecoderFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/filter/DecoderFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/DecoderFilter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecoderFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/filter/DecoderFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/filter/DecoderFilter;->$r8$lambda$PyepeIklr7W_-kf1EdYoUmLgcQM(Lcom/samsung/android/sume/core/filter/DecoderFilter;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method
