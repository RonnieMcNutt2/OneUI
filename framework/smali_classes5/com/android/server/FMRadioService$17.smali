.class Lcom/android/server/FMRadioService$17;
.super Landroid/database/ContentObserver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4350
    iput-object p1, p0, Lcom/android/server/FMRadioService$17;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 4353
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4354
    const-string v0, "bike mode onChange"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4355
    iget-object v0, p0, Lcom/android/server/FMRadioService$17;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$mhandleBikeMode(Lcom/android/server/FMRadioService;)V

    .line 4356
    return-void
.end method
