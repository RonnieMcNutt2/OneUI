.class Landroid/telephony/data/NetworkSlicingConfig$1;
.super Ljava/lang/Object;
.source "NetworkSlicingConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/NetworkSlicingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/data/NetworkSlicingConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/NetworkSlicingConfig;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 79
    new-instance v0, Landroid/telephony/data/NetworkSlicingConfig;

    invoke-direct {v0, p1}, Landroid/telephony/data/NetworkSlicingConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Landroid/telephony/data/NetworkSlicingConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/NetworkSlicingConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/data/NetworkSlicingConfig;
    .registers 3
    .param p1, "size"    # I

    .line 84
    new-array v0, p1, [Landroid/telephony/data/NetworkSlicingConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Landroid/telephony/data/NetworkSlicingConfig$1;->newArray(I)[Landroid/telephony/data/NetworkSlicingConfig;

    move-result-object p1

    return-object p1
.end method
