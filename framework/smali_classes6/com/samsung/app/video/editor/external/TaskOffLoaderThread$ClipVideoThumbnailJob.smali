.class Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;
.super Ljava/lang/Object;
.source "TaskOffLoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClipVideoThumbnailJob"
.end annotation


# instance fields
.field private final time:F

.field private final transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;


# direct methods
.method public constructor <init>(Lcom/samsung/app/video/editor/external/TranscodeElement;F)V
    .registers 3
    .param p1, "mTranscodeElement"    # Lcom/samsung/app/video/editor/external/TranscodeElement;
    .param p2, "mTime"    # F

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;->transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 663
    iput p2, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;->time:F

    .line 664
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;)Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;

    .line 657
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;->transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;

    .line 657
    iget v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ClipVideoThumbnailJob;->time:F

    return v0
.end method
