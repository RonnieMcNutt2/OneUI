.class public Landroid/service/dreams/IDreamOverlayClientCallback$Default;
.super Ljava/lang/Object;
.source "IDreamOverlayClientCallback.java"

# interfaces
.implements Landroid/service/dreams/IDreamOverlayClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamOverlayClientCallback;
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

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDreamOverlayClient(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2
    .param p1, "client"    # Landroid/service/dreams/IDreamOverlayClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
