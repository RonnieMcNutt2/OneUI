.class public final synthetic Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/SubscriptionManager;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->$r8$lambda$SzTBvf8YlyRou1dvnSuva0Q7GN0(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    return p1
.end method
