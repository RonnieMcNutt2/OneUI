.class Lcom/android/internal/app/IntentForwarderActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/IntentForwarderActivity;->showKeyguard(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IntentForwarderActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IntentForwarderActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/IntentForwarderActivity;

    .line 865
    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$1;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 868
    if-eqz p2, :cond_6d

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_6d

    .line 870
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive, action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 873
    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "reason":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reason :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 876
    iget-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity$1;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto :goto_6c

    .line 877
    :cond_5e
    const-string/jumbo v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 878
    iget-object v2, p0, Lcom/android/internal/app/IntentForwarderActivity$1;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 881
    .end local v1    # "reason":Ljava/lang/String;
    :cond_6c
    :goto_6c
    return-void

    .line 868
    .end local v0    # "action":Ljava/lang/String;
    :cond_6d
    :goto_6d
    return-void
.end method
