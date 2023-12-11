.class Lcom/samsung/android/os/SemSiopManager$1;
.super Ljava/lang/Object;
.source "SemSiopManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/os/SemSiopManager;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 427
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/os/SemSiopManager;->-$$Nest$sfputmService(Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V

    .line 428
    return-void
.end method
