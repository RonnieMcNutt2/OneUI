.class public abstract Landroid/os/storage/StorageManagerInternal;
.super Ljava/lang/Object;
.source "StorageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;,
        Landroid/os/storage/StorageManagerInternal$ResetListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
.end method

.method public abstract freeCache(Ljava/lang/String;J)V
.end method

.method public abstract getExternalStorageMountMode(ILjava/lang/String;)I
.end method

.method public abstract getPrimaryVolumeIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasExternalStorageAccess(ILjava/lang/String;)Z
.end method

.method public abstract hasLegacyExternalStorage(I)Z
.end method

.method public abstract isCeStoragePrepared(I)Z
.end method

.method public abstract isExternalStorageService(I)Z
.end method

.method public abstract isFuseMounted(I)Z
.end method

.method public abstract markCeStoragePrepared(I)V
.end method

.method public abstract onAppOpsChanged(IILjava/lang/String;II)V
.end method

.method public abstract prepareAppDataAfterInstall(Ljava/lang/String;I)V
.end method

.method public abstract prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V
.end method

.method public abstract resetUser(I)V
.end method
