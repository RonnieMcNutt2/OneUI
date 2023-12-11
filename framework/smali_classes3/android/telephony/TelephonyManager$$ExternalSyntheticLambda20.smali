.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;->f$0:Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->lambda$bootstrapAuthenticationRequest$21(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    return-void
.end method
