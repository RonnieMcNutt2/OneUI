.class Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo$1;
.super Ljava/lang/Object;
.source "IBinaryTransparencyService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 303
    new-instance v0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;

    invoke-direct {v0}, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;-><init>()V

    .line 304
    .local v0, "_aidl_out":Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;
    invoke-virtual {v0, p1}, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 305
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 309
    new-array v0, p1, [Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo$1;->newArray(I)[Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;

    move-result-object p1

    return-object p1
.end method
