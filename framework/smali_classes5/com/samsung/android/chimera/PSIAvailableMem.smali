.class public Lcom/samsung/android/chimera/PSIAvailableMem;
.super Ljava/lang/Object;
.source "PSIAvailableMem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field availMem:J

.field cached:J

.field checkTime:J

.field running:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/samsung/android/chimera/PSIAvailableMem$1;

    invoke-direct {v0}, Lcom/samsung/android/chimera/PSIAvailableMem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/chimera/PSIAvailableMem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .registers 9
    .param p1, "availMem"    # J
    .param p3, "running"    # J
    .param p5, "cached"    # J
    .param p7, "checkTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    .line 25
    iput-wide p3, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    .line 26
    iput-wide p5, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    .line 27
    iput-wide p7, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/chimera/PSIAvailableMem;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/chimera/PSIAvailableMem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/chimera/PSIAvailableMem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailMem()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 83
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    return-wide v0
.end method

.method public getCached()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 99
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    return-wide v0
.end method

.method public getCheckTime()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 107
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    return-wide v0
.end method

.method public getRunning()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 91
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->availMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->running:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->cached:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/samsung/android/chimera/PSIAvailableMem;->checkTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    return-void
.end method
