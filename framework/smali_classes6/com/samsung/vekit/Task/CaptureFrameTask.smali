.class public Lcom/samsung/vekit/Task/CaptureFrameTask;
.super Ljava/lang/Object;
.source "CaptureFrameTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    }
.end annotation


# instance fields
.field private captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

.field private item:Lcom/samsung/vekit/Item/Item;

.field private listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

.field private outputHeight:I

.field private outputWidth:I


# direct methods
.method public constructor <init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .registers 5
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 15
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 31
    iput p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 32
    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 33
    iput-object p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 34
    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .registers 6
    .param p1, "item"    # Lcom/samsung/vekit/Item/Item;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "listener"    # Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 15
    iput v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 22
    iput-object p1, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    .line 23
    iput-object p4, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    .line 24
    iput p2, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    .line 25
    iput p3, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    .line 26
    sget-object v0, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    .line 27
    return-void
.end method


# virtual methods
.method public getCaptureType()Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->captureType:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    return-object v0
.end method

.method public getItem()Lcom/samsung/vekit/Item/Item;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->item:Lcom/samsung/vekit/Item/Item;

    return-object v0
.end method

.method public getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->listener:Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    return-object v0
.end method

.method public getOutputHeight()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/samsung/vekit/Task/CaptureFrameTask;->outputWidth:I

    return v0
.end method
