.class public Landroid/security/rkp/IStoreUpgradedKeyCallback$Default;
.super Ljava/lang/Object;
.source "IStoreUpgradedKeyCallback.java"

# interfaces
.implements Landroid/security/rkp/IStoreUpgradedKeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/rkp/IStoreUpgradedKeyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public onSuccess()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
