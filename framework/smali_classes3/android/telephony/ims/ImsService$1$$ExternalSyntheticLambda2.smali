.class public final synthetic Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsService$1;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsService$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/ImsService$1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/ImsService$1;

    invoke-static {v0}, Landroid/telephony/ims/ImsService$1;->$r8$lambda$v-P14S7qjKk8YHTyBosB4-8UI6k(Landroid/telephony/ims/ImsService$1;)Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0

    return-object v0
.end method
