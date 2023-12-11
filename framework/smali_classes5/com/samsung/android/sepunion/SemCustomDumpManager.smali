.class public Lcom/samsung/android/sepunion/SemCustomDumpManager;
.super Ljava/lang/Object;
.source "SemCustomDumpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/sepunion/IUnionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private getService()Lcom/samsung/android/sepunion/IUnionManager;
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_1b

    .line 23
    nop

    .line 24
    const-string/jumbo v0, "sepunion"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/samsung/android/sepunion/IUnionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    .line 25
    if-nez v0, :cond_1b

    .line 26
    sget-object v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    const-string v1, "IUnionManager is NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    return-object v0
.end method


# virtual methods
.method public setDumpState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    if-nez v0, :cond_a

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemCustomDumpManager;->getService()Lcom/samsung/android/sepunion/IUnionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    .line 43
    :cond_a
    :try_start_a
    sget-object v0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDumpState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;->mService:Lcom/samsung/android/sepunion/IUnionManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sepunion/IUnionManager;->setDumpEnabled(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29

    .line 47
    goto :goto_2d

    .line 45
    :catch_29
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method
