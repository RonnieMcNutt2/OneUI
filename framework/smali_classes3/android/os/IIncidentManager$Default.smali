.class public Landroid/os/IIncidentManager$Default;
.super Ljava/lang/Object;
.source "IIncidentManager.java"

# interfaces
.implements Landroid/os/IIncidentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentManager;
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

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAllIncidentReports(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerSection(ILjava/lang/String;Landroid/os/IIncidentDumpCallback;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/IIncidentDumpCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public reportIncident(Landroid/os/IncidentReportArgs;)V
    .registers 2
    .param p1, "args"    # Landroid/os/IncidentReportArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public reportIncidentToDumpstate(Ljava/io/FileDescriptor;Landroid/os/IIncidentReportStatusListener;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/FileDescriptor;
    .param p2, "listener"    # Landroid/os/IIncidentReportStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public reportIncidentToStream(Landroid/os/IncidentReportArgs;Landroid/os/IIncidentReportStatusListener;Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "args"    # Landroid/os/IncidentReportArgs;
    .param p2, "listener"    # Landroid/os/IIncidentReportStatusListener;
    .param p3, "stream"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public systemRunning()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public unregisterSection(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method
