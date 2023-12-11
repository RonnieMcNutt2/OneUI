.class public Landroid/os/SemKernelWakelockInfo;
.super Ljava/lang/Object;
.source "SemKernelWakelockInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/os/SemKernelWakelockInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemKernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:J

.field private tag:Ljava/lang/String;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/os/SemKernelWakelockInfo$1;

    invoke-direct {v0}, Landroid/os/SemKernelWakelockInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemKernelWakelockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemKernelWakelockInfo;->tag:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->count:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/os/SemKernelWakelockInfo;->tag:Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->count:J

    .line 32
    iput-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "time"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/os/SemKernelWakelockInfo;->tag:Ljava/lang/String;

    .line 37
    iput-wide p2, p0, Landroid/os/SemKernelWakelockInfo;->count:J

    .line 38
    iput-wide p4, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    .line 39
    return-void
.end method


# virtual methods
.method public calculateDelta(Landroid/os/SemKernelWakelockInfo;)V
    .registers 8
    .param p1, "prev"    # Landroid/os/SemKernelWakelockInfo;

    .line 54
    iget-object v0, p0, Landroid/os/SemKernelWakelockInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/SemKernelWakelockInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 56
    :cond_d
    iget-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->count:J

    invoke-virtual {p1}, Landroid/os/SemKernelWakelockInfo;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->count:J

    .line 57
    iget-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    invoke-virtual {p1}, Landroid/os/SemKernelWakelockInfo;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    .line 58
    return-void
.end method

.method public clone()Landroid/os/SemKernelWakelockInfo;
    .registers 2

    .line 99
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemKernelWakelockInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 100
    :catch_7
    move-exception v0

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Landroid/os/SemKernelWakelockInfo;->clone()Landroid/os/SemKernelWakelockInfo;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/os/SemKernelWakelockInfo;)I
    .registers 6
    .param p1, "info"    # Landroid/os/SemKernelWakelockInfo;

    .line 93
    invoke-virtual {p1}, Landroid/os/SemKernelWakelockInfo;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 24
    check-cast p1, Landroid/os/SemKernelWakelockInfo;

    invoke-virtual {p0, p1}, Landroid/os/SemKernelWakelockInfo;->compareTo(Landroid/os/SemKernelWakelockInfo;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()J
    .registers 3

    .line 46
    iget-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->count:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Landroid/os/SemKernelWakelockInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 50
    iget-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 86
    iget-object v0, p0, Landroid/os/SemKernelWakelockInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-wide v0, p0, Landroid/os/SemKernelWakelockInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    return-void
.end method
