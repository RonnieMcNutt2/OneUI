.class public final synthetic Landroid/location/CountryDetector$ListenerTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/location/CountryDetector$ListenerTransport;

.field public final synthetic f$1:Landroid/location/Country;


# direct methods
.method public synthetic constructor <init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/CountryDetector$ListenerTransport;

    iput-object p2, p0, Landroid/location/CountryDetector$ListenerTransport$$ExternalSyntheticLambda0;->f$1:Landroid/location/Country;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/CountryDetector$ListenerTransport;

    iget-object v1, p0, Landroid/location/CountryDetector$ListenerTransport$$ExternalSyntheticLambda0;->f$1:Landroid/location/Country;

    invoke-static {v0, v1}, Landroid/location/CountryDetector$ListenerTransport;->$r8$lambda$zzkfiQZ2GwW2G78093zvvsh9qc8(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V

    return-void
.end method
