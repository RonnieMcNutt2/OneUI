.class public abstract Landroid/service/dreams/DreamOverlayService;
.super Landroid/app/Service;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamOverlayService$OverlayClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamOverlayService"


# instance fields
.field private mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

.field private mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$2HmPEPTTzMf5dP_tp-WNujcIEuk(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$wakeUp$2(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R3KSuVkjj6lquOkiEDT4QetNoUI(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService;->lambda$startDream$0(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wC8k5Xn-Ot6D8Fc_qPvOtSfZGR0(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->lambda$endDream$1(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mendDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->endDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDream(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService;->startDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwakeUp(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->wakeUp(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 133
    new-instance v0, Landroid/service/dreams/DreamOverlayService$1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$1;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 153
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 133
    new-instance v0, Landroid/service/dreams/DreamOverlayService$1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$1;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 154
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 155
    return-void
.end method

.method private endDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 4
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 110
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method private endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 3
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 114
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq p1, v0, :cond_7

    goto :goto_e

    .line 118
    :cond_7
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onEndDream()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 120
    return-void

    .line 115
    :cond_e
    :goto_e
    return-void
.end method

.method private synthetic lambda$endDream$1(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 2
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 110
    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayService;->endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    return-void
.end method

.method private synthetic lambda$startDream$0(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 102
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamOverlayService;->endDreamInternal(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    .line 103
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 104
    invoke-virtual {p0, p2}, Landroid/service/dreams/DreamOverlayService;->onStartDream(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    return-void
.end method

.method private synthetic lambda$wakeUp$2(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 3
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 125
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eq v0, p1, :cond_5

    .line 126
    return-void

    .line 129
    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->onWakeUp()V

    .line 130
    return-void
.end method

.method private startDream(Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 101
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;Landroid/view/WindowManager$LayoutParams;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method private wakeUp(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V
    .registers 4
    .param p1, "client"    # Landroid/service/dreams/DreamOverlayService$OverlayClient;

    .line 124
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/dreams/DreamOverlayService$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamOverlayService;Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final getDreamComponent()Landroid/content/ComponentName;
    .registers 3

    .line 230
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_9

    .line 234
    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mgetComponent(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 231
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested dream component when no dream active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .line 159
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 160
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_d

    .line 163
    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 165
    :cond_d
    return-void
.end method

.method public onEndDream()V
    .registers 1

    .line 200
    return-void
.end method

.method public abstract onStartDream(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public onWakeUp()V
    .registers 1

    .line 190
    return-void
.end method

.method public final requestExit()V
    .registers 3

    .line 206
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_8

    .line 210
    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$monExitRequested(Landroid/service/dreams/DreamOverlayService$OverlayClient;)V

    .line 211
    return-void

    .line 207
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested exit with no dream present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final shouldShowComplications()Z
    .registers 3

    .line 217
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mCurrentClient:Landroid/service/dreams/DreamOverlayService$OverlayClient;

    if-eqz v0, :cond_9

    .line 222
    invoke-static {v0}, Landroid/service/dreams/DreamOverlayService$OverlayClient;->-$$Nest$mshouldShowComplications(Landroid/service/dreams/DreamOverlayService$OverlayClient;)Z

    move-result v0

    return v0

    .line 218
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "requested if should show complication when no dream active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
