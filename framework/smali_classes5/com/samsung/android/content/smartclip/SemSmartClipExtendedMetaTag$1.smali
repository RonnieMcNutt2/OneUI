.class Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;
.super Ljava/lang/Object;
.source "SemSmartClipExtendedMetaTag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    const-string v0, "SemSmartClipExtendedMetaTag"

    const-string v1, "SemSmartClipExtendedMetaTag.createFromParcel called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "data":Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->readFromParcel(Landroid/os/Parcel;)V

    .line 166
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    .registers 3
    .param p1, "size"    # I

    .line 170
    new-array v0, p1, [Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;->newArray(I)[Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    move-result-object p1

    return-object p1
.end method
