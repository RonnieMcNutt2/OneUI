.class Landroid/telephony/NrVopsSupportInfo$1;
.super Ljava/lang/Object;
.source "NrVopsSupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NrVopsSupportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/NrVopsSupportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/NrVopsSupportInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 241
    new-instance v0, Landroid/telephony/NrVopsSupportInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/NrVopsSupportInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/NrVopsSupportInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 236
    invoke-virtual {p0, p1}, Landroid/telephony/NrVopsSupportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/NrVopsSupportInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/NrVopsSupportInfo;
    .registers 3
    .param p1, "size"    # I

    .line 246
    new-array v0, p1, [Landroid/telephony/NrVopsSupportInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 236
    invoke-virtual {p0, p1}, Landroid/telephony/NrVopsSupportInfo$1;->newArray(I)[Landroid/telephony/NrVopsSupportInfo;

    move-result-object p1

    return-object p1
.end method
