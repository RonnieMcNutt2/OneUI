.class public Lcom/samsung/vekit/Common/Object/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field private final height:I

.field private final orientation:I

.field private final width:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->width:I

    .line 10
    iput p2, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->height:I

    .line 11
    iput p3, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->orientation:I

    .line 12
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->height:I

    return v0
.end method

.method public getImageInfo()Lcom/samsung/vekit/Common/Object/ImageInfo;
    .registers 1

    .line 15
    return-object p0
.end method

.method public getOrientation()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->orientation:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ImageInfo;->width:I

    return v0
.end method
