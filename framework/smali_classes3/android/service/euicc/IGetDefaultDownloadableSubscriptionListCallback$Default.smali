.class public Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Default;
.super Ljava/lang/Object;
.source "IGetDefaultDownloadableSubscriptionListCallback.java"

# interfaces
.implements Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
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

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
