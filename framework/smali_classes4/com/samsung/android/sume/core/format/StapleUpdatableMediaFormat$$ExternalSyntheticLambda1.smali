.class public final synthetic Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;

    check-cast p1, [I

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/format/StapleUpdatableMediaFormat;->lambda$getCroppedShape$3$com-samsung-android-sume-core-format-StapleUpdatableMediaFormat([I)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object p1

    return-object p1
.end method
