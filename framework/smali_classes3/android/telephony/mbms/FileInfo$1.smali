.class Landroid/telephony/mbms/FileInfo$1;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/FileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/mbms/FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/FileInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 39
    new-instance v0, Landroid/telephony/mbms/FileInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/mbms/FileInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/mbms/FileInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/FileInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/FileInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/mbms/FileInfo;
    .registers 3
    .param p1, "size"    # I

    .line 44
    new-array v0, p1, [Landroid/telephony/mbms/FileInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/FileInfo$1;->newArray(I)[Landroid/telephony/mbms/FileInfo;

    move-result-object p1

    return-object p1
.end method
