.class public Lcom/samsung/vekit/Common/Object/CaptureInfo;
.super Ljava/lang/Object;
.source "CaptureInfo.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private height:I

.field private listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

.field private width:I


# direct methods
.method public constructor <init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->width:I

    .line 15
    iput p2, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->height:I

    .line 16
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 17
    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 18
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->height:I

    return v0
.end method

.method public getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->width:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 41
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 42
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 33
    iput p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->height:I

    .line 34
    return-void
.end method

.method public setListener(Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 49
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 50
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 25
    iput p1, p0, Lcom/samsung/vekit/Common/Object/CaptureInfo;->width:I

    .line 26
    return-void
.end method
