.class Lcom/samsung/android/allshare/FolderItemImpl$1;
.super Ljava/lang/Object;
.source "FolderItemImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FolderItemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/allshare/FolderItemImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/FolderItemImpl;
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 125
    new-instance v0, Lcom/samsung/android/allshare/FolderItemImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/allshare/FolderItemImpl;-><init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/FolderItemImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/FolderItemImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/allshare/FolderItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/allshare/FolderItemImpl;
    .registers 3
    .param p1, "size"    # I

    .line 129
    new-array v0, p1, [Lcom/samsung/android/allshare/FolderItemImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/FolderItemImpl$1;->newArray(I)[Lcom/samsung/android/allshare/FolderItemImpl;

    move-result-object p1

    return-object p1
.end method
