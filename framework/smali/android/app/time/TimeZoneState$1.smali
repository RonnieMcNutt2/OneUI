.class Landroid/app/time/TimeZoneState$1;
.super Ljava/lang/Object;
.source "TimeZoneState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeZoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/time/TimeZoneState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-static {p1}, Landroid/app/time/TimeZoneState;->-$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/time/TimeZoneState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeZoneState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/time/TimeZoneState;
    .registers 3
    .param p1, "size"    # I

    .line 51
    new-array v0, p1, [Landroid/app/time/TimeZoneState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/time/TimeZoneState$1;->newArray(I)[Landroid/app/time/TimeZoneState;

    move-result-object p1

    return-object p1
.end method
