.class public Lcom/samsung/vekit/External/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# static fields
.field private static final instance:Lcom/samsung/vekit/External/NativeInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/samsung/vekit/External/NativeInterface;

    invoke-direct {v0}, Lcom/samsung/vekit/External/NativeInterface;-><init>()V

    sput-object v0, Lcom/samsung/vekit/External/NativeInterface;->instance:Lcom/samsung/vekit/External/NativeInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/samsung/vekit/External/NativeLibSetup;

    invoke-direct {v0}, Lcom/samsung/vekit/External/NativeLibSetup;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/vekit/External/NativeLibSetup;->init()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/samsung/vekit/External/NativeInterface;
    .registers 1

    .line 29
    sget-object v0, Lcom/samsung/vekit/External/NativeInterface;->instance:Lcom/samsung/vekit/External/NativeInterface;

    return-object v0
.end method


# virtual methods
.method public native animate()V
.end method

.method public native attach(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native attach(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public native attach(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public native attachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native attachStroke(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
.end method

.method public native cancelAnimation()V
.end method

.method public native captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
.end method

.method public native captureLatestFrame(II)Landroid/graphics/Bitmap;
.end method

.method public native captureStaticDoodle(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;
.end method

.method public native clear(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native clearAnimations(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public synchronized native create(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native createFramework(Lcom/samsung/vekit/Control/VEController;)V
.end method

.method public native detach(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native detachAnimation(Lcom/samsung/vekit/Common/Object/Element;I)V
.end method

.method public native detachStroke(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native drawDoodle(Lcom/samsung/vekit/Common/Object/Element;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Element;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public native finalizeFramework()V
.end method

.method public native finishDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native getCurrentMediaPosition()J
.end method

.method public native getExportPosition()J
.end method

.method public native getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
.end method

.method public native initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
.end method

.method public native loadDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native pause()V
.end method

.method public native pauseExport()J
.end method

.method public native play()V
.end method

.method public native releaseFramework()V
.end method

.method public synchronized native remove(Lcom/samsung/vekit/Common/Type/ElementType;I)V
.end method

.method public native resumeExport(J)V
.end method

.method public native saveDoodle(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V
.end method

.method public native setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
.end method

.method public native show()V
.end method

.method public native startDoodle(Lcom/samsung/vekit/Common/Object/Element;Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
.end method

.method public native stop()V
.end method

.method public native swap(Lcom/samsung/vekit/Common/Object/Element;II)V
.end method

.method public synchronized native update(Lcom/samsung/vekit/Common/Object/Element;)V
.end method

.method public native updateViewport(IIII)V
.end method
