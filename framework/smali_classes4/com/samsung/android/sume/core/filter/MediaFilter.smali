.class public interface abstract Lcom/samsung/android/sume/core/filter/MediaFilter;
.super Ljava/lang/Object;
.source "MediaFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/message/MessageConsumer;
.implements Lcom/samsung/android/sume/core/functional/Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/MediaFilter$Option;,
        Lcom/samsung/android/sume/core/filter/MediaFilter$OptionType;,
        Lcom/samsung/android/sume/core/filter/MediaFilter$Type;
    }
.end annotation


# static fields
.field public static final OPTION_ALLOW_PARTIAL_CONNECTION:I = 0x0

.field public static final OPTION_AS_INPUT:I = 0x8

.field public static final OPTION_AS_OUTPUT:I = 0x9

.field public static final OPTION_BATCH_IO:I = 0x5

.field public static final OPTION_EXTERNAL_BUFFER_COMPOSER:I = 0x3

.field public static final OPTION_IGNORABLE_FILTER:I = 0xa

.field public static final OPTION_INPUT_WITH_EVALUATION_VALUE:I = 0x7

.field public static final OPTION_KEEP_FILTER_DATA_TYPE:I = 0x4

.field public static final OPTION_PAD:I = 0x1

.field public static final OPTION_SPLIT_TYPE:I = 0x2

.field public static final OPTION_WAIT_RECEIVE_ALL:I = 0x6


# virtual methods
.method public accept(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 3
    .param p1, "retriever"    # Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;
    .param p2, "parent"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 59
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->retrieve(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 60
    return-void
.end method

.method public abstract getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 41
    invoke-interface {p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    .line 42
    .local v0, "descriptor":Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    instance-of v1, v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 43
    :cond_10
    invoke-interface {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public pause()V
    .registers 1

    .line 48
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 36
    return-void
.end method

.method public release()V
    .registers 1

    .line 37
    return-void
.end method

.method public resume()V
    .registers 1

    .line 49
    return-void
.end method

.method public setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .registers 2
    .param p1, "messageProducer"    # Lcom/samsung/android/sume/core/message/MessageProducer;

    .line 51
    return-void
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end method
