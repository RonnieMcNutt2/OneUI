.class public final Landroid/content/rollback/PackageRollbackInfo;
.super Ljava/lang/Object;
.source "PackageRollbackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsApex:Z

.field private final mIsApkInApex:Z

.field private final mPendingBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRollbackDataPolicy:I

.field private final mSnapshottedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

.field private final mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 226
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo$1;

    invoke-direct {v0}, Landroid/content/rollback/PackageRollbackInfo$1;-><init>()V

    sput-object v0, Landroid/content/rollback/PackageRollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;)V
    .registers 17
    .param p1, "packageRolledBackFrom"    # Landroid/content/pm/VersionedPackage;
    .param p2, "packageRolledBackTo"    # Landroid/content/pm/VersionedPackage;
    .param p5, "isApex"    # Z
    .param p6, "isApkInApex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/VersionedPackage;",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p3, "pendingBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "pendingRestores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    .local p7, "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V
    .registers 9
    .param p1, "packageRolledBackFrom"    # Landroid/content/pm/VersionedPackage;
    .param p2, "packageRolledBackTo"    # Landroid/content/pm/VersionedPackage;
    .param p5, "isApex"    # Z
    .param p6, "isApkInApex"    # Z
    .param p8, "rollbackDataPolicy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/VersionedPackage;",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 191
    .local p3, "pendingBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "pendingRestores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;>;"
    .local p7, "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    .line 193
    iput-object p2, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    .line 194
    iput-object p3, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    .line 195
    iput-object p4, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    .line 196
    iput-boolean p5, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    .line 197
    iput p8, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    .line 198
    iput-boolean p6, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    .line 199
    iput-object p7, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    .line 204
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    .line 208
    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    .line 209
    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/rollback/PackageRollbackInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addPendingBackup(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 119
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 134
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 135
    .local v1, "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    iget v2, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    if-ne v2, p1, :cond_17

    .line 136
    return-object v1

    .line 138
    .end local v1    # "ri":Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    :cond_17
    goto :goto_6

    .line 140
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRollbackDataPolicy()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    return v0
.end method

.method public getSnapshottedUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    return-object v0
.end method

.method public getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public isApex()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    return v0
.end method

.method public isApkInApex()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    return v0
.end method

.method public removePendingBackup(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 169
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public removePendingRestoreInfo(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 174
    invoke-virtual {p0, p1}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V

    .line 175
    return-void
.end method

.method public removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V
    .registers 3
    .param p1, "ri"    # Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 145
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 220
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/VersionedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 221
    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/VersionedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 222
    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    iget-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    return-void
.end method
