.class Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;
.super Ljava/lang/Object;
.source "TaskOffLoaderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/TaskOffLoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailJobs"
.end annotation


# instance fields
.field public Framekey:I

.field public clipartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field private final doodleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;"
        }
    .end annotation
.end field

.field public drawList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field public firstElement:Lcom/samsung/app/video/editor/external/Element;

.field private final gifList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field private final isDetailedMode:Z

.field listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

.field public previewType:I

.field public secondElement:Lcom/samsung/app/video/editor/external/Element;

.field public storyBoardTime:F

.field public time:I

.field public width:I


# direct methods
.method public constructor <init>(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZIFLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/app/video/editor/external/ThumbnailListener;ILjava/util/List;)V
    .registers 32
    .param p1, "firstElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p2, "secondElement"    # Lcom/samsung/app/video/editor/external/Element;
    .param p3, "time"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "isDetailedMode"    # Z
    .param p8, "type"    # I
    .param p9, "storyBoardTime"    # F
    .param p13, "l"    # Lcom/samsung/app/video/editor/external/ThumbnailListener;
    .param p14, "framekey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Lcom/samsung/app/video/editor/external/Element;",
            "JIIZIF",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/StickerParams;",
            ">;",
            "Lcom/samsung/app/video/editor/external/ThumbnailListener;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/app/video/editor/external/DoodleParams;",
            ">;)V"
        }
    .end annotation

    .line 727
    .local p10, "clipartList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p11, "drawList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .local p12, "gifList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/StickerParams;>;"
    .local p15, "doodleList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/app/video/editor/external/DoodleParams;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 728
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->firstElement:Lcom/samsung/app/video/editor/external/Element;

    .line 729
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->secondElement:Lcom/samsung/app/video/editor/external/Element;

    .line 730
    move/from16 v3, p5

    iput v3, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->width:I

    .line 731
    move/from16 v4, p6

    iput v4, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->height:I

    .line 732
    move-wide/from16 v5, p3

    long-to-int v7, v5

    iput v7, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->time:I

    .line 733
    move/from16 v7, p7

    iput-boolean v7, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->isDetailedMode:Z

    .line 734
    move/from16 v8, p8

    iput v8, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->previewType:I

    .line 735
    move/from16 v9, p9

    iput v9, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->storyBoardTime:F

    .line 736
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->clipartList:Ljava/util/List;

    .line 737
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->drawList:Ljava/util/List;

    .line 738
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->gifList:Ljava/util/List;

    .line 739
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->listener:Lcom/samsung/app/video/editor/external/ThumbnailListener;

    .line 740
    move/from16 v14, p14

    iput v14, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->Framekey:I

    .line 741
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->doodleList:Ljava/util/List;

    .line 742
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 666
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->doodleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 666
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->gifList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;

    .line 666
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/TaskOffLoaderThread$ThumbnailJobs;->isDetailedMode:Z

    return v0
.end method
