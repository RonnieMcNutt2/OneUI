.class Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;
.super Ljava/util/HashMap;
.source "SurfaceChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/sume/core/types/ColorFormat;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV12:Lcom/samsung/android/sume/core/types/ColorFormat;

    const v1, 0x7fa30c04

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/android/sume/core/types/ColorFormat;->NV21:Lcom/samsung/android/sume/core/types/ColorFormat;

    const/16 v1, 0x105

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
