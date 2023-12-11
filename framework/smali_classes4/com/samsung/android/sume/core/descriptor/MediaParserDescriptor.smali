.class public Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;
.super Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.source "MediaParserDescriptor.java"


# instance fields
.field private maxDurationUs:J

.field private final mediaTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/samsung/android/sume/core/types/MediaType;)V
    .registers 4
    .param p1, "mediaTypes"    # [Lcom/samsung/android/sume/core/types/MediaType;

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;-><init>()V

    .line 16
    array-length v0, p1

    if-nez v0, :cond_f

    .line 17
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    move-object p1, v0

    .line 19
    :cond_f
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->mediaTypeList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public countToParse()I
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->mediaTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilterId()Ljava/lang/String;
    .registers 2

    .line 23
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaParserFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDurationUs()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->maxDurationUs:J

    return-wide v0
.end method

.method public needToParse(Lcom/samsung/android/sume/core/types/MediaType;)Z
    .registers 3
    .param p1, "mediaType"    # Lcom/samsung/android/sume/core/types/MediaType;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->mediaTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxDurationUs(J)V
    .registers 3
    .param p1, "maxDurationUs"    # J

    .line 35
    iput-wide p1, p0, Lcom/samsung/android/sume/core/descriptor/MediaParserDescriptor;->maxDurationUs:J

    .line 36
    return-void
.end method
