.class public Landroid/credentials/IGetCredentialCallback$Default;
.super Ljava/lang/Object;
.source "IGetCredentialCallback.java"

# interfaces
.implements Landroid/credentials/IGetCredentialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/IGetCredentialCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public onResponse(Landroid/credentials/GetCredentialResponse;)V
    .registers 2
    .param p1, "response"    # Landroid/credentials/GetCredentialResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
