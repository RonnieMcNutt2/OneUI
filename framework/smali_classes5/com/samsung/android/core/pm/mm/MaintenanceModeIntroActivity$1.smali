.class Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;
.super Ljava/util/TimerTask;
.source "MaintenanceModeIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;


# direct methods
.method public static synthetic $r8$lambda$sV_HD_T6ReY_57p2gO04hfVxjfI(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    .line 296
    iput-object p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$mupdateCloudBackupStatusFromProvider(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    .line 303
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$fgetmIsCloudBackupSupported(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 301
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;->this$0:Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->-$$Nest$fgetmSingleThreadExecutor(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    .line 306
    goto :goto_18

    .line 304
    :catch_17
    move-exception v0

    .line 308
    :cond_18
    :goto_18
    return-void
.end method
