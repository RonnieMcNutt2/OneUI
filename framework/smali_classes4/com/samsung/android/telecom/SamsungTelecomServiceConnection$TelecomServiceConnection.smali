.class Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "SamsungTelecomServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;


# direct methods
.method private constructor <init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;-><init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 23
    const-string v0, "SamsungTelecomServiceConnection"

    :try_start_2
    new-instance v1, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection$1;-><init>(Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;)V

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToSamsungTelecom - ServiceManager.addService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string/jumbo v1, "samsung_telecom"

    invoke-static {v1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_27} :catch_28

    .line 33
    goto :goto_2e

    .line 31
    :catch_28
    move-exception v1

    .line 32
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed linking to death."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection$TelecomServiceConnection;->this$0:Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;

    invoke-virtual {v0}, Lcom/samsung/android/telecom/SamsungTelecomServiceConnection;->connectToSamsungTelecom()V

    .line 39
    return-void
.end method
