.class Landroid/hardware/security/secureclock/Timestamp$1;
.super Ljava/lang/Object;
.source "Timestamp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/secureclock/Timestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/security/secureclock/Timestamp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/security/secureclock/Timestamp;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 14
    new-instance v0, Landroid/hardware/security/secureclock/Timestamp;

    invoke-direct {v0}, Landroid/hardware/security/secureclock/Timestamp;-><init>()V

    .line 15
    .local v0, "_aidl_out":Landroid/hardware/security/secureclock/Timestamp;
    invoke-virtual {v0, p1}, Landroid/hardware/security/secureclock/Timestamp;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/security/secureclock/Timestamp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/security/secureclock/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/security/secureclock/Timestamp;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 20
    new-array v0, p1, [Landroid/hardware/security/secureclock/Timestamp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/security/secureclock/Timestamp$1;->newArray(I)[Landroid/hardware/security/secureclock/Timestamp;

    move-result-object p1

    return-object p1
.end method
