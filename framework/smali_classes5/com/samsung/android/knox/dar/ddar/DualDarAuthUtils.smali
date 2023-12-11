.class public Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;
.super Ljava/lang/Object;
.source "DualDarAuthUtils.java"


# static fields
.field public static final DDAR_INNER_AUTH_USERID_KEY:Ljava/lang/String; = "ddar.inner.auth.userid"

.field public static final DDAR_INNER_MAIN_USERID_KEY:Ljava/lang/String; = "ddar.inner.main.userid"

.field private static final TAG:Ljava/lang/String; = "DualDarAuthUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

.field private final mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 35
    return-void
.end method

.method private getDarManagerService()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/dar/IDarManagerService;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_11

    .line 39
    nop

    .line 40
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 42
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getInnerAuthUserForDo$4(Lcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .registers 4
    .param p0, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 109
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getInnerAuthUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    .line 110
    :catch_a
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getInnerAuthUserId$1(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .registers 5
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 65
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getInnerAuthUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 66
    :catch_9
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Landroid/os/RemoteException;
    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getMainUserId$3(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .registers 5
    .param p0, "innerAuthUserId"    # I
    .param p1, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 97
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getMainUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 98
    :catch_9
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getPasswordMinimumLengthForInner$5(Lcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .registers 4
    .param p0, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 127
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getPasswordMinimumLengthForInner()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 128
    :catch_9
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setInnerAuthUserId$0(IILcom/samsung/android/knox/dar/IDarManagerService;)V
    .registers 6
    .param p0, "innerAuthUserId"    # I
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 54
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->setInnerAuthUserId(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 57
    goto :goto_c

    .line 55
    :catch_4
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic lambda$setMainUserId$2(IILcom/samsung/android/knox/dar/IDarManagerService;)V
    .registers 6
    .param p0, "mainUserId"    # I
    .param p1, "innerAuthUserId"    # I
    .param p2, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 84
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->setMainUserId(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 87
    goto :goto_c

    .line 85
    :catch_4
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method


# virtual methods
.method public getInnerAuthUserForDo()I
    .registers 4

    .line 106
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    const/16 v1, -0x2710

    if-eqz v0, :cond_24

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    return v0

    .line 116
    :cond_24
    return v1
.end method

.method public getInnerAuthUserId(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 62
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    const/16 v1, -0x2710

    if-eqz v0, :cond_24

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    return v0

    .line 72
    :cond_24
    return v1
.end method

.method public getMainUserId(I)I
    .registers 4
    .param p1, "innerAuthUserId"    # I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 93
    return p1

    .line 95
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 102
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    return v0
.end method

.method public getPasswordMinimumLengthForInner()I
    .registers 4

    .line 124
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    return v0

    .line 134
    :cond_23
    return v1
.end method

.method public isInnerAuthUserForDo(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserForDo()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setInnerAuthUserId(II)V
    .registers 5
    .param p1, "innerAuthUserId"    # I
    .param p2, "userId"    # I

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 59
    return-void
.end method

.method public setMainUserId(II)V
    .registers 5
    .param p1, "mainUserId"    # I
    .param p2, "innerAuthUserId"    # I

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 89
    return-void
.end method
