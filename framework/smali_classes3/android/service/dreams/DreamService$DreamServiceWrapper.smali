.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic $r8$lambda$4_sbVX66HAYeo_5Yx5UYpjqyYR8(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->lambda$wakeUp$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NpMBCXQt6FW9CHVg0Jak0NRB88I(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mdetach(Landroid/service/dreams/DreamService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xbOijbWuaZHVjLQOHlWmfQwZ9Hw(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService$DreamServiceWrapper;->lambda$attach$0(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method constructor <init>(Landroid/service/dreams/DreamService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    .line 1494
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$attach$0(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "isPreviewMode"    # Z
    .param p4, "started"    # Landroid/os/IRemoteCallback;

    .line 1499
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->-$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method private synthetic lambda$wakeUp$1()V
    .registers 3

    .line 1509
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method


# virtual methods
.method public attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 13
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "isPreviewMode"    # Z
    .param p4, "started"    # Landroid/os/IRemoteCallback;

    .line 1498
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1500
    return-void
.end method

.method public detach()V
    .registers 4

    .line 1504
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1505
    return-void
.end method

.method public wakeUp()V
    .registers 3

    .line 1509
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1510
    return-void
.end method
