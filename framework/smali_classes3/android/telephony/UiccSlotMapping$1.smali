.class Landroid/telephony/UiccSlotMapping$1;
.super Ljava/lang/Object;
.source "UiccSlotMapping.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/UiccSlotMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/UiccSlotMapping;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccSlotMapping;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    new-instance v0, Landroid/telephony/UiccSlotMapping;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/UiccSlotMapping;-><init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotMapping-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Landroid/telephony/UiccSlotMapping$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccSlotMapping;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/UiccSlotMapping;
    .registers 3
    .param p1, "size"    # I

    .line 69
    new-array v0, p1, [Landroid/telephony/UiccSlotMapping;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Landroid/telephony/UiccSlotMapping$1;->newArray(I)[Landroid/telephony/UiccSlotMapping;

    move-result-object p1

    return-object p1
.end method
