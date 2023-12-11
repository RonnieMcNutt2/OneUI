.class public Lcom/samsung/android/cover/SemCoverService;
.super Landroid/app/Service;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;,
        Lcom/samsung/android/cover/SemCoverService$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemCoverService"


# instance fields
.field private mAttach:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAttach(Lcom/samsung/android/cover/SemCoverService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAttach(Lcom/samsung/android/cover/SemCoverService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "base"    # Landroid/content/Context;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/samsung/android/cover/SemCoverService$MyHandler;

    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cover/SemCoverService$MyHandler;-><init>(Lcom/samsung/android/cover/SemCoverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public getCoverHost()Ljava/lang/Object;
    .registers 2

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    if-nez v0, :cond_c

    .line 59
    new-instance v0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;-><init>(Lcom/samsung/android/cover/SemCoverService;Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper-IA;)V

    iput-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService;->mWrapper:Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;

    return-object v0
.end method

.method public onCoverAppCovered(Z)I
    .registers 3
    .param p1, "covered"    # Z

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .registers 2
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 86
    return-void
.end method

.method public onCoverDetached()V
    .registers 1

    .line 93
    return-void
.end method

.method public onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .registers 2
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 100
    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 79
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/cover/SemCoverService;->onCoverDetached()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/cover/SemCoverService;->mAttach:Z

    .line 71
    :cond_a
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
