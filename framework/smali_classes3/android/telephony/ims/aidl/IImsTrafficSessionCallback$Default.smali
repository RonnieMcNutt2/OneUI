.class public Landroid/telephony/ims/aidl/IImsTrafficSessionCallback$Default;
.super Ljava/lang/Object;
.source "IImsTrafficSessionCallback.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;
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

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/telephony/ims/feature/ConnectionFailureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onReady()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
