.class public final Lcom/samsung/android/edge/EdgeLightingPolicy;
.super Ljava/lang/Object;
.source "EdgeLightingPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/edge/EdgeLightingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_EXCLUDE_BLACK_LIST:I = 0x4

.field public static final TYPE_EXCLUDE_SYSTEM_APP:I = 0x2

.field public static final TYPE_INCLUDE_ALL_APP:I = 0x1

.field public static final TYPE_NOT_CONNECTED_MODE:I = 0x8


# instance fields
.field private mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Lcom/samsung/android/edge/EdgeLightingPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/edge/EdgeLightingPolicy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/edge/EdgeLightingPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    .line 54
    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 55
    return-void
.end method


# virtual methods
.method public addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPolicyType()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    return v0
.end method

.method public getPolicyVersion()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    return-wide v0
.end method

.method public setPolicyType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 66
    iput p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    .line 67
    return-void
.end method

.method public setPolicyVersion(J)V
    .registers 3
    .param p1, "version"    # J

    .line 74
    iput-wide p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdgeLightingPolicy{Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 85
    .local v2, "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .end local v2    # "info":Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    goto :goto_2e

    .line 87
    :cond_56
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 101
    return-void
.end method
