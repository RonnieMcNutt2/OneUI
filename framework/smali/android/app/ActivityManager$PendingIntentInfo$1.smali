.class Landroid/app/ActivityManager$PendingIntentInfo$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$PendingIntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/ActivityManager$PendingIntentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$PendingIntentInfo;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 6594
    new-instance v0, Landroid/app/ActivityManager$PendingIntentInfo;

    .line 6595
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6597
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityManager$PendingIntentInfo;-><init>(Ljava/lang/String;IZI)V

    .line 6594
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 6591
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$PendingIntentInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/ActivityManager$PendingIntentInfo;
    .registers 3
    .param p1, "size"    # I

    .line 6603
    new-array v0, p1, [Landroid/app/ActivityManager$PendingIntentInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 6591
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$PendingIntentInfo$1;->newArray(I)[Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object p1

    return-object p1
.end method
