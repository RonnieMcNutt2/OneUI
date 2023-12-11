.class public abstract Landroid/service/restrictions/RestrictionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestrictionsReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.content.action.REQUEST_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 76
    const-string v1, "android.content.extra.PACKAGE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.content.extra.REQUEST_TYPE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "requestType":Ljava/lang/String;
    const-string v2, "android.content.extra.REQUEST_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "requestId":Ljava/lang/String;
    const-class v2, Landroid/os/PersistableBundle;

    .line 80
    const-string v3, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/PersistableBundle;

    .line 81
    .local v10, "request":Landroid/os/PersistableBundle;
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Landroid/service/restrictions/RestrictionsReceiver;->onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 83
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v8    # "requestType":Ljava/lang/String;
    .end local v9    # "requestId":Ljava/lang/String;
    .end local v10    # "request":Landroid/os/PersistableBundle;
    :cond_32
    return-void
.end method

.method public abstract onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
.end method
