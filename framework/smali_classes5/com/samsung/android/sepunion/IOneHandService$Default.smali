.class public Lcom/samsung/android/sepunion/IOneHandService$Default;
.super Ljava/lang/Object;
.source "IOneHandService.java"

# interfaces
.implements Lcom/samsung/android/sepunion/IOneHandService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/IOneHandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public clickTile(Ljava/lang/String;)V
    .registers 2
    .param p1, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public registerListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public unRegisterListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public writeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
