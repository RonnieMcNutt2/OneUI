.class public Landroid/os/CcuStatsInfo;
.super Ljava/lang/Object;
.source "CcuStatsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CcuStatsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cpuFreqTimeMs:[J

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Landroid/os/CcuStatsInfo$1;

    invoke-direct {v0}, Landroid/os/CcuStatsInfo$1;-><init>()V

    sput-object v0, Landroid/os/CcuStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/CcuStatsInfo;->uid:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/os/CcuStatsInfo;->cpuFreqTimeMs:[J

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 19
    iget v0, p0, Landroid/os/CcuStatsInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object v0, p0, Landroid/os/CcuStatsInfo;->cpuFreqTimeMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 21
    return-void
.end method
