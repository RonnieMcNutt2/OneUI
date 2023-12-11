.class public Lcom/sec/android/iaft/IAFTManagerService;
.super Landroid/app/Service;
.source "IAFTManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFTManagerService$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IAFTManager"


# instance fields
.field private mCallBack:Lcom/sec/android/iaft/IAFTManagerService$CallBack;

.field private mContext:Landroid/content/Context;

.field private mIAFTManagerServiceImpl:Lcom/sec/android/iaft/IAFTManagerServiceImpl;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-object p0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFTManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/iaft/IAFTManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mIAFTManagerServiceImpl:Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    .line 73
    return-void
.end method


# virtual methods
.method public getCallBack()Lcom/sec/android/iaft/IAFTManagerService$CallBack;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mCallBack:Lcom/sec/android/iaft/IAFTManagerService$CallBack;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mIAFTManagerServiceImpl:Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 82
    const/4 v0, 0x3

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 92
    const-string v0, "IAFTManager"

    const-string v1, "called onUnbind."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public setCallBack(Lcom/sec/android/iaft/IAFTManagerService$CallBack;)V
    .registers 2
    .param p1, "callBack"    # Lcom/sec/android/iaft/IAFTManagerService$CallBack;

    .line 62
    iput-object p1, p0, Lcom/sec/android/iaft/IAFTManagerService;->mCallBack:Lcom/sec/android/iaft/IAFTManagerService$CallBack;

    .line 63
    return-void
.end method
