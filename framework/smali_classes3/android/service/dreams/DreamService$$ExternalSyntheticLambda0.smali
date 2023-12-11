.class public final synthetic Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/dreams/DreamService;

.field public final synthetic f$1:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService;

    iput-object p2, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;->f$0:Landroid/service/dreams/DreamService;

    iget-object v1, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IRemoteCallback;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->$r8$lambda$LWVZZw52d1lO6vIBrQTl7T0lPXs(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V

    return-void
.end method
