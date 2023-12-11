.class public abstract Landroid/graphics/HardwareRenderer$CopyRequest;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CopyRequest"
.end annotation


# instance fields
.field protected mDestinationBitmap:Landroid/graphics/Bitmap;

.field final mSrcRect:Landroid/graphics/Rect;


# direct methods
.method protected constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "destinationBitmap"    # Landroid/graphics/Bitmap;

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    iput-object p2, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    .line 1154
    if-eqz p1, :cond_a

    .line 1155
    iput-object p1, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    goto :goto_11

    .line 1157
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mSrcRect:Landroid/graphics/Rect;

    .line 1159
    :goto_11
    return-void
.end method


# virtual methods
.method public getDestinationBitmap(II)J
    .registers 5
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .line 1165
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    .line 1166
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1167
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    .line 1169
    :cond_c
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$CopyRequest;->mDestinationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract onCopyFinished(I)V
.end method
