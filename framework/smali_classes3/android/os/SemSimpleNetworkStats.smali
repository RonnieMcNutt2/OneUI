.class public final Landroid/os/SemSimpleNetworkStats;
.super Ljava/lang/Object;
.source "SemSimpleNetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemSimpleNetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRxBytes:J

.field private mTxBytes:J

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Landroid/os/SemSimpleNetworkStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemSimpleNetworkStats;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/os/SemSimpleNetworkStats$1;

    invoke-direct {v0}, Landroid/os/SemSimpleNetworkStats$1;-><init>()V

    sput-object v0, Landroid/os/SemSimpleNetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    .line 59
    iput p1, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    .line 60
    return-void
.end method

.method public constructor <init>(IJJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "txBytes"    # J
    .param p4, "rxBytes"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    .line 67
    iput-wide p2, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    .line 68
    iput-wide p4, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/SemSimpleNetworkStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 77
    return-void
.end method

.method private initialize()V
    .registers 3

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    .line 154
    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    .line 155
    return-void
.end method


# virtual methods
.method public add(Landroid/os/SemSimpleNetworkStats;)V
    .registers 6
    .param p1, "item"    # Landroid/os/SemSimpleNetworkStats;

    .line 137
    iget v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 138
    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    .line 139
    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getRxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    .line 141
    :cond_1a
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getRxBytes()J
    .registers 3

    .line 97
    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    return-wide v0
.end method

.method public getTxBytes()J
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    return-wide v0
.end method

.method public getTxRxBytes()J
    .registers 5

    .line 104
    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    iget-wide v2, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    .line 124
    return-void
.end method

.method public reset()V
    .registers 1

    .line 130
    invoke-direct {p0}, Landroid/os/SemSimpleNetworkStats;->initialize()V

    .line 131
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    iget v0, p0, Landroid/os/SemSimpleNetworkStats;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Landroid/os/SemSimpleNetworkStats;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    return-void
.end method
