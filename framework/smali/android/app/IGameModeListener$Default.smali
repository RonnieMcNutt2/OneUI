.class public Landroid/app/IGameModeListener$Default;
.super Ljava/lang/Object;
.source "IGameModeListener.java"

# interfaces
.implements Landroid/app/IGameModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGameModeListener;
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

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGameModeChanged(Ljava/lang/String;III)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameModeFrom"    # I
    .param p3, "gameModeTo"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
