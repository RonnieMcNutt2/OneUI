.class public abstract Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.super Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;
.source "SequentialFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Mode;,
        Lcom/samsung/android/sume/core/filter/collection/SequentialFilter$Type;
    }
.end annotation


# instance fields
.field protected descriptor:Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V
    .registers 2
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;Ljava/util/function/Supplier;)V
    .registers 3
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p2, "channelSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->channelSupplier:Ljava/util/function/Supplier;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    return-object v0
.end method
