.class public final synthetic Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/tv/tuner/Tuner;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/tv/tuner/Tuner;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;->f$0:Landroid/media/tv/tuner/Tuner;

    iput p2, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;->f$0:Landroid/media/tv/tuner/Tuner;

    iget v1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;->f$1:I

    invoke-static {v0, v1}, Landroid/media/tv/tuner/Tuner;->$r8$lambda$1PojH3i2zeOyB-HkZg9gkQD1isM(Landroid/media/tv/tuner/Tuner;I)V

    return-void
.end method
