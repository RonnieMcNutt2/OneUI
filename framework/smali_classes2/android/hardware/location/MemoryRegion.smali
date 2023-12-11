.class public Landroid/hardware/location/MemoryRegion;
.super Ljava/lang/Object;
.source "MemoryRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/MemoryRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsExecutable:Z

.field private mIsReadable:Z

.field private mIsWritable:Z

.field private mSizeBytes:I

.field private mSizeBytesFree:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 152
    new-instance v0, Landroid/hardware/location/MemoryRegion$1;

    invoke-direct {v0}, Landroid/hardware/location/MemoryRegion$1;-><init>()V

    sput-object v0, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    iput-boolean v1, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    .line 150
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 114
    return v0

    .line 117
    :cond_4
    const/4 v1, 0x0

    .line 118
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/MemoryRegion;

    if-eqz v2, :cond_37

    .line 119
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/MemoryRegion;

    .line 120
    .local v2, "other":Landroid/hardware/location/MemoryRegion;
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->getCapacityBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    if-ne v3, v4, :cond_35

    .line 121
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->getFreeCapacityBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    if-ne v3, v4, :cond_35

    .line 122
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    if-ne v3, v4, :cond_35

    .line 123
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    if-ne v3, v4, :cond_35

    .line 124
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    if-ne v3, v4, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    move v1, v0

    .line 127
    .end local v2    # "other":Landroid/hardware/location/MemoryRegion;
    :cond_37
    return v1
.end method

.method public getCapacityBytes()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    return v0
.end method

.method public getFreeCapacityBytes()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    return v0
.end method

.method public isExecutable()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    return v0
.end method

.method public isReadable()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    return v0
.end method

.method public isWritable()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 86
    const-string v0, ""

    .line 88
    .local v0, "mask":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    move-result v1

    const-string v2, "-"

    if-eqz v1, :cond_1e

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 91
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_2f
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 97
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_5a
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 103
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
