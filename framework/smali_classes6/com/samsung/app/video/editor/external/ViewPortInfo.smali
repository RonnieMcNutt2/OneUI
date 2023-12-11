.class public Lcom/samsung/app/video/editor/external/ViewPortInfo;
.super Ljava/lang/Object;
.source "ViewPortInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field viewPortHeight:I

.field viewPortWidth:I

.field viewPortX:I

.field viewPortY:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "viewPortX"    # I
    .param p2, "viewPortY"    # I
    .param p3, "viewportWidth"    # I
    .param p4, "viewportHeight"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p3, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortWidth:I

    .line 14
    iput p4, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortHeight:I

    .line 15
    iput p1, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortX:I

    .line 16
    iput p2, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortY:I

    .line 17
    return-void
.end method


# virtual methods
.method public getViewPortHeight()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortHeight:I

    return v0
.end method

.method public getViewPortWidth()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortWidth:I

    return v0
.end method

.method public getViewportX()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortX:I

    return v0
.end method

.method public getViewportY()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortY:I

    return v0
.end method

.method public setViewPortHeight(I)V
    .registers 2
    .param p1, "viewportHeight"    # I

    .line 32
    iput p1, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortHeight:I

    .line 33
    return-void
.end method

.method public setViewPortWidth(I)V
    .registers 2
    .param p1, "viewportWidth"    # I

    .line 24
    iput p1, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortWidth:I

    .line 25
    return-void
.end method

.method public setViewportX(I)V
    .registers 2
    .param p1, "viewportX"    # I

    .line 40
    iput p1, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortX:I

    .line 41
    return-void
.end method

.method public setViewportY(I)V
    .registers 2
    .param p1, "viewportY"    # I

    .line 48
    iput p1, p0, Lcom/samsung/app/video/editor/external/ViewPortInfo;->viewPortY:I

    .line 49
    return-void
.end method
