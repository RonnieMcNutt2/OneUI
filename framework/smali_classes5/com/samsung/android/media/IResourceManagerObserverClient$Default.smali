.class public Lcom/samsung/android/media/IResourceManagerObserverClient$Default;
.super Ljava/lang/Object;
.source "IResourceManagerObserverClient.java"

# interfaces
.implements Lcom/samsung/android/media/IResourceManagerObserverClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/IResourceManagerObserverClient;
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

.method public notify(IIILcom/samsung/android/media/MediaResourceNotifyInfoParcel;)V
    .registers 5
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "obj"    # Lcom/samsung/android/media/MediaResourceNotifyInfoParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
