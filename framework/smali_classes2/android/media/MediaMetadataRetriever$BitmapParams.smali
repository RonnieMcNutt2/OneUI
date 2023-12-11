.class public final Landroid/media/MediaMetadataRetriever$BitmapParams;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitmapParams"
.end annotation


# instance fields
.field private inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field private outActualConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 784
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->outActualConfig:Landroid/graphics/Bitmap$Config;

    .line 790
    return-void
.end method


# virtual methods
.method public getActualConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 824
    iget-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->outActualConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getPreferredConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 815
    iget-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public setPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 803
    if-eqz p1, :cond_5

    .line 806
    iput-object p1, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 807
    return-void

    .line 804
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "preferred config can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
