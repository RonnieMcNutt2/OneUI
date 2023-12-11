.class public Landroid/hardware/contexthub/ContextHubMessage;
.super Ljava/lang/Object;
.source "ContextHubMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/ContextHubMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hostEndPoint:C

.field public messageBody:[B

.field public messageType:I

.field public nanoappId:J

.field public permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 8
    const/4 v0, 0x0

    iput-char v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 9
    iput v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "_mask":I
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 45
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_af

    .line 46
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_ad

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 58
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_ad

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 58
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    iput-char v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_ad

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 58
    :cond_59
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_ad

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7b

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_75

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 58
    :cond_75
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_7b
    :try_start_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_ad

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_97

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_91

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 58
    :cond_91
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_97
    :try_start_97
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_ad

    .line 57
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a7

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    nop

    .line 62
    return-void

    .line 58
    :cond_a7
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :catchall_ad
    move-exception v2

    goto :goto_b7

    .line 45
    :cond_af
    :try_start_af
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/contexthub/ContextHubMessage;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_b7
    .catchall {:try_start_af .. :try_end_b7} :catchall_ad

    .line 57
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/contexthub/ContextHubMessage;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_b7
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c0

    .line 58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_c0
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
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
    iget-wide v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-char v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 34
    iget-object v1, p0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 36
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    return-void
.end method
