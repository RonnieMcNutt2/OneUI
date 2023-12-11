.class public Lcom/samsung/android/multiwindow/DragAndDropHelper;
.super Ljava/lang/Object;
.source "DragAndDropHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/DragAndDropHelper$Builder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DragAndDropHelper"


# instance fields
.field private mDisplayId:I

.field private final mInitialDropTargetVisible:Z

.field private mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

.field private mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInitialDropTargetVisible(Lcom/samsung/android/multiwindow/DragAndDropHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mInitialDropTargetVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDisplayId(Lcom/samsung/android/multiwindow/DragAndDropHelper;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDisplayId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServerProxy(Lcom/samsung/android/multiwindow/DragAndDropHelper;Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismiss(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .param p1, "shellDropTargetVisibility"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/DragAndDropHelper$1;-><init>(Lcom/samsung/android/multiwindow/DragAndDropHelper;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mInitialDropTargetVisible:Z

    .line 69
    return-void
.end method

.method synthetic constructor <init>(ZLcom/samsung/android/multiwindow/DragAndDropHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/DragAndDropHelper;-><init>(Z)V

    return-void
.end method

.method private dismiss()V
    .registers 2

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    .line 87
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    const-string v1, "DragAndDropHelper"

    if-nez v0, :cond_c

    .line 73
    const-string v0, "Abort to show."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 76
    :cond_c
    sget-boolean v0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "Requested to show"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mServerProxy:Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;

    iget v2, p0, Lcom/samsung/android/multiwindow/DragAndDropHelper;->mDisplayId:I

    invoke-interface {v0, v2}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy;->show(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1d

    .line 82
    goto :goto_38

    .line 80
    :catch_1d
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_38
    return-void
.end method
