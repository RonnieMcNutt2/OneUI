.class public Lcom/samsung/app/video/editor/external/ROIInfo;
.super Ljava/lang/Object;
.source "ROIInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field roiHeight:I

.field roiWidth:I

.field roiXOffset:I

.field roiYOffset:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "roiWidth"    # I
    .param p2, "roiHeight"    # I
    .param p3, "roiXOffset"    # I
    .param p4, "roiYOffset"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiWidth:I

    .line 13
    iput p2, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiHeight:I

    .line 14
    iput p3, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiXOffset:I

    .line 15
    iput p4, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiYOffset:I

    .line 16
    return-void
.end method


# virtual methods
.method public getRoiHeight()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiHeight:I

    return v0
.end method

.method public getRoiWidth()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiWidth:I

    return v0
.end method

.method public getRoiXOffset()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiXOffset:I

    return v0
.end method

.method public getRoiYOffset()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiYOffset:I

    return v0
.end method

.method public setRoiHeight(I)V
    .registers 2
    .param p1, "roiHeight"    # I

    .line 31
    iput p1, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiHeight:I

    .line 32
    return-void
.end method

.method public setRoiWidth(I)V
    .registers 2
    .param p1, "roiWidth"    # I

    .line 23
    iput p1, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiWidth:I

    .line 24
    return-void
.end method

.method public setRoiXOffset(I)V
    .registers 2
    .param p1, "roiXOffset"    # I

    .line 39
    iput p1, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiXOffset:I

    .line 40
    return-void
.end method

.method public setRoiYOffset(I)V
    .registers 2
    .param p1, "roiYOffset"    # I

    .line 47
    iput p1, p0, Lcom/samsung/app/video/editor/external/ROIInfo;->roiYOffset:I

    .line 48
    return-void
.end method
