.class public final synthetic Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityThread$2;

.field public final synthetic f$1:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityThread$2;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$2;

    iput-object p2, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityThread$2;

    iget-object v1, p0, Landroid/app/ActivityThread$2$$ExternalSyntheticLambda0;->f$1:Landroid/window/SplashScreenView;

    invoke-static {v0, v1}, Landroid/app/ActivityThread$2;->$r8$lambda$K4aR90ejn-nEwTVp2v8I6ft38uE(Landroid/app/ActivityThread$2;Landroid/window/SplashScreenView;)V

    return-void
.end method
