.class Landroid/telephony/EmergencyRegResult$1;
.super Ljava/lang/Object;
.source "EmergencyRegResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/EmergencyRegResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/EmergencyRegResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/EmergencyRegResult;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 310
    new-instance v0, Landroid/telephony/EmergencyRegResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/EmergencyRegResult;-><init>(Landroid/os/Parcel;Landroid/telephony/EmergencyRegResult-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 307
    invoke-virtual {p0, p1}, Landroid/telephony/EmergencyRegResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/EmergencyRegResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/EmergencyRegResult;
    .registers 3
    .param p1, "size"    # I

    .line 315
    new-array v0, p1, [Landroid/telephony/EmergencyRegResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 307
    invoke-virtual {p0, p1}, Landroid/telephony/EmergencyRegResult$1;->newArray(I)[Landroid/telephony/EmergencyRegResult;

    move-result-object p1

    return-object p1
.end method
