.class Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;
.super Ljava/lang/Object;
.source "SemDeviceHealthManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdhms/SemDeviceHealthManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdhms/SemDeviceHealthManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    .line 497
    iput-object p1, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;->this$0:Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemDeviceHealthManager$1;->this$0:Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->-$$Nest$fputmService(Lcom/samsung/android/sdhms/SemDeviceHealthManager;Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V

    .line 501
    return-void
.end method
