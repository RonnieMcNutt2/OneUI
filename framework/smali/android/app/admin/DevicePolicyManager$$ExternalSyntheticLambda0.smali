.class public final synthetic Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/app/admin/PreferentialNetworkServiceConfig;

    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->lambda$isPreferentialNetworkServiceEnabled$6(Landroid/app/admin/PreferentialNetworkServiceConfig;)Z

    move-result p1

    return p1
.end method
