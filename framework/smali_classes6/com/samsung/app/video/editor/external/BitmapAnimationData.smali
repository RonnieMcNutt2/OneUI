.class public Lcom/samsung/app/video/editor/external/BitmapAnimationData;
.super Ljava/lang/Object;
.source "BitmapAnimationData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x72d6586701816664L


# instance fields
.field public bitmap_animation_end_frame:I

.field public bitmap_animation_start_frame:I

.field public endIndexInTemplate:I

.field public pngTemplateFileName:Ljava/lang/String;

.field public startIndexInTemplate:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/BitmapAnimationData;)V
    .registers 3
    .param p1, "bitmapAnimationsData"    # Lcom/samsung/app/video/editor/external/BitmapAnimationData;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_start_frame:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_start_frame:I

    .line 34
    iget v0, p1, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_end_frame:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_end_frame:I

    .line 35
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->pngTemplateFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->pngTemplateFileName:Ljava/lang/String;

    .line 36
    iget v0, p1, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->startIndexInTemplate:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->startIndexInTemplate:I

    .line 37
    iget v0, p1, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->endIndexInTemplate:I

    iput v0, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->endIndexInTemplate:I

    .line 38
    return-void
.end method


# virtual methods
.method public getEndFrameWithinElement()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_end_frame:I

    return v0
.end method

.method public getStartFrameWithinElement()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_start_frame:I

    return v0
.end method

.method public setEndFrameWithinElement(I)V
    .registers 2
    .param p1, "frame"    # I

    .line 58
    iput p1, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_end_frame:I

    .line 59
    return-void
.end method

.method public setEndIndexInTemplate(I)V
    .registers 2
    .param p1, "endFrame"    # I

    .line 87
    iput p1, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->endIndexInTemplate:I

    .line 88
    return-void
.end method

.method public setPNGTemplate(Ljava/lang/String;)V
    .registers 2
    .param p1, "template"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->pngTemplateFileName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setStartFrameWithinElement(I)V
    .registers 2
    .param p1, "frame"    # I

    .line 44
    iput p1, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->bitmap_animation_start_frame:I

    .line 45
    return-void
.end method

.method public setStartIndexInTemplate(I)V
    .registers 2
    .param p1, "startFrame"    # I

    .line 80
    iput p1, p0, Lcom/samsung/app/video/editor/external/BitmapAnimationData;->startIndexInTemplate:I

    .line 81
    return-void
.end method
