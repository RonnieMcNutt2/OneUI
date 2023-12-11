.class public Lcom/samsung/android/location/SemLocationBatchingRequest;
.super Ljava/lang/Object;
.source "SemLocationBatchingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/location/SemLocationBatchingRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxInterval:J

.field private maxNumUpdates:I

.field private maxWaitTime:J

.field private minDisplacement:F

.field private minInterval:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Lcom/samsung/android/location/SemLocationBatchingRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/location/SemLocationBatchingRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/location/SemLocationBatchingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minInterval:J

    .line 29
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxInterval:J

    .line 30
    const-wide/32 v0, 0x2255100

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxWaitTime:J

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxNumUpdates:I

    .line 32
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minDisplacement:F

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minInterval:J

    .line 29
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxInterval:J

    .line 30
    const-wide/32 v0, 0x2255100

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxWaitTime:J

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxNumUpdates:I

    .line 32
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minDisplacement:F

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minInterval:J

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxInterval:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxWaitTime:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxNumUpdates:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minDisplacement:F

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/location/SemLocationBatchingRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationBatchingRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxInterval()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxInterval:J

    return-wide v0
.end method

.method public getMaxNumUpdates()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxNumUpdates:I

    return v0
.end method

.method public getMaxWaitTime()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxWaitTime:J

    return-wide v0
.end method

.method public getMinDisplacement()F
    .registers 2

    .line 83
    iget v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minDisplacement:F

    return v0
.end method

.method public getMinInterval()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minInterval:J

    return-wide v0
.end method

.method public setMaxInterval(J)Lcom/samsung/android/location/SemLocationBatchingRequest;
    .registers 3
    .param p1, "millis"    # J

    .line 104
    iput-wide p1, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxInterval:J

    .line 105
    return-object p0
.end method

.method public setMaxNumUpdates(I)Lcom/samsung/android/location/SemLocationBatchingRequest;
    .registers 2
    .param p1, "numUpdates"    # I

    .line 131
    iput p1, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxNumUpdates:I

    .line 132
    return-object p0
.end method

.method public setMaxWaitTime(J)Lcom/samsung/android/location/SemLocationBatchingRequest;
    .registers 3
    .param p1, "millis"    # J

    .line 120
    iput-wide p1, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxWaitTime:J

    .line 121
    return-object p0
.end method

.method public setMinDisplacement(F)Lcom/samsung/android/location/SemLocationBatchingRequest;
    .registers 2
    .param p1, "displacement"    # F

    .line 142
    iput p1, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minDisplacement:F

    .line 143
    return-object p0
.end method

.method public setMinInterval(J)Lcom/samsung/android/location/SemLocationBatchingRequest;
    .registers 3
    .param p1, "millis"    # J

    .line 93
    iput-wide p1, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minInterval:J

    .line 94
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    iget-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-wide v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxWaitTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->maxNumUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/samsung/android/location/SemLocationBatchingRequest;->minDisplacement:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 179
    return-void
.end method
