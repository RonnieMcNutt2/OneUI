.class public final Landroid/media/MediaRoute2Info$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mAllowedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mClientPackageName:Ljava/lang/String;

.field mConnectionState:I

.field mDeduplicationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDescription:Ljava/lang/CharSequence;

.field mExtras:Landroid/os/Bundle;

.field final mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIconUri:Landroid/net/Uri;

.field final mId:Ljava/lang/String;

.field mIsSystem:Z

.field mIsVisibilityRestricted:Z

.field final mName:Ljava/lang/CharSequence;

.field mPackageName:Ljava/lang/String;

.field mProviderId:Ljava/lang/String;

.field mType:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRoute2Info;)V
    .registers 3
    .param p1, "routeInfo"    # Landroid/media/MediaRoute2Info;

    .line 1013
    iget-object v0, p1, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 1014
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 972
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1025
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 1028
    const-string v0, "routeInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1030
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 1031
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 1033
    iget v0, p2, Landroid/media/MediaRoute2Info;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1034
    iget-boolean v0, p2, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 1035
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 1036
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 1037
    iget v0, p2, Landroid/media/MediaRoute2Info;->mConnectionState:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 1038
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 1039
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    .line 1040
    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1041
    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 1042
    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolume:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 1043
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 1044
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1045
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_63

    .line 1046
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p2, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1048
    :cond_63
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 1049
    iget-boolean v0, p2, Landroid/media/MediaRoute2Info;->mIsVisibilityRestricted:Z

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1050
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mAllowedPackages:Ljava/util/Set;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1051
    return-void

    .line 1026
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 972
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 993
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 996
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 999
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 1000
    iput-object p2, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 1002
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1003
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1004
    return-void

    .line 997
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;

    .line 1064
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1067
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    return-object p0

    .line 1065
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFeatures(Ljava/util/Collection;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1082
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1083
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1084
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 1085
    .end local v1    # "feature":Ljava/lang/String;
    goto :goto_9

    .line 1086
    :cond_19
    return-object p0
.end method

.method public build()Landroid/media/MediaRoute2Info;
    .registers 3

    .line 1300
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1303
    new-instance v0, Landroid/media/MediaRoute2Info;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2Info;-><init>(Landroid/media/MediaRoute2Info$Builder;)V

    return-object v0

    .line 1301
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearFeatures()Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1094
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1095
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 1213
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 1214
    return-object p0
.end method

.method public setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1166
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 1167
    return-object p0
.end method

.method public setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "connectionState"    # I

    .line 1157
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 1158
    return-object p0
.end method

.method public setDeduplicationIds(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1222
    .local p1, "id":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 1223
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1144
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 1145
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1233
    if-nez p1, :cond_6

    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1235
    return-object p0

    .line 1237
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 1238
    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "iconUri"    # Landroid/net/Uri;

    .line 1135
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 1136
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1176
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    .line 1177
    return-object p0
.end method

.method public setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .param p1, "providerId"    # Ljava/lang/String;

    .line 1247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1250
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 1251
    return-object p0

    .line 1248
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerId must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "isSystem"    # Z

    .line 1115
    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 1116
    return-object p0
.end method

.method public setType(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 1105
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 1106
    return-object p0
.end method

.method public setVisibilityPublic()Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    .line 1268
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1269
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1270
    return-object p0
.end method

.method public setVisibilityRestricted(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 1288
    .local p1, "allowedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsVisibilityRestricted:Z

    .line 1289
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAllowedPackages:Ljava/util/Set;

    .line 1290
    return-object p0
.end method

.method public setVolume(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "volume"    # I

    .line 1203
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 1204
    return-object p0
.end method

.method public setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "volumeHandling"    # I

    .line 1185
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 1186
    return-object p0
.end method

.method public setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2
    .param p1, "volumeMax"    # I

    .line 1194
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 1195
    return-object p0
.end method
