.class public final synthetic Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Landroid/telephony/BinderCacheManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/BinderCacheManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/BinderCacheManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/telephony/BinderCacheManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/BinderCacheManager;

    check-cast p1, Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    invoke-static {v0, p1}, Landroid/telephony/BinderCacheManager;->$r8$lambda$3W6D6iokLUiCEf_YyWebrre4KU8(Landroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager$BinderDeathTracker;)Landroid/telephony/BinderCacheManager$BinderDeathTracker;

    move-result-object p1

    return-object p1
.end method
