.class public Lcom/android/internal/statusbar/ISessionListener$Default;
.super Ljava/lang/Object;
.source "ISessionListener.java"

# interfaces
.implements Lcom/android/internal/statusbar/ISessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/ISessionListener;
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

.method public onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .registers 3
    .param p1, "sessionType"    # I
    .param p2, "instance"    # Lcom/android/internal/logging/InstanceId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .registers 3
    .param p1, "sessionType"    # I
    .param p2, "instance"    # Lcom/android/internal/logging/InstanceId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
