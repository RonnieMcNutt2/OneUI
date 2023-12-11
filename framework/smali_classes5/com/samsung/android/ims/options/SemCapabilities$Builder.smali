.class public Lcom/samsung/android/ims/options/SemCapabilities$Builder;
.super Ljava/lang/Object;
.source "SemCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mAvailableFeatures:J

.field protected mBotServiceId:Ljava/lang/String;

.field protected mExtFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFeatures:J

.field protected mIsAvailable:Z

.field protected mIsExpired:Z

.field protected mIsLegacyLatching:Z

.field protected mTimestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsAvailable:Z

    .line 788
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mFeatures:J

    .line 789
    iput-wide v1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mAvailableFeatures:J

    .line 790
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsExpired:Z

    .line 791
    iput-boolean v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsLegacyLatching:Z

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mBotServiceId:Ljava/lang/String;

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mExtFeatures:Ljava/util/List;

    .line 797
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/ims/options/SemCapabilities;
    .registers 2

    .line 800
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilities;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/options/SemCapabilities;-><init>(Lcom/samsung/android/ims/options/SemCapabilities$Builder;)V

    return-object v0
.end method

.method public setAvailableFeatures(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 3
    .param p1, "availableFeatures"    # J

    .line 814
    iput-wide p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mAvailableFeatures:J

    .line 815
    return-object p0
.end method

.method public setBotServiceId(Ljava/lang/String;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 2
    .param p1, "botServiceId"    # Ljava/lang/String;

    .line 834
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mBotServiceId:Ljava/lang/String;

    .line 835
    return-object p0
.end method

.method public setExtFeature(Ljava/util/List;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/options/SemCapabilities$Builder;"
        }
    .end annotation

    .line 839
    .local p1, "extFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mExtFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 840
    return-object p0
.end method

.method public setFeature(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 3
    .param p1, "features"    # J

    .line 809
    iput-wide p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mFeatures:J

    .line 810
    return-object p0
.end method

.method public setIsAvailable(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 2
    .param p1, "isAvailable"    # Z

    .line 804
    iput-boolean p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsAvailable:Z

    .line 805
    return-object p0
.end method

.method public setIsExpired(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 2
    .param p1, "isExpired"    # Z

    .line 819
    iput-boolean p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsExpired:Z

    .line 820
    return-object p0
.end method

.method public setLegacyLatching(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 2
    .param p1, "isLegacyLatching"    # Z

    .line 824
    iput-boolean p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mIsLegacyLatching:Z

    .line 825
    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;
    .registers 2
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 829
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->mTimestamp:Ljava/util/Date;

    .line 830
    return-object p0
.end method
