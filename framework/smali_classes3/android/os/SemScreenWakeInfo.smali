.class public Landroid/os/SemScreenWakeInfo;
.super Ljava/lang/Object;
.source "SemScreenWakeInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemScreenWakeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:J

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/os/SemScreenWakeInfo$1;

    invoke-direct {v0}, Landroid/os/SemScreenWakeInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemScreenWakeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemScreenWakeInfo;->count:J

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemScreenWakeInfo;->count:J

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Landroid/os/SemScreenWakeInfo;->count:J

    .line 36
    return-void
.end method


# virtual methods
.method public calculateDelta(Landroid/os/SemScreenWakeInfo;)V
    .registers 6
    .param p1, "prev"    # Landroid/os/SemScreenWakeInfo;

    .line 47
    iget-object v0, p0, Landroid/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/SemScreenWakeInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 49
    :cond_d
    iget-wide v0, p0, Landroid/os/SemScreenWakeInfo;->count:J

    invoke-virtual {p1}, Landroid/os/SemScreenWakeInfo;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemScreenWakeInfo;->count:J

    .line 50
    return-void
.end method

.method public clone()Landroid/os/SemScreenWakeInfo;
    .registers 2

    .line 83
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemScreenWakeInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 84
    :catch_7
    move-exception v0

    .line 86
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
    invoke-virtual {p0}, Landroid/os/SemScreenWakeInfo;->clone()Landroid/os/SemScreenWakeInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()J
    .registers 3

    .line 43
    iget-wide v0, p0, Landroid/os/SemScreenWakeInfo;->count:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 76
    iget-object v0, p0, Landroid/os/SemScreenWakeInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Landroid/os/SemScreenWakeInfo;->count:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    return-void
.end method
