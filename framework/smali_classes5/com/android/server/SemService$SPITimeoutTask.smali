.class Lcom/android/server/SemService$SPITimeoutTask;
.super Ljava/util/TimerTask;
.source "SemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SPITimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SemService;


# direct methods
.method constructor <init>(Lcom/android/server/SemService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/SemService;

    .line 329
    iput-object p1, p0, Lcom/android/server/SemService$SPITimeoutTask;->this$0:Lcom/android/server/SemService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 331
    const-string v0, "SEC_ESE_Service"

    const-string v1, "Close SPI if theree\'s no APDU communication in 30 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/SemService$SPITimeoutTask;->this$0:Lcom/android/server/SemService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->synchronizedCloseSpi(I)I

    move-result v0

    .line 334
    if-nez v0, :cond_16

    .line 335
    iget-object v1, p0, Lcom/android/server/SemService$SPITimeoutTask;->this$0:Lcom/android/server/SemService;

    invoke-static {v1}, Lcom/android/server/SemService;->-$$Nest$mreleaseSpiUsage(Lcom/android/server/SemService;)V

    .line 337
    :cond_16
    return-void
.end method
