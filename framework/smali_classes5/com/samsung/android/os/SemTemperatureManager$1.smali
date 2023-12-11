.class Lcom/samsung/android/os/SemTemperatureManager$1;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemTemperatureManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->-$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V

    .line 169
    return-void
.end method
