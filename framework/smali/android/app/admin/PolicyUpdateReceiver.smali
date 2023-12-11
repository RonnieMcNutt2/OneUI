.class public abstract Landroid/app/admin/PolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PolicyUpdateReceiver.java"


# static fields
.field public static final ACTION_DEVICE_POLICY_CHANGED:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_CHANGED"

.field public static final ACTION_DEVICE_POLICY_SET_RESULT:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "android.app.admin.extra.ACCOUNT_TYPE"

.field public static final EXTRA_INTENT_FILTER:Ljava/lang/String; = "android.app.admin.extra.INTENT_FILTER"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.app.admin.extra.PACKAGE_NAME"

.field public static final EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.app.admin.extra.PERMISSION_NAME"

.field public static final EXTRA_POLICY_BUNDLE_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_BUNDLE_KEY"

.field public static final EXTRA_POLICY_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_KEY"

.field public static final EXTRA_POLICY_TARGET_USER_ID:Ljava/lang/String; = "android.app.admin.extra.POLICY_TARGET_USER_ID"

.field public static final EXTRA_POLICY_UPDATE_RESULT_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, "PolicyUpdateReceiver"

    sput-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 199
    const-string v0, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 202
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, "reasonCode":I
    new-instance v1, Landroid/app/admin/PolicyUpdateResult;

    invoke-direct {v1, v0}, Landroid/app/admin/PolicyUpdateResult;-><init>(I)V

    return-object v1

    .line 200
    .end local v0    # "reasonCode":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolicyUpdateResult has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 190
    const-string v0, "android.app.admin.extra.POLICY_BUNDLE_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_f

    :cond_e
    move-object v1, v0

    :goto_f
    return-object v1
.end method

.method static getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 179
    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolicyKey has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 212
    const-string v0, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 215
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, "targetUserId":I
    new-instance v1, Landroid/app/admin/TargetUser;

    invoke-direct {v1, v0}, Landroid/app/admin/TargetUser;-><init>(I)V

    return-object v1

    .line 213
    .end local v0    # "targetUserId":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TargetUser has to be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyIdentifier"    # Ljava/lang/String;
    .param p3, "additionalPolicyParams"    # Landroid/os/Bundle;
    .param p4, "targetUser"    # Landroid/app/admin/TargetUser;
    .param p5, "policyUpdateResult"    # Landroid/app/admin/PolicyUpdateResult;

    .line 285
    return-void
.end method

.method public onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyIdentifier"    # Ljava/lang/String;
    .param p3, "additionalPolicyParams"    # Landroid/os/Bundle;
    .param p4, "targetUser"    # Landroid/app/admin/TargetUser;
    .param p5, "policyUpdateResult"    # Landroid/app/admin/PolicyUpdateResult;

    .line 251
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_84

    :cond_12
    goto :goto_27

    :sswitch_13
    const-string v1, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_28

    :sswitch_1d
    const-string v1, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_28

    :goto_27
    const/4 v0, -0x1

    :goto_28
    packed-switch v0, :pswitch_data_8e

    .line 171
    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 166
    :pswitch_48
    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Received ACTION_DEVICE_POLICY_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    .line 168
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v6

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v7

    .line 167
    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    .line 169
    goto :goto_82

    .line 161
    :pswitch_65
    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Received ACTION_DEVICE_POLICY_SET_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    .line 163
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v6

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v7

    .line 162
    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    .line 164
    nop

    .line 173
    :goto_82
    return-void

    nop

    :sswitch_data_84
    .sparse-switch
        -0x68add275 -> :sswitch_1d
        -0x593bda9d -> :sswitch_13
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_65
        :pswitch_48
    .end packed-switch
.end method
