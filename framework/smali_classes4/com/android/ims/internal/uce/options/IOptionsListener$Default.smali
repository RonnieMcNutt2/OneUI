.class public Lcom/android/ims/internal/uce/options/IOptionsListener$Default;
.super Ljava/lang/Object;
.source "IOptionsListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsListener;
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

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V
    .registers 2
    .param p1, "cmdStatus"    # Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public getVersionCb(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "capInfo"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .param p3, "tID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .registers 2
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .registers 2
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "sipResponse"    # Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    .param p3, "capInfo"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method
