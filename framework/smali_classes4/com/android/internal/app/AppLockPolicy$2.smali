.class Lcom/android/internal/app/AppLockPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLockPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AppLockPolicy;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AppLockPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/AppLockPolicy;

    .line 483
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy$2;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 487
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$2;->this$0:Lcom/android/internal/app/AppLockPolicy;

    iget-object v0, v0, Lcom/android/internal/app/AppLockPolicy;->mAppLockSharedPref:Landroid/app/AppLockCoreState;

    invoke-virtual {v0}, Landroid/app/AppLockCoreState;->initializeSharedPreference()V

    .line 488
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$2;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v0}, Lcom/android/internal/app/AppLockPolicy;->reloadFromSettings()V

    .line 489
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$2;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v0}, Lcom/android/internal/app/AppLockPolicy;->updateSettings()V

    .line 490
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$2;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-static {v0}, Lcom/android/internal/app/AppLockPolicy;->-$$Nest$mupdateLockedApps(Lcom/android/internal/app/AppLockPolicy;)V

    .line 491
    return-void
.end method
