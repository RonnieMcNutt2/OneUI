.class Lcom/samsung/android/allshare/ServiceConnector$1;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;)Lcom/samsung/android/allshare/ERROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private mServiceProvider:Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

.field final synthetic val$connector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->val$l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->val$connector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 246
    new-instance p1, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 251
    const-string v0, ""

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_59

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    if-nez v1, :cond_d

    goto :goto_59

    .line 254
    :cond_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 256
    .local v1, "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    sget-object v2, Lcom/samsung/android/allshare/ServiceConnector$3;->$SwitchMap$com$samsung$android$allshare$IAllShareConnector$AllShareServiceState:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "ServiceConnector"

    packed-switch v2, :pswitch_data_5c

    goto :goto_57

    .line 269
    :pswitch_1f
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    sget-object v4, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    iput-object v4, v2, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 271
    :try_start_25
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    invoke-interface {v2, v4}, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;->onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_32
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_36

    .line 274
    :catch_2d
    move-exception v2

    .line 275
    .local v2, "err":Ljava/lang/Error;
    invoke-static {v3, v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_57

    .line 272
    .end local v2    # "err":Ljava/lang/Error;
    :catch_32
    move-exception v2

    .line 273
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v3, v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_36
    goto :goto_57

    .line 258
    :pswitch_37
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    sget-object v2, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    iput-object v2, v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;->mServiceState:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 260
    :try_start_3d
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$1;->mServiceProvider:Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    sget-object v4, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-interface {v0, v2, v4}, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;->onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_4f
    .catch Ljava/lang/Error; {:try_start_3d .. :try_end_46} :catch_47

    goto :goto_56

    .line 263
    :catch_47
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Error;
    const-string/jumbo v2, "handleMessage Error"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .line 267
    .end local v0    # "e":Ljava/lang/Error;
    goto :goto_57

    .line 261
    :catch_4f
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "handleMessage Exception"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_56
    nop

    .line 281
    :goto_57
    const/4 v0, 0x1

    return v0

    .line 252
    .end local v1    # "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    :cond_59
    :goto_59
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
