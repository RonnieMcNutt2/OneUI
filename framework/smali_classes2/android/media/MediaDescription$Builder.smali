.class public Landroid/media/MediaDescription$Builder;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconUri:Landroid/net/Uri;

.field private mMediaId:Ljava/lang/String;

.field private mMediaUri:Landroid/net/Uri;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaDescription;
    .registers 12

    .line 400
    new-instance v10, Landroid/media/MediaDescription;

    iget-object v1, p0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    iget-object v7, p0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaDescription;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/media/MediaDescription-IA;)V

    return-object v10
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 344
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 345
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 379
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mExtras:Landroid/os/Bundle;

    .line 380
    return-object p0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 356
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIcon:Landroid/graphics/Bitmap;

    .line 357
    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "iconUri"    # Landroid/net/Uri;

    .line 368
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mIconUri:Landroid/net/Uri;

    .line 369
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaId:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .line 390
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mMediaUri:Landroid/net/Uri;

    .line 391
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 332
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 333
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 321
    iput-object p1, p0, Landroid/media/MediaDescription$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 322
    return-object p0
.end method
