.class final Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;
.super Lcom/samsung/android/knox/IContainerService$Stub;
.source "ContainerCoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ContainerCoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/ContainerCoreService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ContainerCoreService;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-direct {p0}, Lcom/samsung/android/knox/IContainerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/ContainerCoreService;Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;-><init>(Lcom/samsung/android/knox/ContainerCoreService;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 32
    const-string/jumbo v0, "knox.container.proxy.COMMAND_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 33
    iget-object v0, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onCommandReceived(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 34
    :cond_10
    const-string/jumbo v0, "knox.container.proxy.POLICY_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 35
    iget-object v0, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onPolicyUpdated(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 36
    :cond_20
    const-string/jumbo v0, "knox.container.proxy.EVENT_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 37
    iget-object v0, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 38
    :cond_30
    const-string/jumbo v0, "knox.container.proxy.TEST_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 39
    iget-object v0, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onTestMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 41
    :cond_40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    return-object v0
.end method
