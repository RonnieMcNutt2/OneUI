.class public final synthetic Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/Operator;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    return-void
.end method


# virtual methods
.method public final run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/plugin/NativeUniImgpPlugin;->split(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object p1

    return-object p1
.end method
