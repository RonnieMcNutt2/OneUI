.class public Lcom/sec/android/iaft/IAFDService;
.super Landroid/app/Service;
.source "IAFDService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDService$IAFDBinder;
    }
.end annotation


# static fields
.field static final CMD_DATA_GET:I = 0x9

.field static final CMD_DB_HOTFIXDB_UPDATE:I = 0xa

.field static final CMD_TYPE_GETUPDATESTATUS:I = 0x5

.field static final CMD_TYPE_GETUPDATESTATUS_RESULT:I = 0x6

.field static final CMD_TYPE_PARSE:I = 0x3

.field static final CMD_TYPE_REPAIR:I = 0x2

.field static final CMD_TYPE_SHOW:I = 0x4

.field static final CMD_TYPE_START:I = 0x1

.field static final CMD_TYPE_START_SmartManagerApp:I = 0x7

.field static final CMD_TYPE_START_VocApp:I = 0x8

.field private static final TAG:Ljava/lang/String; = "IAFDService"


# instance fields
.field private mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

.field private mContext:Landroid/content/Context;

.field private mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public IAFDServiceInit(Landroid/content/Context;)V
    .registers 2
    .param p1, "ct"    # Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDService;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    invoke-virtual {p0, p0}, Lcom/sec/android/iaft/IAFDService;->IAFDServiceInit(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/iaft/IAFDService$IAFDBinder;-><init>(Lcom/sec/android/iaft/IAFDService;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mBinder:Lcom/sec/android/iaft/IAFDService$IAFDBinder;

    .line 52
    new-instance v0, Lcom/sec/android/iaft/IAFDServiceImpl;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/iaft/IAFDServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/android/iaft/IAFDDiagnosis;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDService;->mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;

    .line 53
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "isAllow":Z
    const/4 v1, 0x1

    if-nez p1, :cond_5

    .line 61
    return v1

    .line 62
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 63
    .local v2, "bundle":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 64
    .local v3, "msg":Landroid/os/Message;
    if-eqz v2, :cond_39

    .line 65
    const-string v4, "pkgUserId"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 66
    .local v4, "appuid":I
    const-string v5, "checkSum"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "checksum":Ljava/lang/String;
    const-string v6, "commandType"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 74
    .local v6, "commandtype":I
    const/4 v0, 0x1

    .line 77
    if-nez v0, :cond_2a

    return v1

    .line 79
    :cond_2a
    sparse-switch v6, :sswitch_data_3a

    goto :goto_39

    .line 84
    :sswitch_2e
    iput v6, v3, Landroid/os/Message;->what:I

    .line 85
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    iget-object v7, p0, Lcom/sec/android/iaft/IAFDService;->mIAFDServiceImpl:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-virtual {v7, v3}, Lcom/sec/android/iaft/IAFDServiceImpl;->IAFDServiceHandlerMessage(Landroid/os/Message;)V

    .line 87
    nop

    .line 92
    .end local v4    # "appuid":I
    .end local v5    # "checksum":Ljava/lang/String;
    .end local v6    # "commandtype":I
    :cond_39
    :goto_39
    return v1

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2e
        0x9 -> :sswitch_2e
        0xa -> :sswitch_2e
    .end sparse-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 100
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
