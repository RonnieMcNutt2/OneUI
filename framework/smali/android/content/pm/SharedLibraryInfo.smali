.class public final Landroid/content/pm/SharedLibraryInfo;
.super Ljava/lang/Object;
.source "SharedLibraryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SharedLibraryInfo$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BUILTIN:I = 0x0

.field public static final TYPE_DYNAMIC:I = 0x1

.field public static final TYPE_SDK_PACKAGE:I = 0x3

.field public static final TYPE_STATIC:I = 0x2

.field public static final VERSION_UNDEFINED:I = -0x1


# instance fields
.field private final mCodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeclaringPackage:Landroid/content/pm/VersionedPackage;

.field private mDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsNative:Z

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mType:I

.field private final mVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 385
    new-instance v0, Landroid/content/pm/SharedLibraryInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SharedLibraryInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    goto :goto_23

    .line 140
    :cond_21
    iput-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    .line 142
    :goto_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 145
    const-class v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 146
    const-class v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 147
    sget-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SharedLibraryInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SharedLibraryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "version"    # J
    .param p7, "type"    # I
    .param p8, "declaringPackage"    # Landroid/content/pm/VersionedPackage;
    .param p11, "isNative"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 121
    .local p3, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "dependentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .local p10, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    .line 125
    iput-object p4, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 126
    iput-wide p5, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 127
    iput p7, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 128
    iput-object p8, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 129
    iput-object p9, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 130
    iput-object p10, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 131
    iput-boolean p11, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    .line 132
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 366
    packed-switch p0, :pswitch_data_16

    .line 380
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 377
    :pswitch_7
    const-string/jumbo v0, "sdk"

    return-object v0

    .line 374
    :pswitch_b
    const-string/jumbo v0, "static"

    return-object v0

    .line 371
    :pswitch_f
    const-string v0, "dynamic"

    return-object v0

    .line 368
    :pswitch_12
    const-string v0, "builtin"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addDependency(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/SharedLibraryInfo;

    .line 231
    if-nez p1, :cond_3

    .line 235
    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    if-nez v0, :cond_e

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 240
    :cond_e
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public clearDependencies()V
    .registers 2

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    .line 250
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCodePaths()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-object v0

    .line 220
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getDeclaringPackage()Landroid/content/pm/VersionedPackage;
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public getDependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getDependentPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    if-nez v0, :cond_9

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 331
    :cond_9
    return-object v0
.end method

.method public getLongVersion()J
    .registers 3

    .line 282
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    return v0
.end method

.method public getVersion()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_9

    goto :goto_d

    :cond_9
    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    :goto_d
    long-to-int v0, v0

    return v0
.end method

.method public isBuiltin()Z
    .registers 2

    .line 289
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDynamic()Z
    .registers 3

    .line 296
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isNative()Z
    .registers 2

    .line 167
    iget-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    return v0
.end method

.method public isSdk()Z
    .registers 3

    .line 310
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isStatic()Z
    .registers 3

    .line 303
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedLibraryInfo{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-static {v1}, Landroid/content/pm/SharedLibraryInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependentPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 343
    const-string v1, " has dependents"

    goto :goto_3c

    :cond_3a
    const-string v1, ""

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 348
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    if-eqz v0, :cond_24

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    goto :goto_28

    .line 354
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    :goto_28
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 357
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 358
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 360
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 362
    iget-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 363
    return-void
.end method
