.class public final synthetic Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/projection/MediaProjection$CallbackRecord;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/projection/MediaProjection$CallbackRecord;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    iput p2, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/MediaProjection$CallbackRecord;

    iget v1, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/media/projection/MediaProjection$CallbackRecord$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/media/projection/MediaProjection$CallbackRecord;->$r8$lambda$qzJsSvEnVcFmTcsDC71KsRKOilM(Landroid/media/projection/MediaProjection$CallbackRecord;II)V

    return-void
.end method
