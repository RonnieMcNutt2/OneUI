.class Landroid/apex/ApexSessionParams$1;
.super Ljava/lang/Object;
.source "ApexSessionParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apex/ApexSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/apex/ApexSessionParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/apex/ApexSessionParams;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 15
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 16
    .local v0, "_aidl_out":Landroid/apex/ApexSessionParams;
    invoke-virtual {v0, p1}, Landroid/apex/ApexSessionParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 17
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Landroid/apex/ApexSessionParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/apex/ApexSessionParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/apex/ApexSessionParams;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 21
    new-array v0, p1, [Landroid/apex/ApexSessionParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Landroid/apex/ApexSessionParams$1;->newArray(I)[Landroid/apex/ApexSessionParams;

    move-result-object p1

    return-object p1
.end method
