.class Lcom/samsung/android/jdsms/DsmsService$1;
.super Ljava/util/TimerTask;
.source "DsmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/jdsms/DsmsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/jdsms/DsmsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/jdsms/DsmsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/jdsms/DsmsService;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsService$1;->this$0:Lcom/samsung/android/jdsms/DsmsService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 55
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsInfoCache;->getInstance()Lcom/samsung/android/jdsms/DsmsInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/jdsms/DsmsInfoCache;->updateCommercializedDeviceCache()V

    .line 56
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->getInstance()Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->resume()V

    .line 57
    return-void
.end method
