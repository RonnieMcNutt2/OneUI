.class public Landroid/os/incremental/IncrementalFileSystemControlParcel;
.super Ljava/lang/Object;
.source "IncrementalFileSystemControlParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/incremental/IncrementalFileSystemControlParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blocksWritten:Landroid/os/ParcelFileDescriptor;

.field public cmd:Landroid/os/ParcelFileDescriptor;

.field public log:Landroid/os/ParcelFileDescriptor;

.field public pendingReads:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Landroid/os/incremental/IncrementalFileSystemControlParcel$1;

    invoke-direct {v0}, Landroid/os/incremental/IncrementalFileSystemControlParcel$1;-><init>()V

    sput-object v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 76
    :cond_10
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->cmd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/os/incremental/IncrementalFileSystemControlParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->pendingReads:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/os/incremental/IncrementalFileSystemControlParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->log:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/os/incremental/IncrementalFileSystemControlParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->blocksWritten:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v1}, Landroid/os/incremental/IncrementalFileSystemControlParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 46
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_a2

    .line 47
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 57
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_26
    :try_start_26
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->cmd:Landroid/os/ParcelFileDescriptor;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 57
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_46
    :try_start_46
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->pendingReads:Landroid/os/ParcelFileDescriptor;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_66

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_60

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 57
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_66
    :try_start_66
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->log:Landroid/os/ParcelFileDescriptor;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_a0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_86

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_80

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 57
    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_86
    :try_start_86
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->blocksWritten:Landroid/os/ParcelFileDescriptor;
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_a0

    .line 56
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9a

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    nop

    .line 61
    return-void

    .line 57
    :cond_9a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :catchall_a0
    move-exception v2

    goto :goto_aa

    .line 46
    :cond_a2
    :try_start_a2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_a0

    .line 56
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_aa
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_b3

    .line 57
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_b3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->cmd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 33
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->pendingReads:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->log:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 35
    iget-object v1, p0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->blocksWritten:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 37
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    return-void
.end method
