.class public abstract Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.super Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
.source "MFDescriptorBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/descriptor/MFDescriptor;


# static fields
.field protected static FILTER_ID:I

.field protected static FILTER_TYPE:I

.field protected static PLUGIN_CLASS:I

.field protected static PLUGIN_CLASS_NAME:I

.field protected static PLUGIN_ID:I

.field protected static PLUGIN_INPUT_FORMAT:I

.field protected static PLUGIN_LOADING_TYPE:I

.field protected static PLUGIN_MEDIA_TYPE:I

.field protected static PLUGIN_OUTPUT_FORMAT:I

.field protected static PLUGIN_TARGET_FORMAT:I

.field protected static PLUGIN_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_CLASS:I

    .line 14
    const/16 v0, 0x3e9

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_ID:I

    .line 15
    const/16 v0, 0x3ea

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_VERSION:I

    .line 16
    const/16 v0, 0x3eb

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_MEDIA_TYPE:I

    .line 17
    const/16 v0, 0x3ec

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_INPUT_FORMAT:I

    .line 18
    const/16 v0, 0x3ed

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_OUTPUT_FORMAT:I

    .line 19
    const/16 v0, 0x3ee

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_LOADING_TYPE:I

    .line 20
    const/16 v0, 0x3ef

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_CLASS_NAME:I

    .line 21
    const/16 v0, 0x3f0

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_TARGET_FORMAT:I

    .line 22
    const/16 v0, 0x3f2

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_ID:I

    .line 23
    const/16 v0, 0x3f3

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterId()Ljava/lang/String;
    .registers 2

    .line 37
    sget v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_ID:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 1

    .line 27
    return-object p0
.end method

.method public setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
    .registers 4
    .param p1, "filterId"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method public setFilterType(Ljava/lang/Class;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;"
        }
    .end annotation

    .line 46
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-object p0
.end method

.method public setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V
    .registers 2
    .param p1, "option"    # Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 32
    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->copyTo(Lcom/samsung/android/sume/core/types/OptionBase;)V

    .line 33
    return-void
.end method
