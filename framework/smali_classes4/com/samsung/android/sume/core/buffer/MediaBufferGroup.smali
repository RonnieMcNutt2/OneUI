.class public abstract Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.source "MediaBufferGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected primaryId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Landroid/os/Parcel;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->primaryId:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    .line 39
    const-class v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/util/List;)V
    .registers 4
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p2, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->primaryId:I

    .line 33
    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    .line 34
    return-void
.end method

.method static synthetic lambda$getExifBuffer$1(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .registers 3
    .param p0, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 70
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_1a

    .line 71
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "exif"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 70
    :goto_1b
    return v0
.end method

.method static synthetic lambda$getIccBuffer$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .registers 3
    .param p0, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 80
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_1a

    .line 81
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    const-string v1, "icc"

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 80
    :goto_1b
    return v0
.end method

.method static synthetic lambda$getMetaDataBuffers$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .registers 3
    .param p0, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 62
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->META:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public addBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;"
        }
    .end annotation

    .line 95
    .local p1, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    return-object p0
.end method

.method public varargs addBuffer([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
    .registers 3
    .param p1, "buffers"    # [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 91
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->addBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/util/Map;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->addExtra(Ljava/util/Map;)V

    return-void
.end method

.method public asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 118
    .local v0, "useCount":I
    sget-object v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 120
    return-object p0
.end method

.method public bridge synthetic containFlags([I)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containFlags([I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsAllExtra([Ljava/lang/String;)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAllExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsAnyExtra([Ljava/lang/String;)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAnyExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsExtra(Ljava/lang/String;)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsExtra(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 156
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string/jumbo v3, "n/a"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->extra:Ljava/util/HashMap;

    .line 157
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data[#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    .line 158
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->dataToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "    "

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->contentToStringln(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4

    .line 105
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    .line 106
    .local v0, "copied":Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    .line 107
    return-object v0
.end method

.method public bridge synthetic copy()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected dataToString()Ljava/lang/String;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;)V

    .line 149
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 150
    const-string v1, "\n"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    return-object v0
.end method

.method public deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deepCopy()Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAlign()Lcom/samsung/android/sume/core/buffer/Align;
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getAlign()Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChannels()I
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getChannels()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCols()I
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getCols()I

    move-result v0

    return v0
.end method

.method public getExifBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda1;-><init>()V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 69
    return-object v0
.end method

.method public bridge synthetic getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getExtra()Ljava/util/Map;
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getIccBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda5;-><init>()V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 79
    return-object v0
.end method

.method public getMetaDataBuffers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 63
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    return-object v0
.end method

.method public abstract getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method public getPrimaryId()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->primaryId:I

    return v0
.end method

.method public bridge synthetic getRows()I
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getRows()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getScanline()I
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getScanline()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStride()I
    .registers 2

    .line 25
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getStride()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$dataToString$3$com-samsung-android-sume-core-buffer-MediaBufferGroup(I)Ljava/lang/String;
    .registers 4
    .param p1, "it"    # I

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-th)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->contentToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 128
    .local v0, "useCount":I
    if-lez v0, :cond_46

    .line 129
    sget-object v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use count remained, skip release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 133
    :cond_46
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->release()V

    .line 135
    :try_start_49
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_4e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_49 .. :try_end_4e} :catch_4f

    .line 138
    goto :goto_50

    .line 136
    :catch_4f
    move-exception v1

    .line 139
    :goto_50
    return-void
.end method

.method public removeBuffer(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .registers 3
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setExtra(Ljava/util/Map;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public setMetaDataBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 87
    .local p1, "metaDataBuffer":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->addBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setScanline(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setScanline(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setStride(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 25
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setStride(I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public size()J
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->buffers:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 46
    return-void
.end method
