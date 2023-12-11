.class public final Lcom/samsung/android/smartface/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/smartface/FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEED_TO_SLEEP:I = 0x0

.field public static final NEED_TO_STAY:I = 0x1


# instance fields
.field public needToRotate:I

.field public needToStay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/samsung/android/smartface/FaceInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/smartface/FaceInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartface/FaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartface/FaceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget v0, p0, Lcom/samsung/android/smartface/FaceInfo;->needToRotate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
