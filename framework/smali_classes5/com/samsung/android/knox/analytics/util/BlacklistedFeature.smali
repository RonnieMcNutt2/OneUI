.class public Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;
.super Ljava/lang/Object;
.source "BlacklistedFeature.java"


# instance fields
.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mFeature:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mEvents:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public hasEvent(Ljava/lang/String;)Z
    .registers 8
    .param p1, "event"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, "current":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1d

    .line 31
    return v5

    .line 34
    :cond_1d
    const-string v4, "\\*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "wildcardSplit":[Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    aget-object v2, v4, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 36
    return v5

    .line 39
    :cond_32
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 40
    return v5

    .line 42
    .end local v1    # "current":Ljava/lang/String;
    .end local v4    # "wildcardSplit":[Ljava/lang/String;
    :cond_39
    goto :goto_6

    .line 43
    :cond_3a
    return v2
.end method

.method public hasFeatureName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBlacklisted(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->hasFeatureName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->hasEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
