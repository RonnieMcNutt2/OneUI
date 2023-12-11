.class public Lcom/samsung/android/sume/core/buffer/BufferExtension;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;,
        Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;,
        Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final binaryKeySEP:Ljava/lang/String; = "->"

.field private static volatile sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;


# instance fields
.field private final allocMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "*>;>;"
        }
    .end annotation
.end field

.field private final deallocMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final describeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "*",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private final extensionClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final internalBufferHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final stringfyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transformMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final wrappedTransformList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    .line 118
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->newRegistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda21;-><init>()V

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDescribe(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda26;-><init>()V

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDescribe(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda27;-><init>()V

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDescribe(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda28;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda28;-><init>()V

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Ljava/lang/Number;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda29;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda29;-><init>()V

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;-><init>()V

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda31;-><init>()V

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/hardware/HardwareBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda32;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda32;-><init>()V

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda33;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda33;-><init>()V

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda34;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda34;-><init>()V

    .line 206
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda22;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda22;-><init>()V

    .line 212
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Lcom/samsung/android/sume/core/UniExifInterface;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda23;-><init>()V

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda24;-><init>()V

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda25;-><init>()V

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addDealloc(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    .line 236
    .local v0, "registry":Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getDescribe()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDescribe(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getAlloc()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerAlloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getDealloc()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDealloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 239
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getStringfy()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 240
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getTransform()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getWrappedTransform()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 242
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Ljava/lang/Class;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterDescribe(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterAlloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterDealloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterStringfy(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 1

    .line 32
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDescribe(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerAlloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerDealloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addToClassMap(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 253
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 254
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_29
    return-void
.end method

.method public static alloc(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 62
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doAlloc(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static dealloc(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doDealloc(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public static describe(Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;"
        }
    .end annotation

    .line 59
    .local p0, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doDescribe(Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private doAlloc(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 368
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    .line 370
    .local v1, "alloc":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/samsung/android/sume/core/format/MediaFormat;TT;>;"
    if-eqz v1, :cond_15

    .line 371
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 373
    :cond_15
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private doDealloc(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 377
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 379
    .local v1, "dealloc":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    if-eqz v1, :cond_18

    .line 380
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 383
    return-void

    .line 382
    :cond_18
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private doDescribe(Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;"
        }
    .end annotation

    .line 359
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    .line 361
    .local v1, "describe":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Lcom/samsung/android/sume/core/format/MutableMediaFormat;>;"
    if-eqz v1, :cond_1b

    .line 362
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    return-object v2

    .line 364
    :cond_1b
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private doStringfy(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 394
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 396
    .local v1, "stringfy":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/util/function/Function<TT;Ljava/lang/String;>;>;"
    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda42;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private doTransform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;",
            "Ljava/lang/Class<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 387
    .local p2, "data":Ljava/lang/Object;, "TT;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    .line 389
    .local v1, "transform":Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->apply(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 420
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TT2;>;"
    .local p3, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;>;"
    move-object/from16 v8, p3

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 422
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no transform exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", find alternatives"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v14, "fromList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v15, "toList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda8;

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 427
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 456
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;

    invoke-direct {v1, v8}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda10;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object v11, v7

    .end local v7    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 457
    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    .line 477
    .local v0, "found":Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 421
    .end local v0    # "found":Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "fromList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    .end local v15    # "toList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    .restart local v7    # "key":Ljava/lang/String;
    :cond_7a
    move-object v11, v7

    .line 479
    .end local v7    # "key":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    :goto_7b
    return-object v11
.end method

.method private findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TR;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 402
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda15;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Class;)V

    .line 403
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 410
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda16;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Class;)V

    .line 411
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 412
    .local v1, "found":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v1    # "found":Ljava/lang/String;
    :cond_31
    return-object v0
.end method

.method private getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 249
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 2

    .line 48
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    if-nez v0, :cond_17

    .line 49
    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    monitor-enter v0

    .line 50
    :try_start_7
    sget-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    if-nez v1, :cond_12

    .line 51
    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;-><init>()V

    sput-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 53
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 55
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    return-object v0
.end method

.method private getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 245
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRequiredToRelease(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 105
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedTransform(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;)Z"
        }
    .end annotation

    .line 101
    .local p0, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isWrappedTransform(Ljava/util/function/BiFunction;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 78
    .local p0, "func":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$doStringfy$28(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "it"    # Ljava/util/function/Function;

    .line 396
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$findAvailableBinaryKey$32(Landroid/util/Pair;Landroid/util/Pair;)Z
    .registers 4
    .param p0, "it1"    # Landroid/util/Pair;
    .param p1, "it"    # Landroid/util/Pair;

    .line 459
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findAvailableBinaryKey$35(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .registers 5
    .param p0, "from"    # Ljava/lang/Class;
    .param p1, "to"    # Ljava/lang/Class;

    .line 474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$findAvailableUnaryKey$29(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "it"    # Ljava/lang/String;

    .line 405
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 406
    :catch_9
    move-exception v0

    .line 407
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$findAvailableUnaryKey$30(Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .registers 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Number;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 4
    .param p0, "number"    # Ljava/lang/Number;

    .line 120
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v1, 0x1

    invoke-static {v1, v1}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    .line 121
    .local v0, "format":Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_19

    .line 122
    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U8C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_2c

    .line 123
    :cond_19
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    .line 124
    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U32C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_2c

    .line 125
    :cond_23
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_2d

    .line 126
    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->F32C1:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 129
    :goto_2c
    return-object v0

    .line 128
    :cond_2d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "implement not yet"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$new$1(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 131
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->NONE:Lcom/samsung/android/sume/core/types/MediaType;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/sume/core/format/Shape;->of(II)Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableOf(Lcom/samsung/android/sume/core/types/MediaType;[Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$10(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/UniExifInterface;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Ljava/nio/ByteBuffer;

    .line 219
    const-string v0, "exif"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    .line 220
    invoke-static {p1}, Lcom/samsung/android/sume/core/UniExifInterface;->of(Ljava/nio/ByteBuffer;)Lcom/samsung/android/sume/core/UniExifInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$11(Landroid/hardware/HardwareBuffer;)Ljava/lang/String;
    .registers 5
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[w=%d, h=%d, fmt=%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Landroid/graphics/Bitmap;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    .registers 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/format/Shape;->rectOf(II)Landroid/graphics/Rect;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    .line 134
    .local v0, "fmt":Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U8C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 135
    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->RGB:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 136
    invoke-static {p0}, Lcom/samsung/android/sume/core/types/ColorSpace;->of(Landroid/graphics/Bitmap;)Lcom/samsung/android/sume/core/types/ColorSpace;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorSpace(Lcom/samsung/android/sume/core/types/ColorSpace;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 138
    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 139
    .local v1, "ratio":F
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_4a

    .line 140
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U8C4:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 141
    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_66

    .line 142
    :cond_4a
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_56

    .line 143
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U16C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_66

    .line 144
    :cond_56
    const/high16 v2, 0x3ec00000    # 0.375f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_67

    .line 145
    sget-object v2, Lcom/samsung/android/sume/core/types/DataType;->U16C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 146
    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 152
    :goto_66
    return-object v0

    .line 148
    :cond_67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byte count +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is differ from calculated buffer size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$new$3(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Number;)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "number"    # Ljava/lang/Number;

    .line 157
    instance-of v0, p1, Ljava/lang/Integer;

    const/16 v1, 0x20

    if-eqz v0, :cond_19

    .line 158
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 159
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_76

    .line 160
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_19
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_32

    .line 161
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    goto :goto_76

    .line 163
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_32
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_49

    .line 164
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_76

    .line 166
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_49
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_5e

    .line 167
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    move-object v1, p1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_76

    .line 169
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5e
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_77

    .line 170
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 175
    :goto_76
    return-object v0

    .line 173
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not supported number type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$new$4(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Ljava/lang/Number;
    .registers 6
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 178
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "media is not scala"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 181
    :cond_28
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 183
    :cond_3f
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 185
    :cond_56
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 186
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 187
    :cond_69
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 190
    :cond_80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not supported scala type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$new$5(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    .registers 4
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 194
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fd=%d, len=%ld"

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/Def;->fmtstr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$6(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Ljava/nio/ByteBuffer;

    .line 197
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 198
    .local v0, "dstBuffer":Landroid/hardware/HardwareBuffer;
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyFromByteBuffer(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;Landroid/hardware/HardwareBuffer;)V

    .line 199
    return-object v0
.end method

.method static synthetic lambda$new$7(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 202
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    .local v0, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyToByteBuffer(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;Ljava/nio/ByteBuffer;)V

    .line 204
    return-object v0
.end method

.method static synthetic lambda$new$8(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Landroid/graphics/Bitmap;

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    .local v0, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 209
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 210
    return-object v0
.end method

.method static synthetic lambda$new$9(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Ljava/nio/ByteBuffer;

    .line 213
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    .line 214
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    .local v0, "dstBuffer":Landroid/graphics/Bitmap;
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 216
    return-object v0
.end method

.method static synthetic lambda$registerTransform$22(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 3
    .param p0, "it"    # Ljava/util/Map$Entry;

    .line 323
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/BiFunction;

    filled-new-array {v1}, [Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;-><init>([Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method static synthetic lambda$unRegisterAlloc$16(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 289
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterAlloc$17(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "allocList"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 289
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterDealloc$19(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 307
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterDealloc$20(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "deallocList"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 307
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterDescribe$13(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 271
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterDescribe$14(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "deallocList"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 271
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda40;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda40;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterStringfy$26(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 354
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterStringfy$27(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "stringfy"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 354
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterTransform$23(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 336
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$unRegisterTransform$24(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "transforms"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 336
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda41;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda41;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static newRegistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .registers 2

    .line 109
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V

    return-object v0
.end method

.method public static newUnregistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .registers 2

    .line 113
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V

    return-object v0
.end method

.method static popInternalBufferHandler()Ljava/util/function/Consumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    return-object v0
.end method

.method public static putInternalBufferHandler(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "bufferHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private registerAlloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "*>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 276
    .local p1, "allocMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Function<Lcom/samsung/android/sume/core/format/MediaFormat;*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda36;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;-><init>()V

    .line 277
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 284
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Function<Lcom/samsung/android/sume/core/format/MediaFormat;*>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 285
    return-object p0
.end method

.method private registerDealloc(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 294
    .local p1, "deallocMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Consumer<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda7;-><init>()V

    .line 295
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 302
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Consumer<*>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 303
    return-object p0
.end method

.method private registerDescribe(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            ">;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 258
    .local p1, "describeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Function<*Lcom/samsung/android/sume/core/format/MutableMediaFormat;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;-><init>()V

    .line 259
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 266
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Function<*Lcom/samsung/android/sume/core/format/MutableMediaFormat;>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 267
    return-object p0
.end method

.method private registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 341
    .local p1, "stringfy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Function<*Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;-><init>()V

    .line 342
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 349
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Function<*Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 350
    return-object p0
.end method

.method private registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 312
    .local p1, "transforms":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;**>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda12;-><init>()V

    .line 313
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 325
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 326
    return-object p0
.end method

.method private registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 330
    .local p1, "wrappedTransforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    return-object p0
.end method

.method public static reset()V
    .registers 2

    .line 91
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    .line 92
    .local v0, "ex":Lcom/samsung/android/sume/core/buffer/BufferExtension;
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 94
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 95
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 96
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 97
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 98
    return-void
.end method

.method public static stringfy(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    .local p0, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doStringfy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;",
            "Ljava/lang/Class<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 86
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doTransform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private unRegisterAlloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 289
    .local p1, "allocList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->allocMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda37;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 290
    return-object p0
.end method

.method private unRegisterDealloc(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 307
    .local p1, "deallocList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->deallocMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 308
    return-object p0
.end method

.method private unRegisterDescribe(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 271
    .local p1, "deallocList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->describeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda17;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 272
    return-object p0
.end method

.method private unRegisterStringfy(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 354
    .local p1, "stringfy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda14;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 355
    return-object p0
.end method

.method private unRegisterTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 336
    .local p1, "transforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda35;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda35;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 337
    return-object p0
.end method


# virtual methods
.method synthetic lambda$findAvailableBinaryKey$31$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .registers 15
    .param p1, "from"    # Ljava/lang/Class;
    .param p2, "to"    # Ljava/lang/Class;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fromList"    # Ljava/util/List;
    .param p5, "toList"    # Ljava/util/List;
    .param p6, "it"    # Ljava/lang/String;

    .line 429
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "->"

    invoke-virtual {p6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "token":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 432
    .local v2, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_1a

    .line 433
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 435
    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 436
    .local v3, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_2e

    .line 437
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 439
    :cond_2e
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 440
    sget-object v5, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find alternative for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return v4

    .line 443
    :cond_5d
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 444
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 445
    :cond_6c
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 446
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7a} :catch_7b

    .line 448
    :cond_7a
    :goto_7a
    return v0

    .line 450
    .end local v1    # "token":[Ljava/lang/String;
    .end local v2    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_7b
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 452
    return v0
.end method

.method synthetic lambda$findAvailableBinaryKey$33$com-samsung-android-sume-core-buffer-BufferExtension(Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 10
    .param p1, "it1"    # Landroid/util/Pair;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "registry"    # Ljava/util/Map;
    .param p4, "it2"    # Landroid/util/Pair;

    .line 462
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "first":Ljava/lang/String;
    iget-object v1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "second":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find 2nd order combinations for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    filled-new-array {v3, v4}, [Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;-><init>([Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;)V

    return-object v2
.end method

.method synthetic lambda$findAvailableBinaryKey$34$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 7
    .param p1, "toList"    # Ljava/util/List;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "registry"    # Ljava/util/Map;
    .param p4, "it1"    # Landroid/util/Pair;

    .line 471
    nop

    .line 458
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda38;

    invoke-direct {v1, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda38;-><init>(Landroid/util/Pair;)V

    .line 459
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda39;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;)V

    .line 461
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 471
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    return-object v0
.end method

.method synthetic lambda$findAvailableBinaryKey$36$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 9
    .param p1, "fromList"    # Ljava/util/List;
    .param p2, "toList"    # Ljava/util/List;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "registry"    # Ljava/util/Map;
    .param p5, "from"    # Ljava/lang/Class;
    .param p6, "to"    # Ljava/lang/Class;

    .line 474
    nop

    .line 457
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 458
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;-><init>()V

    .line 472
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda20;

    invoke-direct {v1, p5, p6}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 474
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    return-object v0
.end method

.method synthetic lambda$registerAlloc$15$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 279
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 280
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$registerDealloc$18$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 297
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 298
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$registerDescribe$12$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 261
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 262
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$registerStringfy$25$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 344
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 345
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$registerTransform$21$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 5
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 315
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 316
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 318
    .local v1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 319
    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 321
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
