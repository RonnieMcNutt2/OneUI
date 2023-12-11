.class public Lcom/samsung/app/video/editor/external/ROIDeltaInfo;
.super Ljava/lang/Object;
.source "ROIDeltaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field roiDeltaX:I

.field roiDeltaY:I

.field roiScaleX:F

.field roiScaleY:F


# direct methods
.method public constructor <init>(IIFF)V
    .registers 5
    .param p1, "roiDeltaX"    # I
    .param p2, "roiDeltaY"    # I
    .param p3, "roiScaleX"    # F
    .param p4, "roiScaleY"    # F

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiDeltaX:I

    .line 13
    iput p2, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiDeltaY:I

    .line 14
    iput p3, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiScaleX:F

    .line 15
    iput p4, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiScaleY:F

    .line 16
    return-void
.end method


# virtual methods
.method public getRoiDeltaX()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiDeltaX:I

    return v0
.end method

.method public getRoiDeltaY()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiDeltaY:I

    return v0
.end method

.method public getRoiScaleX()F
    .registers 2

    .line 27
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiScaleX:F

    return v0
.end method

.method public getRoiScaleY()F
    .registers 2

    .line 31
    iget v0, p0, Lcom/samsung/app/video/editor/external/ROIDeltaInfo;->roiScaleY:F

    return v0
.end method
