.class public Landroid/os/IZtd$Default;
.super Ljava/lang/Object;
.source "IZtd.java"

# interfaces
.implements Landroid/os/IZtd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IZtd;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public startMonitoringDomains(I[ILjava/util/List;Landroid/os/IZtdListener;)I
    .registers 6
    .param p1, "requestorUid"    # I
    .param p2, "allowedUids"    # [I
    .param p4, "listener"    # Landroid/os/IZtdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/IZtdListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    .local p3, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public startMonitoringFiles(I[ILjava/util/List;Ljava/util/List;Landroid/os/IZtdListener;)I
    .registers 7
    .param p1, "requestorUid"    # I
    .param p2, "allowedUids"    # [I
    .param p5, "listener"    # Landroid/os/IZtdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/IZtdListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "inodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public startTracing(IIJLandroid/os/IZtdListener;)V
    .registers 6
    .param p1, "traceType"    # I
    .param p2, "uid"    # I
    .param p3, "period"    # J
    .param p5, "listener"    # Landroid/os/IZtdListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public stopMonitoringDomains(I)I
    .registers 3
    .param p1, "requestorUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public stopMonitoringFiles(I)I
    .registers 3
    .param p1, "requestorUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public stopTracing(II)V
    .registers 3
    .param p1, "traceType"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
