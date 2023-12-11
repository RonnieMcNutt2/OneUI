.class public Lcom/samsung/android/wifi/ai/ISemWifiAiService$Default;
.super Ljava/lang/Object;
.source "ISemWifiAiService.java"

# interfaces
.implements Lcom/samsung/android/wifi/ai/ISemWifiAiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ai/ISemWifiAiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public serviceTypeQuery([[F[Ljava/lang/String;[II)V
    .registers 5
    .param p1, "trfDataArr"    # [[F
    .param p2, "convArr"    # [Ljava/lang/String;
    .param p3, "timeStepArr"    # [I
    .param p4, "convCnt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public toggleDebugMode(Z)V
    .registers 2
    .param p1, "debug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
