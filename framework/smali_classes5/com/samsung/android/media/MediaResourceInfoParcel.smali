.class public Lcom/samsung/android/media/MediaResourceInfoParcel;
.super Ljava/lang/Object;
.source "MediaResourceInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/media/MediaResourceInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public resourceInfos:[Lcom/samsung/android/media/ResourceInfoParcel;

.field public status:I

.field public totalSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/samsung/android/media/MediaResourceInfoParcel$1;

    invoke-direct {v0}, Lcom/samsung/android/media/MediaResourceInfoParcel$1;-><init>()V

    sput-object v0, Lcom/samsung/android/media/MediaResourceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->status:I

    .line 11
    iput v0, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->totalSize:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 65
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 68
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/samsung/android/media/MediaResourceInfoParcel;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 67
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 70
    :cond_19
    return v1

    .line 72
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 73
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 75
    :cond_26
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "_mask":I
    iget-object v1, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->resourceInfos:[Lcom/samsung/android/media/ResourceInfoParcel;

    invoke-direct {p0, v1}, Lcom/samsung/android/media/MediaResourceInfoParcel;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7a

    .line 44
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 51
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 54
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 52
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->status:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 51
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 54
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 52
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->totalSize:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_78

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 51
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 54
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 52
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_5e
    :try_start_5e
    sget-object v2, Lcom/samsung/android/media/ResourceInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/media/ResourceInfoParcel;

    iput-object v2, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->resourceInfos:[Lcom/samsung/android/media/ResourceInfoParcel;
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_78

    .line 51
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_72

    .line 54
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    nop

    .line 56
    return-void

    .line 52
    :cond_72
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :catchall_78
    move-exception v2

    goto :goto_82

    .line 43
    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lcom/samsung/android/media/MediaResourceInfoParcel;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_78

    .line 51
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lcom/samsung/android/media/MediaResourceInfoParcel;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_82
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8b

    .line 52
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_8b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 29
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v1, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v1, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->totalSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v1, p0, Lcom/samsung/android/media/MediaResourceInfoParcel;->resourceInfos:[Lcom/samsung/android/media/ResourceInfoParcel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 34
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    return-void
.end method
