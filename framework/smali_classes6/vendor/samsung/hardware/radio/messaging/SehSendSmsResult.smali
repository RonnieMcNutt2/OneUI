.class public Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
.super Ljava/lang/Object;
.source "SehSendSmsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ackPDU:Ljava/lang/String;

.field public errorClass:I

.field public errorCode:I

.field public messageRef:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult$1;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult$1;-><init>()V

    sput-object v0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->messageRef:I

    .line 19
    iput v0, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorCode:I

    .line 21
    iput v0, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "_mask":I
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_92

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 67
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 65
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->messageRef:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 67
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 65
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->ackPDU:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 67
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 65
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorCode:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_90

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 67
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 65
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorClass:I
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_90

    .line 64
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8a

    .line 67
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    nop

    .line 69
    return-void

    .line 65
    :cond_8a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :catchall_90
    move-exception v2

    goto :goto_9a

    .line 54
    :cond_92
    :try_start_92
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_90

    .line 64
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_a3

    .line 65
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_a3
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v1, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->messageRef:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->ackPDU:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v1, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->errorClass:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 45
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
