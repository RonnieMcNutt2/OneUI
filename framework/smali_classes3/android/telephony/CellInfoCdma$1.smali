.class Landroid/telephony/CellInfoCdma$1;
.super Ljava/lang/Object;
.source "CellInfoCdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfoCdma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellInfoCdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 162
    invoke-static {p1}, Landroid/telephony/CellInfoCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoCdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/CellInfoCdma;
    .registers 3
    .param p1, "size"    # I

    .line 167
    new-array v0, p1, [Landroid/telephony/CellInfoCdma;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoCdma$1;->newArray(I)[Landroid/telephony/CellInfoCdma;

    move-result-object p1

    return-object p1
.end method
