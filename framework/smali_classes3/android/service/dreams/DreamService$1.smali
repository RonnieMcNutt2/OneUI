.class Landroid/service/dreams/DreamService$1;
.super Landroid/service/dreams/IDreamOverlayCallback$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic $r8$lambda$aZudutdzbCfQIdIBJg5ESDN82vI(Landroid/service/dreams/DreamService$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService$1;->lambda$onExitRequested$0()V

    return-void
.end method

.method constructor <init>(Landroid/service/dreams/DreamService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    .line 251
    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onExitRequested$0()V
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    return-void
.end method


# virtual methods
.method public onExitRequested()V
    .registers 3

    .line 255
    iget-object v0, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method
