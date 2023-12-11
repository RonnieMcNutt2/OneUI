.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOrderedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRankings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/NotificationListenerService$Ranking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2367
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    .line 2313
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    .line 2329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2330
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2331
    .local v1, "count":I
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2332
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 2333
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_40

    .line 2334
    new-instance v3, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v3, p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>(Landroid/os/Parcel;)V

    .line 2335
    .local v3, "r":Landroid/service/notification/NotificationListenerService$Ranking;
    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 2336
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    iget-object v5, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    .end local v3    # "r":Landroid/service/notification/NotificationListenerService$Ranking;
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2339
    .end local v2    # "i":I
    :cond_40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/notification/NotificationListenerService$RankingMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Landroid/service/notification/NotificationListenerService$Ranking;)V
    .registers 6
    .param p1, "rankings"    # [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    .line 2313
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    .line 2319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    .line 2320
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2321
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    .end local v1    # "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2324
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 2355
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2343
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2344
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 2346
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2348
    .local v2, "other":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    .line 2349
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 2348
    :goto_2b
    return v0

    .line 2344
    .end local v2    # "other":Landroid/service/notification/NotificationListenerService$RankingMap;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .registers 3

    .line 2386
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2397
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2398
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p2, v0}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 2399
    const/4 v0, 0x1

    return v0

    .line 2401
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2412
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationListenerService$Ranking;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2360
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2361
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_20

    .line 2363
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, p1, p2}, Landroid/service/notification/NotificationListenerService$Ranking;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2362
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2365
    .end local v1    # "i":I
    :cond_20
    return-void
.end method
