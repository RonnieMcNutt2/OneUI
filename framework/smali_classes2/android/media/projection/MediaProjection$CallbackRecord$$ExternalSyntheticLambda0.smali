.class public final synthetic Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/projection/MediaProjection$CallbackRecord;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/media/projection/MediaProjection$CallbackRecord;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    iput-boolean p2, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda0;->f$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    iget-boolean v1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/media/projection/MediaProjection$CallbackRecord;->$r8$lambda$NU4MYSLB7ocN5ujDKLjWBE_fXJI(Landroid/media/projection/MediaProjection$CallbackRecord;Z)V

    return-void
.end method
