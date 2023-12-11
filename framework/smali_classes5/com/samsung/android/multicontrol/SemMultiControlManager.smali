.class public final Lcom/samsung/android/multicontrol/SemMultiControlManager;
.super Ljava/lang/Object;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;,
        Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;,
        Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;,
        Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TAG_PREFIX:Ljava/lang/String; = "MultiControl@"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mService:Lcom/samsung/android/multicontrol/IMultiControlManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiControl@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/multicontrol/SemMultiControlManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/multicontrol/IMultiControlManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/multicontrol/IMultiControlManager;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    .line 156
    return-void
.end method


# virtual methods
.method public enableTriggerDetection(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->enableTriggerDetection(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 78
    goto :goto_a

    .line 76
    :catch_6
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public forceHideCursor(Z)V
    .registers 3
    .param p1, "hide"    # Z

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->forceHideCursor(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 86
    goto :goto_a

    .line 84
    :catch_6
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public getProtocolVersion()I
    .registers 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->getProtocolVersion()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 41
    :catch_7
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 45
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public isAllowed()Z
    .registers 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->isAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 59
    :catch_7
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public resetInputFilter()V
    .registers 2

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->resetInputFilter()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 134
    goto :goto_a

    .line 132
    :catch_6
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setCursorPosition(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    const/4 v1, -0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setCursorPosition(III)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 102
    goto :goto_b

    .line 100
    :catch_7
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b
    return-void
.end method

.method public setCursorPosition(III)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "displayId"    # I

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setCursorPosition(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 94
    goto :goto_a

    .line 92
    :catch_6
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;)V
    .registers 5
    .param p1, "filter"    # Landroid/view/IInputFilter;
    .param p2, "listener"    # Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    new-instance v1, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;

    invoke-direct {v1, p2}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;-><init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 126
    goto :goto_f

    .line 124
    :catch_b
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public setInteractive(Z)V
    .registers 3
    .param p1, "interactive"    # Z

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setInteractive(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 110
    goto :goto_a

    .line 108
    :catch_6
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setMultiControlOutOfFocus(Z)V
    .registers 3
    .param p1, "outOfFocus"    # Z

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setMultiControlOutOfFocus(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 118
    goto :goto_a

    .line 116
    :catch_6
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setProtocolVersion(I)V
    .registers 3
    .param p1, "version"    # I

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setProtocolVersion(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 53
    goto :goto_a

    .line 51
    :catch_6
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public setTriggerThreshold(I)V
    .registers 3
    .param p1, "threshold"    # I

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->setTriggerThreshold(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 70
    goto :goto_a

    .line 68
    :catch_6
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public startDeathChecker()V
    .registers 4

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    new-instance v1, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;

    new-instance v2, Lcom/samsung/android/multicontrol/SemMultiControlManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/multicontrol/SemMultiControlManager$1;-><init>(Lcom/samsung/android/multicontrol/SemMultiControlManager;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathCheckerDelegate;-><init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$MultiControlDeathChecker;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/multicontrol/IMultiControlManager;->startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 142
    goto :goto_14

    .line 140
    :catch_10
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public stopDeathChecker()V
    .registers 2

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager;->mService:Lcom/samsung/android/multicontrol/IMultiControlManager;

    invoke-interface {v0}, Lcom/samsung/android/multicontrol/IMultiControlManager;->stopDeathChecker()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 150
    goto :goto_a

    .line 148
    :catch_6
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
