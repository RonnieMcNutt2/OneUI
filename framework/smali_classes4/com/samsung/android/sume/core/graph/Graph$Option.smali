.class public Lcom/samsung/android/sume/core/graph/Graph$Option;
.super Lcom/samsung/android/sume/core/types/OptionBase;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/graph/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static final CACHEABLE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/graph/Graph$Option;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE_FILTER_EXCEPTION:I = 0x6

.field public static final MAX_DURATION:I = 0x0

.field public static final OUTPUT_ON_EVENT_CALLBACK:I = 0x9

.field public static final PACKED_IO_BUFFERS:I = 0x2

.field public static final RECEIVE_ALL_EXCEPTION:I = 0x7

.field public static final RESTORE_META_DATA:I = 0x4

.field public static final RUN_ONE_BY_ONE:I = 0x3

.field public static final SUPPORT_ALPHA_CHANNEL:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field public static final TRACE_MEDIAFILTER:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/samsung/android/sume/core/graph/Graph$Option;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/graph/Graph$Option;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/samsung/android/sume/core/graph/Graph$Option$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/Graph$Option$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/graph/Graph$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method


# virtual methods
.method public cacheable()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 109
    return-object p0
.end method

.method public clear()V
    .registers 3

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 188
    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/cache/DiskCache;

    .line 189
    .local v0, "cache":Lcom/samsung/android/sume/core/cache/DiskCache;
    invoke-interface {v0}, Lcom/samsung/android/sume/core/cache/DiskCache;->close()V

    .line 191
    .end local v0    # "cache":Lcom/samsung/android/sume/core/cache/DiskCache;
    :cond_10
    invoke-super {p0}, Lcom/samsung/android/sume/core/types/OptionBase;->clear()V

    .line 192
    return-void
.end method

.method public getIgnoreFilterException()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    .line 148
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDuration(Ljava/util/concurrent/TimeUnit;)J
    .registers 6
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 96
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 97
    .local v0, "maxDurationMs":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2
.end method

.method public varargs ignoreFilterException([Ljava/lang/Object;)Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 4
    .param p1, "obj"    # [Ljava/lang/Object;

    .line 151
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 152
    return-object p0
.end method

.method public isCacheable()Z
    .registers 2

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isIgnoreFilterException()Z
    .registers 2

    .line 145
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isOutputOnEventCallback()Z
    .registers 2

    .line 174
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isPackedIOBuffers()Z
    .registers 2

    .line 113
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isRestoreMetadata()Z
    .registers 2

    .line 129
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isRunOneByOne()Z
    .registers 2

    .line 121
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isSupportAlphaChannel()Z
    .registers 2

    .line 137
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isTraceMediaFilter()Z
    .registers 2

    .line 166
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public outputOnEventCallback()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 170
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 171
    return-object p0
.end method

.method public packedIOBuffers()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 116
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 117
    return-object p0
.end method

.method public receiveAllException()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 156
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 157
    return-object p0
.end method

.method public restoreMetadata()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 132
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 133
    return-object p0
.end method

.method public runOneByOne()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 124
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 125
    return-object p0
.end method

.method public set(I)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 3
    .param p1, "option"    # I

    .line 178
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 4
    .param p1, "option"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 183
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/types/OptionBase;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    move-result-object v0

    return-object v0
.end method

.method public setMaxDuration(JLjava/util/concurrent/TimeUnit;)Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 6
    .param p1, "maxDuration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 100
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 101
    return-object p0
.end method

.method public supportAlphaChannel()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 140
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 141
    return-object p0
.end method

.method public traceMediaFilter()Lcom/samsung/android/sume/core/graph/Graph$Option;
    .registers 2

    .line 161
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 162
    return-object p0
.end method
