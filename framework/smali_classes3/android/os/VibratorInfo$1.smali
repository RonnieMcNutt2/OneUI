.class Landroid/os/VibratorInfo$1;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/VibratorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/VibratorInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 796
    new-instance v0, Landroid/os/VibratorInfo;

    invoke-direct {v0, p1}, Landroid/os/VibratorInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 793
    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibratorInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/VibratorInfo;
    .registers 3
    .param p1, "size"    # I

    .line 801
    new-array v0, p1, [Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 793
    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo$1;->newArray(I)[Landroid/os/VibratorInfo;

    move-result-object p1

    return-object p1
.end method
