.class Landroid/telephony/ims/SrvccCall$1;
.super Ljava/lang/Object;
.source "SrvccCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SrvccCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/SrvccCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SrvccCall;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 145
    new-instance v0, Landroid/telephony/ims/SrvccCall;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/SrvccCall;-><init>(Landroid/os/Parcel;Landroid/telephony/ims/SrvccCall-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Landroid/telephony/ims/SrvccCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SrvccCall;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/ims/SrvccCall;
    .registers 3
    .param p1, "size"    # I

    .line 150
    new-array v0, p1, [Landroid/telephony/ims/SrvccCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Landroid/telephony/ims/SrvccCall$1;->newArray(I)[Landroid/telephony/ims/SrvccCall;

    move-result-object p1

    return-object p1
.end method
