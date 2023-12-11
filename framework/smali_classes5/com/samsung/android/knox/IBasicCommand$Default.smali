.class public Lcom/samsung/android/knox/IBasicCommand$Default;
.super Ljava/lang/Object;
.source "IBasicCommand.java"

# interfaces
.implements Lcom/samsung/android/knox/IBasicCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/IBasicCommand;
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

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendCmd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "cmd"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCaller(Lcom/samsung/android/knox/IBasicCommand;)V
    .registers 2
    .param p1, "caller"    # Lcom/samsung/android/knox/IBasicCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
