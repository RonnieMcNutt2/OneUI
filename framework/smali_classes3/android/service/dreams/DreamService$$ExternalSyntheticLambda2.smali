.class public final synthetic Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/dreams/DreamService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/dreams/DreamService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;->f$0:Landroid/service/dreams/DreamService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;->f$0:Landroid/service/dreams/DreamService;

    check-cast p1, Landroid/service/dreams/IDreamOverlayClient;

    invoke-static {v0, p1}, Landroid/service/dreams/DreamService;->$r8$lambda$1EN5xeBa2OpLkqhQH5NDDQi_eeE(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method
