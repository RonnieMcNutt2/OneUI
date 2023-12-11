.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# instance fields
.field mBitmapHashes:Landroid/util/SparseIntArray;

.field mBitmapMemory:I

.field mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1842
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 1846
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 1847
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1842
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1850
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 1851
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 1852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1853
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1854
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_31

    .line 1855
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1852
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1858
    .end local v0    # "i":I
    :cond_34
    return-void
.end method


# virtual methods
.method public getBitmapForId(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "id"    # I

    .line 1882
    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto :goto_15

    .line 1885
    :cond_c
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 1883
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapId(Landroid/graphics/Bitmap;)I
    .registers 7
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 1861
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 1862
    return v0

    .line 1864
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1865
    .local v1, "hash":I
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1866
    .local v2, "hashId":I
    if-eq v2, v0, :cond_11

    .line 1867
    return v2

    .line 1869
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1870
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1872
    :cond_1b
    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1874
    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1875
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getBitmapMemory()I
    .registers 5

    .line 1893
    iget v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    if-gez v0, :cond_24

    .line 1894
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1895
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1896
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_24

    .line 1897
    iget v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1896
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1900
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_24
    iget v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    return v0
.end method

.method public writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1889
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1890
    return-void
.end method
