.class public Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;
.super Ljava/lang/Object;
.source "CameraServiceWorkerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraServiceWorkerManager"


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_d

    .line 34
    const-string v0, "CameraServiceWorkerManager"

    const-string v1, "binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 37
    :cond_d
    iput-object p1, p0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->binder:Landroid/os/IBinder;

    .line 38
    return-void
.end method


# virtual methods
.method public getMyBinder()Landroid/os/IBinder;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->binder:Landroid/os/IBinder;

    return-object v0
.end method
