.class Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;
.super Ljava/lang/Object;
.source "SemSmartClipDataRepository.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 730
    const-string v0, "SemSmartClipDataRepository"

    const-string v1, "SemSmartClipDataRepository.createFromParcel called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>()V

    .line 733
    .local v0, "data":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->readFromParcel(Landroid/os/Parcel;)V

    .line 734
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 728
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .registers 3
    .param p1, "size"    # I

    .line 738
    new-array v0, p1, [Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 728
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository$1;->newArray(I)[Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object p1

    return-object p1
.end method
