.class public Landroid/net/NetworkPolicyManager$Listener;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1061
    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockedReasonChanged(III)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "oldBlockedReasons"    # I
    .param p3, "newBlockedReasons"    # I

    .line 1070
    return-void
.end method

.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 2
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .line 1063
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 2
    .param p1, "restrictBackground"    # Z

    .line 1064
    return-void
.end method

.method public onSubscriptionOverride(III[I)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "networkTypes"    # [I

    .line 1067
    return-void
.end method

.method public onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .registers 3
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;

    .line 1068
    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "uidPolicies"    # I

    .line 1065
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .line 1062
    return-void
.end method
