.class Lcom/samsung/android/infoextraction/HermesObject$1;
.super Ljava/lang/Object;
.source "HermesObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/HermesObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/infoextraction/HermesObject;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/HermesObject;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    new-instance v0, Lcom/samsung/android/infoextraction/HermesObject;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/HermesObject;-><init>()V

    .line 48
    .local v0, "data":Lcom/samsung/android/infoextraction/HermesObject;
    invoke-virtual {v0, p1}, Lcom/samsung/android/infoextraction/HermesObject;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/HermesObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/HermesObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/infoextraction/HermesObject;
    .registers 3
    .param p1, "size"    # I

    .line 52
    new-array v0, p1, [Lcom/samsung/android/infoextraction/HermesObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/HermesObject$1;->newArray(I)[Lcom/samsung/android/infoextraction/HermesObject;

    move-result-object p1

    return-object p1
.end method
