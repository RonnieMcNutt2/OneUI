.class public final synthetic Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsStateCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/ImsStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/ImsStateCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStateCallback;->binderDied()V

    return-void
.end method
