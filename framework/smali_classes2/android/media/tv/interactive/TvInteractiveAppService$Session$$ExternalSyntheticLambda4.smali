.class public final synthetic Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/media/tv/TvRecordingInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;->f$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;->f$2:Landroid/media/tv/TvRecordingInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;->f$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$$ExternalSyntheticLambda4;->f$2:Landroid/media/tv/TvRecordingInfo;

    invoke-static {v0, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->$r8$lambda$31ddCNENfTmJBEt1i1OveWKLInI(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    return-void
.end method
