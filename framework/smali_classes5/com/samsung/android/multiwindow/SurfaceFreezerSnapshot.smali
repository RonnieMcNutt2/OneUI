.class public Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
.super Ljava/lang/Object;
.source "SurfaceFreezerSnapshot.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SurfaceFreezerSnapshot"


# instance fields
.field private final mContainsSecureLayer:Z

.field private final mFreeformHeaderColor:I

.field private final mFreeformHeaderHeight:I

.field private final mHasProtectedContent:Z

.field private final mSnapshotBitmap:Landroid/graphics/Bitmap;

.field private final mTaskId:I

.field private final mWallpaperBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZZLandroid/graphics/Bitmap;)V
    .registers 14
    .param p1, "snapshotBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "taskId"    # I
    .param p3, "containsSecureLayer"    # Z
    .param p4, "hasProtectedContent"    # Z
    .param p5, "wallpaperBitmap"    # Landroid/graphics/Bitmap;

    .line 52
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;-><init>(Landroid/graphics/Bitmap;IZZLandroid/graphics/Bitmap;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZZLandroid/graphics/Bitmap;II)V
    .registers 8
    .param p1, "snapshotBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "taskId"    # I
    .param p3, "containsSecureLayer"    # Z
    .param p4, "hasProtectedContent"    # Z
    .param p5, "wallpaperBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "headerHeight"    # I
    .param p7, "headerColor"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    .line 58
    iput-object p5, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 59
    iput p2, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mTaskId:I

    .line 60
    iput-boolean p3, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mContainsSecureLayer:Z

    .line 61
    iput-boolean p4, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mHasProtectedContent:Z

    .line 62
    iput p6, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mFreeformHeaderHeight:I

    .line 63
    iput p7, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mFreeformHeaderColor:I

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 68
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    goto :goto_17

    .line 70
    :cond_15
    iput-object v1, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    .line 72
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 73
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    goto :goto_2a

    .line 75
    :cond_28
    iput-object v1, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 77
    :goto_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mTaskId:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    move v0, v1

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mContainsSecureLayer:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mHasProtectedContent:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mFreeformHeaderHeight:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mFreeformHeaderColor:I

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public containsSecureLayer()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mContainsSecureLayer:Z

    return v0
.end method

.method public createSnapshotBitmapWithWallpaper(I)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "splitBackgroundColor"    # I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_a

    goto :goto_2e

    .line 129
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 129
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 134
    iget-object v3, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    return-object v0

    .line 125
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_2e
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSnapshotBitmapWithWallpaper: failed, snapshot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", wallpaper="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SurfaceFreezerSnapshot"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v1
.end method

.method public describeContents()I
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getSnapshotBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hasFreeformHeader()Z
    .registers 2

    .line 119
    iget v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mFreeformHeaderHeight:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasProtectedContent()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mHasProtectedContent:Z

    return v0
.end method

.method public hasWallpaperBitmap()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 141
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 144
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    :goto_12
    iget-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 147
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 150
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :goto_22
    iget v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mContainsSecureLayer:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mHasProtectedContent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mFreeformHeaderHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->mFreeformHeaderColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
