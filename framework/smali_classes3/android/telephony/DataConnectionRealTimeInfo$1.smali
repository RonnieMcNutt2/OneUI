.class Landroid/telephony/DataConnectionRealTimeInfo$1;
.super Ljava/lang/Object;
.source "DataConnectionRealTimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DataConnectionRealTimeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/DataConnectionRealTimeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/DataConnectionRealTimeInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 101
    new-instance v0, Landroid/telephony/DataConnectionRealTimeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/DataConnectionRealTimeInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/DataConnectionRealTimeInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/DataConnectionRealTimeInfo;
    .registers 3
    .param p1, "size"    # I

    .line 106
    new-array v0, p1, [Landroid/telephony/DataConnectionRealTimeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo$1;->newArray(I)[Landroid/telephony/DataConnectionRealTimeInfo;

    move-result-object p1

    return-object p1
.end method
